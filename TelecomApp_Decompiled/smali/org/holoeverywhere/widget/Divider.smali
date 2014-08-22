.class public Lorg/holoeverywhere/widget/Divider;
.super Lorg/holoeverywhere/internal/_View;
.source "Divider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lorg/holoeverywhere/internal/_View;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/holoeverywhere/widget/Divider;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lorg/holoeverywhere/internal/_View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/Divider;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/internal/_View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/Divider;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 29
    sget-object v4, Lorg/holoeverywhere/R$styleable;->Divider:[I

    invoke-virtual {p1, p2, v4, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 33
    .local v2, "vertical":Z
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 35
    .local v1, "value":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    if-eqz v2, :cond_2

    sget v4, Lorg/holoeverywhere/R$attr;->dividerVertical:I

    :goto_0
    invoke-virtual {v5, v4, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 38
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    if-lez v3, :cond_1

    .line 39
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/Divider;->setBackgroundResource(I)V

    .line 41
    :cond_1
    return-void

    .line 35
    :cond_2
    sget v4, Lorg/holoeverywhere/R$attr;->dividerHorizontal:I

    goto :goto_0
.end method
