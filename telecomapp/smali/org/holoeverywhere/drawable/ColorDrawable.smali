.class public Lorg/holoeverywhere/drawable/ColorDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "ColorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/drawable/ColorDrawable$1;,
        Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;
    }
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/holoeverywhere/drawable/ColorDrawable;-><init>(Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;)V

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/holoeverywhere/drawable/ColorDrawable;-><init>(Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;)V

    .line 61
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/drawable/ColorDrawable;->setColor(I)V

    .line 62
    return-void
.end method

.method private constructor <init>(Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;)V
    .locals 1
    .param p1, "state"    # Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    invoke-direct {v0, p1}, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;-><init>(Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;)V

    iput-object v0, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;Lorg/holoeverywhere/drawable/ColorDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;
    .param p2, "x1"    # Lorg/holoeverywhere/drawable/ColorDrawable$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/holoeverywhere/drawable/ColorDrawable;-><init>(Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    iget v0, v0, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    iget v1, v1, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mUseColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 70
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    iget v0, v0, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/graphics/drawable/ColorDrawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    iget v1, v1, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    iget v0, v0, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mUseColor:I

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/ColorDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    .line 90
    iget-object v0, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    iget v0, v0, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    sparse-switch v0, :sswitch_data_0

    .line 101
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 97
    :sswitch_0
    const/4 v0, -0x1

    goto :goto_0

    .line 99
    :sswitch_1
    const/4 v0, -0x2

    goto :goto_0

    .line 95
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/ColorDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 108
    sget-object v2, Lorg/holoeverywhere/R$styleable;->ColorDrawable:[I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v2, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    iget v1, v2, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mBaseColor:I

    .line 110
    .local v1, "color":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 111
    iget-object v2, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    iget-object v3, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    iput v1, v3, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mUseColor:I

    iput v1, v2, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mBaseColor:I

    .line 112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    return-void
.end method

.method public setAlpha(I)V
    .locals 6
    .param p1, "alpha"    # I

    .prologue
    .line 117
    shr-int/lit8 v3, p1, 0x7

    add-int/2addr p1, v3

    .line 118
    iget-object v3, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    iget v3, v3, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mBaseColor:I

    ushr-int/lit8 v0, v3, 0x18

    .line 119
    .local v0, "baseAlpha":I
    mul-int v3, v0, p1

    shr-int/lit8 v2, v3, 0x8

    .line 120
    .local v2, "useAlpha":I
    iget-object v3, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    iget v1, v3, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mUseColor:I

    .line 121
    .local v1, "oldUseColor":I
    iget-object v3, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    iget-object v4, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    iget v4, v4, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mBaseColor:I

    shl-int/lit8 v4, v4, 0x8

    ushr-int/lit8 v4, v4, 0x8

    shl-int/lit8 v5, v2, 0x18

    or-int/2addr v4, v5

    iput v4, v3, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mUseColor:I

    .line 122
    iget-object v3, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    iget v3, v3, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mUseColor:I

    if-eq v1, v3, :cond_0

    .line 123
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/ColorDrawable;->invalidateSelf()V

    .line 125
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    iget v0, v0, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mBaseColor:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    iget v0, v0, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mUseColor:I

    if-eq v0, p1, :cond_1

    .line 130
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/ColorDrawable;->invalidateSelf()V

    .line 131
    iget-object v0, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    iget-object v1, p0, Lorg/holoeverywhere/drawable/ColorDrawable;->mState:Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;

    iput p1, v1, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mUseColor:I

    iput p1, v0, Lorg/holoeverywhere/drawable/ColorDrawable$ColorState;->mBaseColor:I

    .line 133
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 137
    return-void
.end method
