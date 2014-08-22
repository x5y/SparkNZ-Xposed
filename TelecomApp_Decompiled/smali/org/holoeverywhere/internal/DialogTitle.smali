.class public Lorg/holoeverywhere/internal/DialogTitle;
.super Lorg/holoeverywhere/widget/TextView;
.source "DialogTitle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lorg/holoeverywhere/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    .line 28
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/widget/TextView;->onMeasure(II)V

    .line 29
    invoke-virtual {p0}, Lorg/holoeverywhere/internal/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 30
    .local v2, "layout":Landroid/text/Layout;
    if-eqz v2, :cond_1

    .line 31
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    .line 32
    .local v3, "lineCount":I
    if-lez v3, :cond_1

    .line 33
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    .line 35
    .local v1, "ellipsisCount":I
    if-lez v1, :cond_1

    .line 36
    invoke-virtual {p0, v10}, Lorg/holoeverywhere/internal/DialogTitle;->setSingleLine(Z)V

    .line 37
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lorg/holoeverywhere/internal/DialogTitle;->setMaxLines(I)V

    .line 38
    invoke-virtual {p0}, Lorg/holoeverywhere/internal/DialogTitle;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Lorg/holoeverywhere/R$styleable;->TextAppearance:[I

    const v8, 0x1010041

    sget v9, Lorg/holoeverywhere/R$style;->Holo_TextAppearance_Medium:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 44
    .local v4, "textSize":I
    if-eqz v4, :cond_0

    .line 45
    int-to-float v5, v4

    invoke-virtual {p0, v10, v5}, Lorg/holoeverywhere/internal/DialogTitle;->setTextSize(IF)V

    .line 47
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/widget/TextView;->onMeasure(II)V

    .line 52
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "ellipsisCount":I
    .end local v3    # "lineCount":I
    .end local v4    # "textSize":I
    :cond_1
    return-void
.end method
