.class public Lorg/holoeverywhere/internal/WindowDecorView;
.super Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;
.source "WindowDecorView.java"


# instance fields
.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mMinHeightMajor:Landroid/util/TypedValue;

.field private mMinHeightMinor:Landroid/util/TypedValue;

.field private mMinWidthMajor:Landroid/util/TypedValue;

.field private mMinWidthMinor:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;-><init>(Landroid/content/Context;)V

    .line 29
    sget-object v1, Lorg/holoeverywhere/R$styleable;->WindowSizes:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const/4 v1, 0x6

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, p0, Lorg/holoeverywhere/internal/WindowDecorView;->mMinWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 34
    :cond_0
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    const/4 v1, 0x7

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, p0, Lorg/holoeverywhere/internal/WindowDecorView;->mMinWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 38
    :cond_1
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lorg/holoeverywhere/internal/WindowDecorView;->mMinHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 42
    :cond_2
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 43
    const/4 v1, 0x5

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, p0, Lorg/holoeverywhere/internal/WindowDecorView;->mMinHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 46
    :cond_3
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 47
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lorg/holoeverywhere/internal/WindowDecorView;->mFixedWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 50
    :cond_4
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 51
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lorg/holoeverywhere/internal/WindowDecorView;->mFixedWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 54
    :cond_5
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 55
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lorg/holoeverywhere/internal/WindowDecorView;->mFixedHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 58
    :cond_6
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 59
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lorg/holoeverywhere/internal/WindowDecorView;->mFixedHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 62
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 67
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/holoeverywhere/internal/WindowDecorView;->setPadding(IIII)V

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method protected onMeasure(II)V
    .locals 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 73
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/internal/WindowDecorView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 74
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    const/4 v7, 0x1

    .line 75
    .local v7, "isPortrait":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 76
    .local v16, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 77
    .local v6, "heightMode":I
    const/4 v3, 0x0

    .local v3, "fixedWidth":Z
    const/4 v2, 0x0

    .line 78
    .local v2, "fixedHeight":Z
    const/high16 v17, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 79
    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/internal/WindowDecorView;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 80
    .local v13, "tvw":Landroid/util/TypedValue;
    :goto_1
    if-eqz v13, :cond_0

    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 82
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 83
    invoke-virtual {v13, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v14, v0

    .line 89
    .local v14, "w":I
    :goto_2
    if-lez v14, :cond_0

    .line 90
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    const/high16 v18, 0x40000000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 92
    const/4 v3, 0x1

    .line 96
    .end local v13    # "tvw":Landroid/util/TypedValue;
    .end local v14    # "w":I
    :cond_0
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    if-ne v6, v0, :cond_1

    .line 97
    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/internal/WindowDecorView;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 98
    .local v12, "tvh":Landroid/util/TypedValue;
    :goto_3
    if-eqz v12, :cond_1

    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 100
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 101
    invoke-virtual {v12, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v4, v0

    .line 107
    .local v4, "h":I
    :goto_4
    if-lez v4, :cond_1

    .line 108
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    const/high16 v18, 0x40000000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 110
    const/4 v2, 0x1

    .line 114
    .end local v4    # "h":I
    .end local v12    # "tvh":Landroid/util/TypedValue;
    :cond_1
    invoke-super/range {p0 .. p2}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->onMeasure(II)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/internal/WindowDecorView;->getMeasuredWidth()I

    move-result v15

    .line 116
    .local v15, "width":I
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/internal/WindowDecorView;->getMeasuredHeight()I

    move-result v5

    .line 117
    .local v5, "height":I
    const/4 v8, 0x0

    .line 118
    .local v8, "measure":Z
    const/high16 v17, 0x40000000

    move/from16 v0, v17

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 119
    const/high16 v17, 0x40000000

    move/from16 v0, v17

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 120
    if-nez v3, :cond_2

    const/high16 v17, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 121
    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/internal/WindowDecorView;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 122
    .local v11, "tv":Landroid/util/TypedValue;
    :goto_5
    if-eqz v11, :cond_2

    iget v0, v11, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 124
    iget v0, v11, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 125
    invoke-virtual {v11, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v10, v0

    .line 132
    .local v10, "min":I
    :goto_6
    if-ge v15, v10, :cond_2

    .line 133
    const/high16 v17, 0x40000000

    move/from16 v0, v17

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 134
    const/4 v8, 0x1

    .line 138
    .end local v10    # "min":I
    .end local v11    # "tv":Landroid/util/TypedValue;
    :cond_2
    if-nez v2, :cond_3

    const/high16 v17, -0x80000000

    move/from16 v0, v17

    if-ne v6, v0, :cond_3

    .line 139
    if-eqz v7, :cond_f

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/internal/WindowDecorView;->mMinHeightMinor:Landroid/util/TypedValue;

    .line 140
    .restart local v11    # "tv":Landroid/util/TypedValue;
    :goto_7
    if-eqz v11, :cond_3

    iget v0, v11, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 142
    iget v0, v11, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 143
    invoke-virtual {v11, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v10, v0

    .line 149
    .restart local v10    # "min":I
    :goto_8
    if-ge v5, v10, :cond_3

    .line 150
    const/high16 v17, 0x40000000

    move/from16 v0, v17

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 151
    const/4 v8, 0x1

    .line 155
    .end local v10    # "min":I
    .end local v11    # "tv":Landroid/util/TypedValue;
    :cond_3
    if-eqz v8, :cond_4

    .line 156
    invoke-super/range {p0 .. p2}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->onMeasure(II)V

    .line 158
    :cond_4
    return-void

    .line 74
    .end local v2    # "fixedHeight":Z
    .end local v3    # "fixedWidth":Z
    .end local v5    # "height":I
    .end local v6    # "heightMode":I
    .end local v7    # "isPortrait":Z
    .end local v8    # "measure":Z
    .end local v15    # "width":I
    .end local v16    # "widthMode":I
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 79
    .restart local v2    # "fixedHeight":Z
    .restart local v3    # "fixedWidth":Z
    .restart local v6    # "heightMode":I
    .restart local v7    # "isPortrait":Z
    .restart local v16    # "widthMode":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/internal/WindowDecorView;->mFixedWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_1

    .line 84
    .restart local v13    # "tvw":Landroid/util/TypedValue;
    :cond_7
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 85
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v14, v0

    .restart local v14    # "w":I
    goto/16 :goto_2

    .line 87
    .end local v14    # "w":I
    :cond_8
    const/4 v14, 0x0

    .restart local v14    # "w":I
    goto/16 :goto_2

    .line 97
    .end local v13    # "tvw":Landroid/util/TypedValue;
    .end local v14    # "w":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/internal/WindowDecorView;->mFixedHeightMinor:Landroid/util/TypedValue;

    goto/16 :goto_3

    .line 102
    .restart local v12    # "tvh":Landroid/util/TypedValue;
    :cond_a
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 103
    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v4, v0

    .restart local v4    # "h":I
    goto/16 :goto_4

    .line 105
    .end local v4    # "h":I
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "h":I
    goto/16 :goto_4

    .line 121
    .end local v4    # "h":I
    .end local v12    # "tvh":Landroid/util/TypedValue;
    .restart local v5    # "height":I
    .restart local v8    # "measure":Z
    .restart local v15    # "width":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/internal/WindowDecorView;->mMinWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_5

    .line 126
    .restart local v11    # "tv":Landroid/util/TypedValue;
    :cond_d
    iget v0, v11, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 127
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v10, v0

    .restart local v10    # "min":I
    goto/16 :goto_6

    .line 129
    .end local v10    # "min":I
    :cond_e
    const/4 v10, 0x0

    .restart local v10    # "min":I
    goto/16 :goto_6

    .line 139
    .end local v10    # "min":I
    .end local v11    # "tv":Landroid/util/TypedValue;
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/internal/WindowDecorView;->mMinHeightMajor:Landroid/util/TypedValue;

    goto/16 :goto_7

    .line 144
    .restart local v11    # "tv":Landroid/util/TypedValue;
    :cond_10
    iget v0, v11, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 145
    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v10, v0

    .restart local v10    # "min":I
    goto/16 :goto_8

    .line 147
    .end local v10    # "min":I
    :cond_11
    const/4 v10, 0x0

    .restart local v10    # "min":I
    goto/16 :goto_8
.end method
