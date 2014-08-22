.class Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "LayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/drawable/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayerState"
.end annotation


# instance fields
.field private mCanConstantState:Z

.field mChangingConfigurations:I

.field private mCheckedConstantState:Z

.field mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

.field mChildrenChangingConfigurations:I

.field private mHaveOpacity:Z

.field private mHaveStateful:Z

.field mNum:I

.field private mOpacity:I

.field private mStateful:Z


# direct methods
.method constructor <init>(Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;Lorg/holoeverywhere/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "orig"    # Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;
    .param p2, "owner"    # Lorg/holoeverywhere/drawable/LayerDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v5, 0x0

    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 35
    iput-boolean v5, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    .line 36
    iput-boolean v5, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    .line 42
    if-eqz p1, :cond_2

    .line 43
    iget-object v3, p1, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 44
    .local v3, "origChildDrawable":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    iget v0, p1, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 45
    .local v0, "N":I
    iput v0, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 46
    new-array v5, v0, [Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    iput-object v5, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    .line 47
    iget v5, p1, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iput v5, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 48
    iget v5, p1, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iput v5, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 49
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 50
    iget-object v5, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    new-instance v4, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v4}, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;-><init>()V

    aput-object v4, v5, v1

    .line 51
    .local v4, "r":Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    aget-object v2, v3, v1

    .line 52
    .local v2, "or":Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    if-eqz p3, :cond_0

    .line 53
    iget-object v5, v2, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    :goto_1
    iget-object v5, v4, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 58
    iget v5, v2, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    iput v5, v4, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 59
    iget v5, v2, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    iput v5, v4, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 60
    iget v5, v2, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    iput v5, v4, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 61
    iget v5, v2, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    iput v5, v4, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 62
    iget v5, v2, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mId:I

    iput v5, v4, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_0
    iget-object v5, v2, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 64
    .end local v2    # "or":Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    .end local v4    # "r":Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    :cond_1
    iget-boolean v5, p1, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    iput-boolean v5, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    .line 65
    iget v5, p1, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mOpacity:I

    iput v5, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 66
    iget-boolean v5, p1, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    iput-boolean v5, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    .line 67
    iget-boolean v5, p1, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mStateful:Z

    iput-boolean v5, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mStateful:Z

    .line 68
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mCanConstantState:Z

    iput-boolean v5, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mCheckedConstantState:Z

    .line 73
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "origChildDrawable":[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;
    :goto_2
    return-void

    .line 70
    :cond_2
    iput v5, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 71
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    goto :goto_2
.end method


# virtual methods
.method public canConstantState()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 76
    iget-boolean v2, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mCheckedConstantState:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    if-eqz v2, :cond_1

    .line 77
    iput-boolean v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mCanConstantState:Z

    .line 78
    iget v0, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 79
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 80
    iget-object v2, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-nez v2, :cond_2

    .line 81
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mCanConstantState:Z

    .line 85
    :cond_0
    iput-boolean v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mCheckedConstantState:Z

    .line 87
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    iget-boolean v2, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mCanConstantState:Z

    return v2

    .line 79
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    return v0
.end method

.method public final getOpacity()I
    .locals 5

    .prologue
    .line 96
    iget-boolean v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    if-eqz v3, :cond_0

    .line 97
    iget v2, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 106
    :goto_0
    return v2

    .line 99
    :cond_0
    iget v0, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 100
    .local v0, "N":I
    if-lez v0, :cond_1

    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    .line 101
    .local v2, "op":I
    :goto_1
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 102
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v2

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 100
    .end local v1    # "i":I
    .end local v2    # "op":I
    :cond_1
    const/4 v2, -0x2

    goto :goto_1

    .line 104
    .restart local v1    # "i":I
    .restart local v2    # "op":I
    :cond_2
    iput v2, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 105
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    goto :goto_0
.end method

.method public final isStateful()Z
    .locals 4

    .prologue
    .line 110
    iget-boolean v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    if-eqz v3, :cond_0

    .line 111
    iget-boolean v2, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mStateful:Z

    .line 123
    :goto_0
    return v2

    .line 113
    :cond_0
    const/4 v2, 0x0

    .line 114
    .local v2, "stateful":Z
    iget v0, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mNum:I

    .line 115
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 116
    iget-object v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mChildren:[Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/holoeverywhere/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    const/4 v2, 0x1

    .line 121
    :cond_1
    iput-boolean v2, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mStateful:Z

    .line 122
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;->mHaveStateful:Z

    goto :goto_0

    .line 115
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lorg/holoeverywhere/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/holoeverywhere/drawable/LayerDrawable;-><init>(Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 133
    new-instance v0, Lorg/holoeverywhere/drawable/LayerDrawable;

    invoke-direct {v0, p0, p1}, Lorg/holoeverywhere/drawable/LayerDrawable;-><init>(Lorg/holoeverywhere/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method
