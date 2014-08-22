.class Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;
.super Landroid/view/ViewGroup;
.source "WrapperView.java"


# instance fields
.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field mHeader:Landroid/view/View;

.field mItem:Landroid/view/View;

.field mItemTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 131
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mHeader:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->getWidth()I

    move-result v0

    iget v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mDividerHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 137
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 139
    :cond_1
    return-void
.end method

.method hasHeader()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 108
    const/4 p2, 0x0

    .line 109
    const/4 p3, 0x0

    .line 110
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->getWidth()I

    move-result p4

    .line 111
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->getHeight()I

    move-result p5

    .line 113
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 115
    .local v0, "headerHeight":I
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mHeader:Landroid/view/View;

    invoke-virtual {v1, p2, p3, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 116
    iput v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mItemTop:I

    .line 117
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {v1, p2, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 126
    .end local v0    # "headerHeight":I
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mDividerHeight:I

    invoke-virtual {v1, p2, p3, p4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    iget v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mDividerHeight:I

    iput v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mItemTop:I

    .line 121
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mItem:Landroid/view/View;

    iget v2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mDividerHeight:I

    invoke-virtual {v1, p2, v2, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 123
    :cond_1
    iput p3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mItemTop:I

    .line 124
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000

    const/4 v6, 0x0

    .line 75
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 76
    .local v2, "measuredWidth":I
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 77
    .local v0, "childWidthMeasureSpec":I
    const/4 v1, 0x0

    .line 81
    .local v1, "measuredHeight":I
    iget-object v4, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mHeader:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 82
    iget-object v4, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 83
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_1

    .line 84
    iget-object v4, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mHeader:Landroid/view/View;

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    .line 88
    :goto_0
    iget-object v4, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    .line 94
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_1
    iget-object v4, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 95
    .restart local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_3

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_3

    .line 96
    iget-object v4, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mItem:Landroid/view/View;

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    .line 100
    :goto_2
    iget-object v4, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    .line 102
    invoke-virtual {p0, v2, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->setMeasuredDimension(II)V

    .line 103
    return-void

    .line 86
    :cond_1
    iget-object v4, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mHeader:Landroid/view/View;

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 89
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v4, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 90
    iget v4, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mDividerHeight:I

    add-int/2addr v1, v4

    goto :goto_1

    .line 98
    .restart local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v4, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    goto :goto_2
.end method

.method update(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "item"    # Landroid/view/View;
    .param p2, "header"    # Landroid/view/View;
    .param p3, "divider"    # Landroid/graphics/drawable/Drawable;
    .param p4, "dividerHeight"    # I

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "List view item must not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mItem:Landroid/view/View;

    if-eq v1, p1, :cond_2

    .line 40
    iput-object p1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mItem:Landroid/view/View;

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 42
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 43
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 47
    :cond_1
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->addView(Landroid/view/View;)V

    .line 51
    :cond_2
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mHeader:Landroid/view/View;

    if-eq v1, p2, :cond_4

    .line 52
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 53
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->removeView(Landroid/view/View;)V

    .line 55
    :cond_3
    iput-object p2, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mHeader:Landroid/view/View;

    .line 56
    if-eqz p2, :cond_4

    .line 57
    invoke-virtual {p0, p2}, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->addView(Landroid/view/View;)V

    .line 61
    :cond_4
    iget-object v1, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eq v1, p3, :cond_5

    .line 62
    iput-object p3, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 63
    iput p4, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->mDividerHeight:I

    .line 64
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;->invalidate()V

    .line 67
    :cond_5
    return-void
.end method
