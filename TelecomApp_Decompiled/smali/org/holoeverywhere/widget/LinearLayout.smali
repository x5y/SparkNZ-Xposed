.class public Lorg/holoeverywhere/widget/LinearLayout;
.super Landroid/widget/LinearLayout;
.source "LinearLayout.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field public static final SHOW_DIVIDER_ALL:I = 0x7

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
    .end annotation
.end field

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    iput-boolean v5, p0, Lorg/holoeverywhere/widget/LinearLayout;->mBaselineAligned:Z

    .line 83
    iput v6, p0, Lorg/holoeverywhere/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 85
    iput v7, p0, Lorg/holoeverywhere/widget/LinearLayout;->mBaselineChildTop:I

    .line 91
    const v4, 0x800033

    iput v4, p0, Lorg/holoeverywhere/widget/LinearLayout;->mGravity:I

    .line 147
    sget-object v4, Lorg/holoeverywhere/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 149
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 150
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 151
    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/LinearLayout;->setOrientation(I)V

    .line 153
    :cond_0
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 154
    if-ltz v2, :cond_1

    .line 155
    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/LinearLayout;->setGravity(I)V

    .line 157
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 159
    .local v1, "baselineAligned":Z
    if-nez v1, :cond_2

    .line 160
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 162
    :cond_2
    const/4 v4, 0x4

    const/high16 v5, -0x40800000

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lorg/holoeverywhere/widget/LinearLayout;->mWeightSum:F

    .line 163
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lorg/holoeverywhere/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 165
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lorg/holoeverywhere/widget/LinearLayout;->mUseLargestChild:Z

    .line 167
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/holoeverywhere/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 169
    .local v3, "value":Landroid/util/TypedValue;
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 170
    iget v4, v3, Landroid/util/TypedValue;->data:I

    iput v4, p0, Lorg/holoeverywhere/widget/LinearLayout;->mShowDividers:I

    .line 171
    const/16 v4, 0x8

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 172
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerPadding:I

    .line 175
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 260
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x40000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 262
    .local v4, "uniformMeasureSpec":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 263
    invoke-virtual {p0, v6}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 264
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 265
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 266
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 267
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 268
    .local v8, "oldWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 269
    invoke-virtual/range {v0 .. v5}, Lorg/holoeverywhere/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 270
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 262
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "oldWidth":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v4, 0x40000000

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 279
    .local v2, "uniformMeasureSpec":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 280
    invoke-virtual {p0, v6}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 281
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 282
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 283
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 284
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 285
    .local v8, "oldHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 286
    invoke-virtual/range {v0 .. v5}, Lorg/holoeverywhere/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 287
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 279
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "oldHeight":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public static getAbsoluteGravity(II)I
    .locals 5
    .param p0, "gravity"    # I
    .param p1, "layoutDirection"    # I

    .prologue
    const v4, 0x800005

    const v3, 0x800003

    const/4 v2, 0x1

    .line 37
    move v0, p0

    .line 38
    .local v0, "result":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-lez v1, :cond_1

    .line 39
    and-int v1, v0, v3

    if-ne v1, v3, :cond_3

    .line 40
    const v1, -0x800004

    and-int/2addr v0, v1

    .line 41
    if-ne p1, v2, :cond_2

    .line 42
    or-int/lit8 v0, v0, 0x5

    .line 54
    :cond_0
    :goto_0
    const v1, -0x800001

    and-int/2addr v0, v1

    .line 56
    :cond_1
    return v0

    .line 44
    :cond_2
    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 46
    :cond_3
    and-int v1, v0, v4

    if-ne v1, v4, :cond_0

    .line 47
    const v1, -0x800006

    and-int/2addr v0, v1

    .line 48
    if-ne p1, v2, :cond_4

    .line 49
    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 51
    :cond_4
    or-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public static resolveSizeAndState(III)I
    .locals 4
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I

    .prologue
    .line 60
    move v0, p0

    .line 61
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 62
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 63
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 78
    :goto_0
    const/high16 v3, -0x1000000

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 65
    :sswitch_0
    move v0, p0

    .line 66
    goto :goto_0

    .line 68
    :sswitch_1
    if-ge v2, p0, :cond_0

    .line 69
    const/high16 v3, 0x1000000

    or-int v0, v2, v3

    goto :goto_0

    .line 71
    :cond_0
    move v0, p0

    .line 73
    goto :goto_0

    .line 75
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 63
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1126
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1127
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 180
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildCount()I

    move-result v1

    .line 185
    .local v1, "count":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->isLayoutRtl()Z

    move-result v3

    .line 186
    .local v3, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 187
    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 188
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 189
    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 192
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_1

    .line 193
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    .line 197
    .local v5, "position":I
    :goto_1
    invoke-virtual {p0, p1, v5}, Lorg/holoeverywhere/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 186
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "position":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_1

    .line 201
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "position":I
    :cond_2
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 202
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 204
    .restart local v0    # "child":Landroid/view/View;
    if-nez v0, :cond_5

    .line 205
    if-eqz v3, :cond_4

    .line 206
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingLeft()I

    move-result v5

    .line 218
    .restart local v5    # "position":I
    :goto_2
    invoke-virtual {p0, p1, v5}, Lorg/holoeverywhere/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 220
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "position":I
    :cond_3
    return-void

    .line 208
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_2

    .line 211
    .end local v5    # "position":I
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 212
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_6

    .line 213
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_2

    .line 215
    .end local v5    # "position":I
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_2
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 223
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildCount()I

    move-result v2

    .line 224
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 225
    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 226
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 227
    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 228
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 229
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerHeight:I

    sub-int v5, v6, v7

    .line 230
    .local v5, "top":I
    invoke-virtual {p0, p1, v5}, Lorg/holoeverywhere/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 224
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "top":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 235
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 236
    .restart local v1    # "child":Landroid/view/View;
    const/4 v0, 0x0

    .line 237
    .local v0, "bottom":I
    if-nez v1, :cond_3

    .line 238
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerHeight:I

    sub-int v0, v6, v7

    .line 243
    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/holoeverywhere/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 245
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    return-void

    .line 240
    .restart local v0    # "bottom":I
    .restart local v1    # "child":Landroid/view/View;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 241
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v6, v7

    goto :goto_1
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 250
    iget-object v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 251
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 256
    iget-object v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 257
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 295
    iget v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 302
    :goto_0
    return-object v0

    .line 298
    :cond_0
    iget v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 299
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 302
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 307
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 312
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 8

    .prologue
    const/4 v5, -0x1

    .line 317
    iget v6, p0, Lorg/holoeverywhere/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v6, :cond_1

    .line 318
    invoke-super {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result v5

    .line 349
    :cond_0
    :goto_0
    return v5

    .line 320
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getChildCount()I

    move-result v6

    iget v7, p0, Lorg/holoeverywhere/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gt v6, v7, :cond_2

    .line 321
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 324
    :cond_2
    iget v6, p0, Lorg/holoeverywhere/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v6}, Lorg/holoeverywhere/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 325
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 326
    .local v1, "childBaseline":I
    if-ne v1, v5, :cond_3

    .line 327
    iget v6, p0, Lorg/holoeverywhere/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-eqz v6, :cond_0

    .line 330
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 333
    :cond_3
    iget v2, p0, Lorg/holoeverywhere/widget/LinearLayout;->mBaselineChildTop:I

    .line 334
    .local v2, "childTop":I
    iget v5, p0, Lorg/holoeverywhere/widget/LinearLayout;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 335
    iget v5, p0, Lorg/holoeverywhere/widget/LinearLayout;->mGravity:I

    and-int/lit8 v4, v5, 0x70

    .line 336
    .local v4, "majorGravity":I
    const/16 v5, 0x30

    if-eq v4, v5, :cond_4

    .line 337
    sparse-switch v4, :sswitch_data_0

    .line 348
    .end local v4    # "majorGravity":I
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 349
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    goto :goto_0

    .line 339
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "majorGravity":I
    :sswitch_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    sub-int v2, v5, v6

    .line 340
    goto :goto_1

    .line 342
    :sswitch_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_1

    .line 337
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerWidth:I

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 5
    .param p1, "childIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 411
    if-nez p1, :cond_2

    .line 412
    iget v4, p0, Lorg/holoeverywhere/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 425
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 412
    goto :goto_0

    .line 413
    :cond_2
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ne p1, v4, :cond_3

    .line 414
    iget v4, p0, Lorg/holoeverywhere/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 415
    :cond_3
    iget v2, p0, Lorg/holoeverywhere/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 418
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    .line 419
    const/4 v0, 0x1

    :cond_4
    move v2, v0

    .line 423
    goto :goto_0

    .line 417
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0    # "hasVisibleViewBefore":Z
    .end local v1    # "i":I
    :cond_6
    move v2, v3

    .line 425
    goto :goto_0
.end method

.method public isBaselineAligned()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method protected isLayoutRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 434
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal()V
    .locals 30

    .prologue
    .line 443
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->isLayoutRtl()Z

    move-result v20

    .line 444
    .local v20, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingTop()I

    move-result v27

    .line 447
    .local v27, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getBottom()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getTop()I

    move-result v4

    sub-int v18, v2, v4

    .line 448
    .local v18, "height":I
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    sub-int v10, v18, v2

    .line 449
    .local v10, "childBottom":I
    sub-int v2, v18, v27

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int v13, v2, v4

    .line 450
    .local v13, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildCount()I

    move-result v14

    .line 451
    .local v14, "count":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/holoeverywhere/widget/LinearLayout;->mGravity:I

    const v4, 0x800007

    and-int v23, v2, v4

    .line 452
    .local v23, "majorGravity":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/holoeverywhere/widget/LinearLayout;->mGravity:I

    and-int/lit8 v26, v2, 0x70

    .line 453
    .local v26, "minorGravity":I
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/holoeverywhere/widget/LinearLayout;->mBaselineAligned:Z

    .line 454
    .local v8, "baselineAligned":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v24, v0

    .line 455
    .local v24, "maxAscent":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v25, v0

    .line 456
    .local v25, "maxDescent":[I
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getLayoutDirection()I

    move-result v21

    .line 457
    .local v21, "layoutDirection":I
    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/holoeverywhere/widget/LinearLayout;->getAbsoluteGravity(II)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 466
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingLeft()I

    move-result v12

    .line 469
    .local v12, "childLeft":I
    :goto_0
    const/16 v28, 0x0

    .line 470
    .local v28, "start":I
    const/16 v16, 0x1

    .line 471
    .local v16, "dir":I
    if-eqz v20, :cond_0

    .line 472
    add-int/lit8 v28, v14, -0x1

    .line 473
    const/16 v16, -0x1

    .line 475
    :cond_0
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v14, :cond_7

    .line 476
    mul-int v2, v16, v19

    add-int v11, v28, v2

    .line 477
    .local v11, "childIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 478
    .local v3, "child":Landroid/view/View;
    if-nez v3, :cond_2

    .line 479
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/holoeverywhere/widget/LinearLayout;->measureNullChild(I)I

    move-result v2

    add-int/2addr v12, v2

    .line 475
    :cond_1
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 459
    .end local v3    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v12    # "childLeft":I
    .end local v16    # "dir":I
    .end local v19    # "i":I
    .end local v28    # "start":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getRight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    sub-int v12, v2, v4

    .line 460
    .restart local v12    # "childLeft":I
    goto :goto_0

    .line 462
    .end local v12    # "childLeft":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getLeft()I

    move-result v29

    sub-int v4, v4, v29

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    div-int/lit8 v4, v4, 0x2

    add-int v12, v2, v4

    .line 463
    .restart local v12    # "childLeft":I
    goto :goto_0

    .line 480
    .restart local v3    # "child":Landroid/view/View;
    .restart local v11    # "childIndex":I
    .restart local v16    # "dir":I
    .restart local v19    # "i":I
    .restart local v28    # "start":I
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    .line 481
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 482
    .local v6, "childWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 483
    .local v7, "childHeight":I
    const/4 v9, -0x1

    .line 484
    .local v9, "childBaseline":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout$LayoutParams;

    .line 486
    .local v22, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v8, :cond_3

    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    .line 488
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v9

    .line 490
    :cond_3
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move/from16 v17, v0

    .line 491
    .local v17, "gravity":I
    if-gez v17, :cond_4

    .line 492
    move/from16 v17, v26

    .line 494
    :cond_4
    and-int/lit8 v2, v17, 0x70

    sparse-switch v2, :sswitch_data_1

    .line 513
    move/from16 v5, v27

    .line 516
    .local v5, "childTop":I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/holoeverywhere/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 517
    move-object/from16 v0, p0

    iget v2, v0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v12, v2

    .line 519
    :cond_6
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v2

    .line 520
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/holoeverywhere/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v4, v12, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/holoeverywhere/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 522
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/holoeverywhere/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v12, v2

    .line 524
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lorg/holoeverywhere/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int v19, v19, v2

    goto/16 :goto_2

    .line 496
    .end local v5    # "childTop":I
    :sswitch_2
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v5, v27, v2

    .line 497
    .restart local v5    # "childTop":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_5

    .line 498
    const/4 v2, 0x1

    aget v2, v24, v2

    sub-int/2addr v2, v9

    add-int/2addr v5, v2

    goto :goto_3

    .line 502
    .end local v5    # "childTop":I
    :sswitch_3
    sub-int v2, v13, v7

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v27

    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v5, v2, v4

    .line 504
    .restart local v5    # "childTop":I
    goto :goto_3

    .line 506
    .end local v5    # "childTop":I
    :sswitch_4
    sub-int v2, v10, v7

    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v5, v2, v4

    .line 507
    .restart local v5    # "childTop":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_5

    .line 508
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v15, v2, v9

    .line 509
    .local v15, "descent":I
    const/4 v2, 0x2

    aget v2, v25, v2

    sub-int/2addr v2, v15

    sub-int/2addr v5, v2

    .line 510
    goto :goto_3

    .line 527
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childTop":I
    .end local v6    # "childWidth":I
    .end local v7    # "childHeight":I
    .end local v9    # "childBaseline":I
    .end local v11    # "childIndex":I
    .end local v15    # "descent":I
    .end local v17    # "gravity":I
    .end local v22    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    return-void

    .line 457
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 494
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method layoutVertical()V
    .locals 21

    .prologue
    .line 530
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingLeft()I

    move-result v18

    .line 533
    .local v18, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getRight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getLeft()I

    move-result v4

    sub-int v19, v1, v4

    .line 534
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    sub-int v8, v19, v1

    .line 535
    .local v8, "childRight":I
    sub-int v1, v19, v18

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    sub-int v9, v1, v4

    .line 536
    .local v9, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 537
    .local v11, "count":I
    move-object/from16 v0, p0

    iget v1, v0, Lorg/holoeverywhere/widget/LinearLayout;->mGravity:I

    and-int/lit8 v16, v1, 0x70

    .line 538
    .local v16, "majorGravity":I
    move-object/from16 v0, p0

    iget v1, v0, Lorg/holoeverywhere/widget/LinearLayout;->mGravity:I

    const v4, 0x800007

    and-int v17, v1, v4

    .line 539
    .local v17, "minorGravity":I
    sparse-switch v16, :sswitch_data_0

    .line 548
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingTop()I

    move-result v10

    .line 551
    .local v10, "childTop":I
    :goto_0
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v11, :cond_4

    .line 552
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 553
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_1

    .line 554
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/holoeverywhere/widget/LinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v10, v1

    .line 551
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 541
    .end local v2    # "child":Landroid/view/View;
    .end local v10    # "childTop":I
    .end local v13    # "i":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getBottom()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getTop()I

    move-result v4

    sub-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    sub-int v10, v1, v4

    .line 542
    .restart local v10    # "childTop":I
    goto :goto_0

    .line 544
    .end local v10    # "childTop":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getBottom()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getTop()I

    move-result v20

    sub-int v4, v4, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move/from16 v20, v0

    sub-int v4, v4, v20

    div-int/lit8 v4, v4, 0x2

    add-int v10, v1, v4

    .line 545
    .restart local v10    # "childTop":I
    goto :goto_0

    .line 555
    .restart local v2    # "child":Landroid/view/View;
    .restart local v13    # "i":I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_0

    .line 556
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 557
    .local v5, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 558
    .local v6, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 560
    .local v15, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v12, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 561
    .local v12, "gravity":I
    if-gez v12, :cond_2

    .line 562
    move/from16 v12, v17

    .line 564
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getLayoutDirection()I

    move-result v14

    .line 565
    .local v14, "layoutDirection":I
    invoke-static {v12, v14}, Lorg/holoeverywhere/widget/LinearLayout;->getAbsoluteGravity(II)I

    move-result v7

    .line 566
    .local v7, "absoluteGravity":I
    and-int/lit8 v1, v7, 0x7

    sparse-switch v1, :sswitch_data_1

    .line 576
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v3, v18, v1

    .line 579
    .local v3, "childLeft":I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/holoeverywhere/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 580
    move-object/from16 v0, p0

    iget v1, v0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v10, v1

    .line 582
    :cond_3
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v1

    .line 583
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/holoeverywhere/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v4, v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/holoeverywhere/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 585
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/holoeverywhere/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v10, v1

    .line 586
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lorg/holoeverywhere/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v13, v1

    goto/16 :goto_2

    .line 568
    .end local v3    # "childLeft":I
    :sswitch_2
    sub-int v1, v9, v5

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, v18

    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v3, v1, v4

    .line 570
    .restart local v3    # "childLeft":I
    goto :goto_3

    .line 572
    .end local v3    # "childLeft":I
    :sswitch_3
    sub-int v1, v8, v5

    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v3, v1, v4

    .line 573
    .restart local v3    # "childLeft":I
    goto :goto_3

    .line 589
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLeft":I
    .end local v5    # "childWidth":I
    .end local v6    # "childHeight":I
    .end local v7    # "absoluteGravity":I
    .end local v12    # "gravity":I
    .end local v14    # "layoutDirection":I
    .end local v15    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    return-void

    .line 539
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 566
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .prologue
    .line 594
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/holoeverywhere/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 596
    return-void
.end method

.method measureHorizontal(II)V
    .locals 46
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 599
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 600
    const/16 v35, 0x0

    .line 601
    .local v35, "maxHeight":I
    const/16 v18, 0x0

    .line 602
    .local v18, "childState":I
    const/4 v11, 0x0

    .line 603
    .local v11, "alternativeMaxHeight":I
    const/16 v42, 0x0

    .line 604
    .local v42, "weightedMaxHeight":I
    const/4 v10, 0x1

    .line 605
    .local v10, "allFillParent":Z
    const/16 v39, 0x0

    .line 606
    .local v39, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildCount()I

    move-result v20

    .line 607
    .local v20, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v43

    .line 608
    .local v43, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 609
    .local v25, "heightMode":I
    const/16 v31, 0x0

    .line 610
    .local v31, "matchHeight":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mMaxAscent:[I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mMaxDescent:[I

    if-nez v3, :cond_1

    .line 611
    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mMaxAscent:[I

    .line 612
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mMaxDescent:[I

    .line 614
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v33, v0

    .line 615
    .local v33, "maxAscent":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v34, v0

    .line 616
    .local v34, "maxDescent":[I
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v33, v8

    aput v9, v33, v7

    aput v9, v33, v6

    aput v9, v33, v3

    .line 617
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v34, v8

    aput v9, v34, v7

    aput v9, v34, v6

    aput v9, v34, v3

    .line 618
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/holoeverywhere/widget/LinearLayout;->mBaselineAligned:Z

    .line 619
    .local v13, "baselineAligned":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v40, v0

    .line 620
    .local v40, "useLargestChild":Z
    const/high16 v3, 0x40000000

    move/from16 v0, v43

    if-ne v0, v3, :cond_2

    const/16 v27, 0x1

    .line 621
    .local v27, "isExactly":Z
    :goto_0
    const/high16 v28, -0x80000000

    .line 622
    .local v28, "largestChildWidth":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v5, v0, :cond_15

    .line 623
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 624
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_3

    .line 625
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/holoeverywhere/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 622
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 620
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "i":I
    .end local v27    # "isExactly":Z
    .end local v28    # "largestChildWidth":I
    :cond_2
    const/16 v27, 0x0

    goto :goto_0

    .line 628
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "i":I
    .restart local v27    # "isExactly":Z
    .restart local v28    # "largestChildWidth":I
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_4

    .line 629
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/holoeverywhere/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 630
    goto :goto_2

    .line 632
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/holoeverywhere/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 633
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 635
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 637
    .local v29, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v39, v39, v3

    .line 638
    const/high16 v3, 0x40000000

    move/from16 v0, v43

    if-ne v0, v3, :cond_b

    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_b

    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_b

    .line 639
    if-eqz v27, :cond_a

    .line 640
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v29

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 646
    :goto_3
    if-eqz v13, :cond_6

    .line 647
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 648
    .local v23, "freeSpec":I
    move/from16 v0, v23

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 675
    .end local v23    # "freeSpec":I
    :cond_6
    :goto_4
    const/16 v32, 0x0

    .line 676
    .local v32, "matchHeightLocally":Z
    const/high16 v3, 0x40000000

    move/from16 v0, v25

    if-eq v0, v3, :cond_7

    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_7

    .line 678
    const/16 v31, 0x1

    .line 679
    const/16 v32, 0x1

    .line 681
    :cond_7
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v30, v3, v6

    .line 682
    .local v30, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v30

    .line 683
    .local v16, "childHeight":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v3, v6, :cond_8

    .line 684
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    or-int v18, v18, v3

    .line 686
    :cond_8
    if-eqz v13, :cond_9

    .line 687
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 688
    .local v14, "childBaseline":I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_9

    .line 689
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mGravity:I

    :goto_5
    and-int/lit8 v24, v3, 0x70

    .line 691
    .local v24, "gravity":I
    shr-int/lit8 v3, v24, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v26, v3, 0x1

    .line 693
    .local v26, "index":I
    aget v3, v33, v26

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v33, v26

    .line 694
    aget v3, v34, v26

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v34, v26

    .line 697
    .end local v14    # "childBaseline":I
    .end local v24    # "gravity":I
    .end local v26    # "index":I
    :cond_9
    move/from16 v0, v35

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 698
    if-eqz v10, :cond_11

    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_11

    const/4 v10, 0x1

    .line 700
    :goto_6
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_13

    .line 701
    if-eqz v32, :cond_12

    .end local v30    # "margin":I
    :goto_7
    move/from16 v0, v42

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 707
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/holoeverywhere/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_2

    .line 642
    .end local v16    # "childHeight":I
    .end local v32    # "matchHeightLocally":Z
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move/from16 v38, v0

    .line 643
    .local v38, "totalLength":I
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v3, v3, v38

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move/from16 v0, v38

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_3

    .line 651
    .end local v38    # "totalLength":I
    :cond_b
    const/high16 v36, -0x80000000

    .line 652
    .local v36, "oldWidth":I
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_c

    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_c

    .line 653
    const/16 v36, 0x0

    .line 654
    const/4 v3, -0x2

    move-object/from16 v0, v29

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 656
    :cond_c
    const/4 v3, 0x0

    cmpl-float v3, v39, v3

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget v7, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    :goto_9
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Lorg/holoeverywhere/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 659
    const/high16 v3, -0x80000000

    move/from16 v0, v36

    if-eq v0, v3, :cond_d

    .line 660
    move/from16 v0, v36

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 662
    :cond_d
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 663
    .local v19, "childWidth":I
    if-eqz v27, :cond_f

    .line 664
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v6, v6, v19

    move-object/from16 v0, v29

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/holoeverywhere/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 671
    :goto_a
    if-eqz v40, :cond_6

    .line 672
    move/from16 v0, v19

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    goto/16 :goto_4

    .line 656
    .end local v19    # "childWidth":I
    :cond_e
    const/4 v7, 0x0

    goto :goto_9

    .line 667
    .restart local v19    # "childWidth":I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move/from16 v38, v0

    .line 668
    .restart local v38    # "totalLength":I
    add-int v3, v38, v19

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/holoeverywhere/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v38

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    goto :goto_a

    .line 689
    .end local v19    # "childWidth":I
    .end local v36    # "oldWidth":I
    .end local v38    # "totalLength":I
    .restart local v14    # "childBaseline":I
    .restart local v16    # "childHeight":I
    .restart local v30    # "margin":I
    .restart local v32    # "matchHeightLocally":Z
    :cond_10
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_5

    .line 698
    .end local v14    # "childBaseline":I
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_12
    move/from16 v30, v16

    .line 701
    goto/16 :goto_7

    .line 704
    :cond_13
    if-eqz v32, :cond_14

    .end local v30    # "margin":I
    :goto_b
    move/from16 v0, v30

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_8

    .restart local v30    # "margin":I
    :cond_14
    move/from16 v30, v16

    goto :goto_b

    .line 709
    .end local v4    # "child":Landroid/view/View;
    .end local v16    # "childHeight":I
    .end local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "margin":I
    .end local v32    # "matchHeightLocally":Z
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    if-lez v3, :cond_16

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 710
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 712
    :cond_16
    const/4 v3, 0x1

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_17

    const/4 v3, 0x0

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_17

    const/4 v3, 0x2

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_17

    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_18

    .line 716
    :cond_17
    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, 0x0

    aget v6, v33, v6

    const/4 v7, 0x1

    aget v7, v33, v7

    const/4 v8, 0x2

    aget v8, v33, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 719
    .local v12, "ascent":I
    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, 0x0

    aget v6, v34, v6

    const/4 v7, 0x1

    aget v7, v34, v7

    const/4 v8, 0x2

    aget v8, v34, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 722
    .local v22, "descent":I
    add-int v3, v12, v22

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 724
    .end local v12    # "ascent":I
    .end local v22    # "descent":I
    :cond_18
    if-eqz v40, :cond_1d

    const/high16 v3, -0x80000000

    move/from16 v0, v43

    if-eq v0, v3, :cond_19

    if-nez v43, :cond_1d

    .line 726
    :cond_19
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 727
    const/4 v5, 0x0

    :goto_c
    move/from16 v0, v20

    if-ge v5, v0, :cond_1d

    .line 728
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 729
    .restart local v4    # "child":Landroid/view/View;
    if-nez v4, :cond_1a

    .line 730
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/holoeverywhere/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 727
    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 733
    :cond_1a
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1b

    .line 734
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/holoeverywhere/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 735
    goto :goto_d

    .line 737
    :cond_1b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 739
    .restart local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v27, :cond_1c

    .line 740
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v6, v6, v28

    move-object/from16 v0, v29

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/holoeverywhere/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    goto :goto_d

    .line 743
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move/from16 v38, v0

    .line 744
    .restart local v38    # "totalLength":I
    add-int v3, v38, v28

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/holoeverywhere/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v38

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    goto :goto_d

    .line 749
    .end local v4    # "child":Landroid/view/View;
    .end local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v38    # "totalLength":I
    :cond_1d
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 750
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move/from16 v44, v0

    .line 751
    .local v44, "widthSize":I
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v44

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v44

    .line 752
    const/4 v3, 0x0

    move/from16 v0, v44

    move/from16 v1, p1

    invoke-static {v0, v1, v3}, Lorg/holoeverywhere/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v45

    .line 753
    .local v45, "widthSizeAndState":I
    const v3, 0xffffff

    and-int v44, v45, v3

    .line 754
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    sub-int v21, v44, v3

    .line 755
    .local v21, "delta":I
    if-eqz v21, :cond_30

    const/4 v3, 0x0

    cmpl-float v3, v39, v3

    if-lez v3, :cond_30

    .line 756
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mWeightSum:F

    move/from16 v41, v0

    .line 757
    .local v41, "weightSum":F
    :goto_e
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v33, v8

    aput v9, v33, v7

    aput v9, v33, v6

    aput v9, v33, v3

    .line 758
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v34, v8

    aput v9, v34, v7

    aput v9, v34, v6

    aput v9, v34, v3

    .line 759
    const/16 v35, -0x1

    .line 760
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 761
    const/4 v5, 0x0

    :goto_f
    move/from16 v0, v20

    if-ge v5, v0, :cond_2b

    .line 762
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 763
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_20

    .line 761
    :cond_1e
    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .end local v4    # "child":Landroid/view/View;
    .end local v41    # "weightSum":F
    :cond_1f
    move/from16 v41, v39

    .line 756
    goto :goto_e

    .line 766
    .restart local v4    # "child":Landroid/view/View;
    .restart local v41    # "weightSum":F
    :cond_20
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 768
    .restart local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v29

    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 769
    .local v15, "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_23

    .line 770
    move/from16 v0, v21

    int-to-float v3, v0

    mul-float/2addr v3, v15

    div-float v3, v3, v41

    float-to-int v0, v3

    move/from16 v37, v0

    .line 771
    .local v37, "share":I
    sub-float v41, v41, v15

    .line 772
    sub-int v21, v21, v37

    .line 773
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v3, v6}, Lorg/holoeverywhere/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v17

    .line 777
    .local v17, "childHeightMeasureSpec":I
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_21

    const/high16 v3, 0x40000000

    move/from16 v0, v43

    if-eq v0, v3, :cond_24

    .line 778
    :cond_21
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v19, v3, v37

    .line 779
    .restart local v19    # "childWidth":I
    if-gez v19, :cond_22

    .line 780
    const/16 v19, 0x0

    .line 782
    :cond_22
    const/high16 v3, 0x40000000

    move/from16 v0, v19

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    .line 790
    .end local v19    # "childWidth":I
    .end local v37    # "share":I
    :goto_11
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v3, v6, :cond_23

    .line 791
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    const/high16 v6, -0x1000000

    and-int/2addr v3, v6

    or-int v18, v18, v3

    .line 794
    .end local v17    # "childHeightMeasureSpec":I
    :cond_23
    if-eqz v27, :cond_26

    .line 795
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, v29

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, v29

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/holoeverywhere/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 802
    :goto_12
    const/high16 v3, 0x40000000

    move/from16 v0, v25

    if-eq v0, v3, :cond_27

    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_27

    const/16 v32, 0x1

    .line 804
    .restart local v32    # "matchHeightLocally":Z
    :goto_13
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v30, v3, v6

    .line 805
    .restart local v30    # "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v30

    .line 806
    .restart local v16    # "childHeight":I
    move/from16 v0, v35

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 807
    if-eqz v32, :cond_28

    .end local v30    # "margin":I
    :goto_14
    move/from16 v0, v30

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 809
    if-eqz v10, :cond_29

    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_29

    const/4 v10, 0x1

    .line 811
    :goto_15
    if-eqz v13, :cond_1e

    .line 812
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 813
    .restart local v14    # "childBaseline":I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_1e

    .line 814
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_2a

    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mGravity:I

    :goto_16
    and-int/lit8 v24, v3, 0x70

    .line 816
    .restart local v24    # "gravity":I
    shr-int/lit8 v3, v24, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v26, v3, 0x1

    .line 818
    .restart local v26    # "index":I
    aget v3, v33, v26

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v33, v26

    .line 819
    aget v3, v34, v26

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v34, v26

    goto/16 :goto_10

    .line 786
    .end local v14    # "childBaseline":I
    .end local v16    # "childHeight":I
    .end local v24    # "gravity":I
    .end local v26    # "index":I
    .end local v32    # "matchHeightLocally":Z
    .restart local v17    # "childHeightMeasureSpec":I
    .restart local v37    # "share":I
    :cond_24
    if-lez v37, :cond_25

    .end local v37    # "share":I
    :goto_17
    const/high16 v3, 0x40000000

    move/from16 v0, v37

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_11

    .restart local v37    # "share":I
    :cond_25
    const/16 v37, 0x0

    goto :goto_17

    .line 798
    .end local v17    # "childHeightMeasureSpec":I
    .end local v37    # "share":I
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move/from16 v38, v0

    .line 799
    .restart local v38    # "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v38

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/holoeverywhere/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v38

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_12

    .line 802
    .end local v38    # "totalLength":I
    :cond_27
    const/16 v32, 0x0

    goto/16 :goto_13

    .restart local v16    # "childHeight":I
    .restart local v30    # "margin":I
    .restart local v32    # "matchHeightLocally":Z
    :cond_28
    move/from16 v30, v16

    .line 807
    goto/16 :goto_14

    .line 809
    .end local v30    # "margin":I
    :cond_29
    const/4 v10, 0x0

    goto :goto_15

    .line 814
    .restart local v14    # "childBaseline":I
    :cond_2a
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_16

    .line 824
    .end local v4    # "child":Landroid/view/View;
    .end local v14    # "childBaseline":I
    .end local v15    # "childExtra":F
    .end local v16    # "childHeight":I
    .end local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v32    # "matchHeightLocally":Z
    :cond_2b
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 825
    const/4 v3, 0x1

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2c

    const/4 v3, 0x0

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2c

    const/4 v3, 0x2

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2c

    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2d

    .line 829
    :cond_2c
    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, 0x0

    aget v6, v33, v6

    const/4 v7, 0x1

    aget v7, v33, v7

    const/4 v8, 0x2

    aget v8, v33, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 832
    .restart local v12    # "ascent":I
    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, 0x0

    aget v6, v34, v6

    const/4 v7, 0x1

    aget v7, v34, v7

    const/4 v8, 0x2

    aget v8, v34, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 835
    .restart local v22    # "descent":I
    add-int v3, v12, v22

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 857
    .end local v12    # "ascent":I
    .end local v22    # "descent":I
    .end local v41    # "weightSum":F
    :cond_2d
    if-nez v10, :cond_2e

    const/high16 v3, 0x40000000

    move/from16 v0, v25

    if-eq v0, v3, :cond_2e

    .line 858
    move/from16 v35, v11

    .line 860
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    add-int/2addr v3, v6

    add-int v35, v35, v3

    .line 861
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 862
    const/high16 v3, -0x1000000

    and-int v3, v3, v18

    or-int v3, v3, v45

    shl-int/lit8 v6, v18, 0x10

    move/from16 v0, v35

    move/from16 v1, p2

    invoke-static {v0, v1, v6}, Lorg/holoeverywhere/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lorg/holoeverywhere/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 865
    if-eqz v31, :cond_2f

    .line 866
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/holoeverywhere/widget/LinearLayout;->forceUniformHeight(II)V

    .line 868
    :cond_2f
    return-void

    .line 838
    :cond_30
    move/from16 v0, v42

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 839
    if-eqz v40, :cond_2d

    const/high16 v3, 0x40000000

    move/from16 v0, v43

    if-eq v0, v3, :cond_2d

    .line 840
    const/4 v5, 0x0

    :goto_18
    move/from16 v0, v20

    if-ge v5, v0, :cond_2d

    .line 841
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 842
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_31

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_32

    .line 840
    :cond_31
    :goto_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 845
    :cond_32
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 847
    .restart local v29    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v29

    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 848
    .restart local v15    # "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_31

    .line 849
    const/high16 v3, 0x40000000

    move/from16 v0, v28

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v7, 0x40000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_19
.end method

.method measureNullChild(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 871
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .locals 37
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 875
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 876
    const/16 v27, 0x0

    .line 877
    .local v27, "maxWidth":I
    const/4 v15, 0x0

    .line 878
    .local v15, "childState":I
    const/4 v11, 0x0

    .line 879
    .local v11, "alternativeMaxWidth":I
    const/16 v35, 0x0

    .line 880
    .local v35, "weightedMaxWidth":I
    const/4 v10, 0x1

    .line 881
    .local v10, "allFillParent":Z
    const/16 v32, 0x0

    .line 882
    .local v32, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildCount()I

    move-result v17

    .line 883
    .local v17, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v36

    .line 884
    .local v36, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 885
    .local v19, "heightMode":I
    const/16 v25, 0x0

    .line 886
    .local v25, "matchWidth":Z
    move-object/from16 v0, p0

    iget v12, v0, Lorg/holoeverywhere/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 887
    .local v12, "baselineChildIndex":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v33, v0

    .line 888
    .local v33, "useLargestChild":Z
    const/high16 v22, -0x80000000

    .line 889
    .local v22, "largestChildHeight":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v5, v0, :cond_10

    .line 890
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 891
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_0

    .line 892
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/holoeverywhere/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 889
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 895
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1

    .line 896
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/holoeverywhere/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 897
    goto :goto_1

    .line 899
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/holoeverywhere/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 900
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 902
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 903
    .local v23, "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v32, v32, v3

    .line 904
    const/high16 v3, 0x40000000

    move/from16 v0, v19

    if-ne v0, v3, :cond_5

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_5

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    .line 905
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move/from16 v31, v0

    .line 906
    .local v31, "totalLength":I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v3, v3, v31

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move/from16 v0, v31

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 927
    :cond_3
    :goto_2
    if-ltz v12, :cond_4

    add-int/lit8 v3, v5, 0x1

    if-ne v12, v3, :cond_4

    .line 928
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mBaselineChildTop:I

    .line 930
    :cond_4
    if-ge v5, v12, :cond_9

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_9

    .line 931
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v6, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 908
    .end local v31    # "totalLength":I
    :cond_5
    const/high16 v29, -0x80000000

    .line 909
    .local v29, "oldHeight":I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_6

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    .line 910
    const/16 v29, 0x0

    .line 911
    const/4 v3, -0x2

    move-object/from16 v0, v23

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 913
    :cond_6
    const/4 v7, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v32, v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget v9, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    :goto_3
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Lorg/holoeverywhere/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 916
    const/high16 v3, -0x80000000

    move/from16 v0, v29

    if-eq v0, v3, :cond_7

    .line 917
    move/from16 v0, v29

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 919
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 920
    .local v14, "childHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move/from16 v31, v0

    .line 921
    .restart local v31    # "totalLength":I
    add-int v3, v31, v14

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/holoeverywhere/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v31

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 923
    if-eqz v33, :cond_3

    .line 924
    move/from16 v0, v22

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v22

    goto/16 :goto_2

    .line 913
    .end local v14    # "childHeight":I
    .end local v31    # "totalLength":I
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 936
    .end local v29    # "oldHeight":I
    .restart local v31    # "totalLength":I
    :cond_9
    const/16 v26, 0x0

    .line 937
    .local v26, "matchWidthLocally":Z
    const/high16 v3, 0x40000000

    move/from16 v0, v36

    if-eq v0, v3, :cond_a

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_a

    .line 939
    const/16 v25, 0x1

    .line 940
    const/16 v26, 0x1

    .line 942
    :cond_a
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v24, v3, v6

    .line 943
    .local v24, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v28, v3, v24

    .line 944
    .local v28, "measuredWidth":I
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 945
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v3, v6, :cond_b

    .line 946
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    or-int/2addr v15, v3

    .line 948
    :cond_b
    if-eqz v10, :cond_c

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_c

    const/4 v10, 0x1

    .line 950
    :goto_4
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_e

    .line 951
    if-eqz v26, :cond_d

    .end local v24    # "margin":I
    :goto_5
    move/from16 v0, v35

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 958
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/holoeverywhere/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_1

    .line 948
    .restart local v24    # "margin":I
    :cond_c
    const/4 v10, 0x0

    goto :goto_4

    :cond_d
    move/from16 v24, v28

    .line 951
    goto :goto_5

    .line 954
    :cond_e
    if-eqz v26, :cond_f

    .end local v24    # "margin":I
    :goto_7
    move/from16 v0, v24

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_6

    .restart local v24    # "margin":I
    :cond_f
    move/from16 v24, v28

    goto :goto_7

    .line 960
    .end local v4    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "margin":I
    .end local v26    # "matchWidthLocally":Z
    .end local v28    # "measuredWidth":I
    .end local v31    # "totalLength":I
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    if-lez v3, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 961
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 963
    :cond_11
    if-eqz v33, :cond_15

    const/high16 v3, -0x80000000

    move/from16 v0, v19

    if-eq v0, v3, :cond_12

    if-nez v19, :cond_15

    .line 965
    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 966
    const/4 v5, 0x0

    :goto_8
    move/from16 v0, v17

    if-ge v5, v0, :cond_15

    .line 967
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 968
    .restart local v4    # "child":Landroid/view/View;
    if-nez v4, :cond_13

    .line 969
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/holoeverywhere/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 966
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 972
    :cond_13
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_14

    .line 973
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/holoeverywhere/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 974
    goto :goto_9

    .line 976
    :cond_14
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 978
    .restart local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move/from16 v31, v0

    .line 979
    .restart local v31    # "totalLength":I
    add-int v3, v31, v22

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/holoeverywhere/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v31

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    goto :goto_9

    .line 983
    .end local v4    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v31    # "totalLength":I
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 984
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move/from16 v20, v0

    .line 985
    .local v20, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v20

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 986
    const/4 v3, 0x0

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Lorg/holoeverywhere/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v21

    .line 987
    .local v21, "heightSizeAndState":I
    const v3, 0xffffff

    and-int v20, v21, v3

    .line 988
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    sub-int v18, v20, v3

    .line 989
    .local v18, "delta":I
    if-eqz v18, :cond_24

    const/4 v3, 0x0

    cmpl-float v3, v32, v3

    if-lez v3, :cond_24

    .line 990
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mWeightSum:F

    move/from16 v34, v0

    .line 991
    .local v34, "weightSum":F
    :goto_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 992
    const/4 v5, 0x0

    :goto_b
    move/from16 v0, v17

    if-ge v5, v0, :cond_20

    .line 993
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 994
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_17

    .line 992
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .end local v4    # "child":Landroid/view/View;
    .end local v34    # "weightSum":F
    :cond_16
    move/from16 v34, v32

    .line 990
    goto :goto_a

    .line 997
    .restart local v4    # "child":Landroid/view/View;
    .restart local v34    # "weightSum":F
    :cond_17
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 998
    .restart local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    iget v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 999
    .local v13, "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_1a

    .line 1000
    move/from16 v0, v18

    int-to-float v3, v0

    mul-float/2addr v3, v13

    div-float v3, v3, v34

    float-to-int v0, v3

    move/from16 v30, v0

    .line 1001
    .local v30, "share":I
    sub-float v34, v34, v13

    .line 1002
    sub-int v18, v18, v30

    .line 1003
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingRight()I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v3, v6}, Lorg/holoeverywhere/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v16

    .line 1006
    .local v16, "childWidthMeasureSpec":I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_18

    const/high16 v3, 0x40000000

    move/from16 v0, v19

    if-eq v0, v3, :cond_1b

    .line 1007
    :cond_18
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v14, v3, v30

    .line 1008
    .restart local v14    # "childHeight":I
    if-gez v14, :cond_19

    .line 1009
    const/4 v14, 0x0

    .line 1011
    :cond_19
    const/high16 v3, 0x40000000

    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v16

    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    .line 1018
    .end local v14    # "childHeight":I
    .end local v30    # "share":I
    :goto_d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v3, v6, :cond_1a

    .line 1019
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    and-int/lit16 v3, v3, -0x100

    or-int/2addr v15, v3

    .line 1023
    .end local v16    # "childWidthMeasureSpec":I
    :cond_1a
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v24, v3, v6

    .line 1024
    .restart local v24    # "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v28, v3, v24

    .line 1025
    .restart local v28    # "measuredWidth":I
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1026
    const/high16 v3, 0x40000000

    move/from16 v0, v36

    if-eq v0, v3, :cond_1d

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1d

    const/16 v26, 0x1

    .line 1028
    .restart local v26    # "matchWidthLocally":Z
    :goto_e
    if-eqz v26, :cond_1e

    .end local v24    # "margin":I
    :goto_f
    move/from16 v0, v24

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1030
    if-eqz v10, :cond_1f

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1f

    const/4 v10, 0x1

    .line 1032
    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    move/from16 v31, v0

    .line 1033
    .restart local v31    # "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, v31

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/holoeverywhere/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v31

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_c

    .line 1014
    .end local v26    # "matchWidthLocally":Z
    .end local v28    # "measuredWidth":I
    .end local v31    # "totalLength":I
    .restart local v16    # "childWidthMeasureSpec":I
    .restart local v30    # "share":I
    :cond_1b
    if-lez v30, :cond_1c

    .end local v30    # "share":I
    :goto_11
    const/high16 v3, 0x40000000

    move/from16 v0, v30

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v16

    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    goto :goto_d

    .restart local v30    # "share":I
    :cond_1c
    const/16 v30, 0x0

    goto :goto_11

    .line 1026
    .end local v16    # "childWidthMeasureSpec":I
    .end local v30    # "share":I
    .restart local v24    # "margin":I
    .restart local v28    # "measuredWidth":I
    :cond_1d
    const/16 v26, 0x0

    goto :goto_e

    .restart local v26    # "matchWidthLocally":Z
    :cond_1e
    move/from16 v24, v28

    .line 1028
    goto :goto_f

    .line 1030
    .end local v24    # "margin":I
    :cond_1f
    const/4 v10, 0x0

    goto :goto_10

    .line 1036
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "childExtra":F
    .end local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "matchWidthLocally":Z
    .end local v28    # "measuredWidth":I
    :cond_20
    move-object/from16 v0, p0

    iget v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lorg/holoeverywhere/widget/LinearLayout;->mTotalLength:I

    .line 1057
    .end local v34    # "weightSum":F
    :cond_21
    if-nez v10, :cond_22

    const/high16 v3, 0x40000000

    move/from16 v0, v36

    if-eq v0, v3, :cond_22

    .line 1058
    move/from16 v27, v11

    .line 1060
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getPaddingRight()I

    move-result v6

    add-int/2addr v3, v6

    add-int v27, v27, v3

    .line 1061
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1062
    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1, v15}, Lorg/holoeverywhere/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lorg/holoeverywhere/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 1064
    if-eqz v25, :cond_23

    .line 1065
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/holoeverywhere/widget/LinearLayout;->forceUniformWidth(II)V

    .line 1067
    :cond_23
    return-void

    .line 1038
    :cond_24
    move/from16 v0, v35

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1040
    if-eqz v33, :cond_21

    const/high16 v3, 0x40000000

    move/from16 v0, v19

    if-eq v0, v3, :cond_21

    .line 1041
    const/4 v5, 0x0

    :goto_12
    move/from16 v0, v17

    if-ge v5, v0, :cond_21

    .line 1042
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/holoeverywhere/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1043
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_25

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_26

    .line 1041
    :cond_25
    :goto_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 1046
    :cond_26
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 1048
    .restart local v23    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    iget v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1049
    .restart local v13    # "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_25

    .line 1050
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v6, 0x40000000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x40000000

    move/from16 v0, v22

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_13
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1071
    iget-object v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 1074
    :cond_0
    iget v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1075
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1077
    :cond_1
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1083
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1084
    const-class v0, Lorg/holoeverywhere/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1085
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1089
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1090
    const-class v0, Lorg/holoeverywhere/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1091
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1095
    iget v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1096
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->layoutVertical()V

    .line 1100
    :goto_0
    return-void

    .line 1098
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->layoutHorizontal()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1104
    iget v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1105
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/widget/LinearLayout;->measureVertical(II)V

    .line 1109
    :goto_0
    return-void

    .line 1107
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/widget/LinearLayout;->measureHorizontal(II)V

    goto :goto_0
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .param p1, "baselineAligned"    # Z

    .prologue
    .line 1113
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/LinearLayout;->mBaselineAligned:Z

    .line 1114
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 1118
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1119
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1122
    :cond_1
    iput p1, p0, Lorg/holoeverywhere/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 1123
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 1131
    iget-object v1, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    .line 1144
    :goto_0
    return-void

    .line 1134
    :cond_0
    iput-object p1, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1135
    if-eqz p1, :cond_2

    .line 1136
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerWidth:I

    .line 1137
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerHeight:I

    .line 1142
    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 1143
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->requestLayout()V

    goto :goto_0

    .line 1139
    :cond_2
    iput v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerWidth:I

    .line 1140
    iput v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerHeight:I

    goto :goto_1
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 1148
    iput p1, p0, Lorg/holoeverywhere/widget/LinearLayout;->mDividerPadding:I

    .line 1149
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1153
    iget v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 1154
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 1155
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1157
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 1158
    or-int/lit8 p1, p1, 0x30

    .line 1160
    :cond_1
    iput p1, p0, Lorg/holoeverywhere/widget/LinearLayout;->mGravity:I

    .line 1161
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->requestLayout()V

    .line 1163
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .param p1, "horizontalGravity"    # I

    .prologue
    const v2, 0x800007

    .line 1167
    and-int v0, p1, v2

    .line 1168
    .local v0, "gravity":I
    iget v1, p0, Lorg/holoeverywhere/widget/LinearLayout;->mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    .line 1169
    iget v1, p0, Lorg/holoeverywhere/widget/LinearLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Lorg/holoeverywhere/widget/LinearLayout;->mGravity:I

    .line 1170
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->requestLayout()V

    .line 1172
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1176
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/LinearLayout;->mUseLargestChild:Z

    .line 1177
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1181
    iget v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1182
    iput p1, p0, Lorg/holoeverywhere/widget/LinearLayout;->mOrientation:I

    .line 1183
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->requestLayout()V

    .line 1185
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1
    .param p1, "showDividers"    # I

    .prologue
    .line 1189
    iget v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mShowDividers:I

    if-eq p1, v0, :cond_0

    .line 1190
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->requestLayout()V

    .line 1192
    :cond_0
    iput p1, p0, Lorg/holoeverywhere/widget/LinearLayout;->mShowDividers:I

    .line 1193
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .param p1, "verticalGravity"    # I

    .prologue
    .line 1197
    and-int/lit8 v0, p1, 0x70

    .line 1198
    .local v0, "gravity":I
    iget v1, p0, Lorg/holoeverywhere/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 1199
    iget v1, p0, Lorg/holoeverywhere/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Lorg/holoeverywhere/widget/LinearLayout;->mGravity:I

    .line 1200
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/LinearLayout;->requestLayout()V

    .line 1202
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .param p1, "weightSum"    # F

    .prologue
    .line 1206
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/widget/LinearLayout;->mWeightSum:F

    .line 1207
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 1211
    const/4 v0, 0x0

    return v0
.end method
