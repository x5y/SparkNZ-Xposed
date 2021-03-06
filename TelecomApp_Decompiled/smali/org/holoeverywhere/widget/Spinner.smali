.class public Lorg/holoeverywhere/widget/Spinner;
.super Lorg/holoeverywhere/widget/AbsSpinner;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/Spinner$1;,
        Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;,
        Lorg/holoeverywhere/widget/Spinner$DropdownPopup;,
        Lorg/holoeverywhere/widget/Spinner$DropDownAdapter;,
        Lorg/holoeverywhere/widget/Spinner$DialogPopup;
    }
.end annotation


# static fields
.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field public static final MODE_DIALOG:I = 0x0

.field public static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Spinner"


# instance fields
.field private mDisableChildrenWhenDisabled:Z

.field mDropDownWidth:I

.field private mGravity:I

.field private mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

.field private mTempAdapter:Lorg/holoeverywhere/widget/Spinner$DropDownAdapter;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 340
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 398
    const/4 v0, 0x0

    sget v1, Lorg/holoeverywhere/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/holoeverywhere/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 399
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 343
    sget v0, Lorg/holoeverywhere/R$attr;->spinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 344
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 347
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/holoeverywhere/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 348
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "mode"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 351
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 336
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lorg/holoeverywhere/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 352
    sget-object v4, Lorg/holoeverywhere/R$styleable;->Spinner:[I

    sget v5, Lorg/holoeverywhere/R$style;->Holo_Spinner:I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 354
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, -0x1

    if-ne p4, v4, :cond_0

    .line 355
    const/16 v4, 0x9

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    .line 358
    :cond_0
    packed-switch p4, :pswitch_data_0

    .line 385
    :goto_0
    const/16 v4, 0x11

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lorg/holoeverywhere/widget/Spinner;->mGravity:I

    .line 387
    iget-object v4, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 388
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lorg/holoeverywhere/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    .line 390
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 391
    iget-object v4, p0, Lorg/holoeverywhere/widget/Spinner;->mTempAdapter:Lorg/holoeverywhere/widget/Spinner$DropDownAdapter;

    if-eqz v4, :cond_1

    .line 392
    iget-object v4, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    iget-object v5, p0, Lorg/holoeverywhere/widget/Spinner;->mTempAdapter:Lorg/holoeverywhere/widget/Spinner$DropDownAdapter;

    invoke-interface {v4, v5}, Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 393
    iput-object v7, p0, Lorg/holoeverywhere/widget/Spinner;->mTempAdapter:Lorg/holoeverywhere/widget/Spinner$DropDownAdapter;

    .line 395
    :cond_1
    return-void

    .line 360
    :pswitch_0
    new-instance v4, Lorg/holoeverywhere/widget/Spinner$DialogPopup;

    invoke-direct {v4, p0, v7}, Lorg/holoeverywhere/widget/Spinner$DialogPopup;-><init>(Lorg/holoeverywhere/widget/Spinner;Lorg/holoeverywhere/widget/Spinner$1;)V

    iput-object v4, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    goto :goto_0

    .line 364
    :pswitch_1
    new-instance v2, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;-><init>(Lorg/holoeverywhere/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 365
    .local v2, "popup":Lorg/holoeverywhere/widget/Spinner$DropdownPopup;
    const/4 v4, 0x4

    const/4 v5, -0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, p0, Lorg/holoeverywhere/widget/Spinner;->mDropDownWidth:I

    .line 368
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 372
    .local v3, "verticalOffset":I
    if-eqz v3, :cond_2

    .line 373
    invoke-virtual {v2, v3}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->setVerticalOffset(I)V

    .line 375
    :cond_2
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 377
    .local v1, "horizontalOffset":I
    if-eqz v1, :cond_3

    .line 378
    invoke-virtual {v2, v1}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 380
    :cond_3
    iput-object v2, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$100(Lorg/holoeverywhere/widget/Spinner;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/Spinner;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private makeAndAddView(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 487
    iget-boolean v2, p0, Lorg/holoeverywhere/widget/Spinner;->mDataChanged:Z

    if-nez v2, :cond_0

    .line 488
    iget-object v2, p0, Lorg/holoeverywhere/widget/Spinner;->mRecycler:Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2, p1}, Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 489
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 490
    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/Spinner;->setUpChild(Landroid/view/View;)V

    move-object v1, v0

    .line 496
    .end local v0    # "child":Landroid/view/View;
    .local v1, "child":Landroid/view/View;
    :goto_0
    return-object v1

    .line 494
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lorg/holoeverywhere/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 495
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/Spinner;->setUpChild(Landroid/view/View;)V

    move-object v1, v0

    .line 496
    .end local v0    # "child":Landroid/view/View;
    .restart local v1    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private setUpChild(Landroid/view/View;)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 676
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 677
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_0

    .line 678
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 680
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v6}, Lorg/holoeverywhere/widget/Spinner;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 681
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->hasFocus()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 682
    iget-boolean v8, p0, Lorg/holoeverywhere/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v8, :cond_1

    .line 683
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->isEnabled()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 685
    :cond_1
    iget v8, p0, Lorg/holoeverywhere/widget/Spinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Lorg/holoeverywhere/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lorg/holoeverywhere/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 687
    .local v1, "childHeightSpec":I
    iget v8, p0, Lorg/holoeverywhere/widget/Spinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Lorg/holoeverywhere/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lorg/holoeverywhere/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 689
    .local v5, "childWidthSpec":I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 690
    const/4 v2, 0x0

    .line 691
    .local v2, "childLeft":I
    iget-object v8, p0, Lorg/holoeverywhere/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->getMeasuredHeight()I

    move-result v9

    iget-object v10, p0, Lorg/holoeverywhere/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lorg/holoeverywhere/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .line 694
    .local v4, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 695
    .local v0, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 696
    .local v7, "width":I
    add-int v3, v2, v7

    .line 697
    .local v3, "childRight":I
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 698
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 405
    invoke-virtual {p0, v4}, Lorg/holoeverywhere/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 411
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 413
    .local v1, "childBaseline":I
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    .line 415
    .end local v1    # "childBaseline":I
    :cond_1
    return v2

    .line 406
    :cond_2
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 407
    invoke-direct {p0, v4}, Lorg/holoeverywhere/widget/Spinner;->makeAndAddView(I)Landroid/view/View;

    move-result-object v0

    .line 408
    iget-object v3, p0, Lorg/holoeverywhere/widget/Spinner;->mRecycler:Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, v4, v0}, Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 409
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->removeAllViewsInLayout()V

    goto :goto_0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;->getVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lorg/holoeverywhere/widget/Spinner;->mDropDownWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lorg/holoeverywhere/widget/Spinner;->mGravity:I

    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public internalSetOnItemClickListener(Lorg/holoeverywhere/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Lorg/holoeverywhere/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 444
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/AbsSpinner;->setOnItemClickListener(Lorg/holoeverywhere/widget/AdapterView$OnItemClickListener;)V

    .line 445
    return-void
.end method

.method public layout(IZ)V
    .locals 8
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v7, 0x0

    .line 449
    iget-object v5, p0, Lorg/holoeverywhere/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 450
    .local v0, "childrenLeft":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lorg/holoeverywhere/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lorg/holoeverywhere/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v1, v5, v6

    .line 452
    .local v1, "childrenWidth":I
    iget-boolean v5, p0, Lorg/holoeverywhere/widget/Spinner;->mDataChanged:Z

    if-eqz v5, :cond_0

    .line 453
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->handleDataChanged()V

    .line 455
    :cond_0
    iget v5, p0, Lorg/holoeverywhere/widget/Spinner;->mItemCount:I

    if-nez v5, :cond_1

    .line 456
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->resetList()V

    .line 483
    :goto_0
    return-void

    .line 459
    :cond_1
    iget v5, p0, Lorg/holoeverywhere/widget/Spinner;->mNextSelectedPosition:I

    if-ltz v5, :cond_2

    .line 460
    iget v5, p0, Lorg/holoeverywhere/widget/Spinner;->mNextSelectedPosition:I

    invoke-virtual {p0, v5}, Lorg/holoeverywhere/widget/Spinner;->setSelectedPositionInt(I)V

    .line 462
    :cond_2
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->recycleAllViews()V

    .line 463
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->removeAllViewsInLayout()V

    .line 464
    iget v5, p0, Lorg/holoeverywhere/widget/Spinner;->mSelectedPosition:I

    iput v5, p0, Lorg/holoeverywhere/widget/Spinner;->mFirstPosition:I

    .line 465
    iget v5, p0, Lorg/holoeverywhere/widget/Spinner;->mSelectedPosition:I

    invoke-direct {p0, v5}, Lorg/holoeverywhere/widget/Spinner;->makeAndAddView(I)Landroid/view/View;

    move-result-object v2

    .line 466
    .local v2, "sel":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 467
    .local v4, "width":I
    move v3, v0

    .line 468
    .local v3, "selectedOffset":I
    iget v5, p0, Lorg/holoeverywhere/widget/Spinner;->mGravity:I

    and-int/lit8 v5, v5, 0x7

    sparse-switch v5, :sswitch_data_0

    .line 476
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 477
    iget-object v5, p0, Lorg/holoeverywhere/widget/Spinner;->mRecycler:Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v5}, Lorg/holoeverywhere/widget/AbsSpinner$RecycleBin;->clear()V

    .line 478
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->invalidate()V

    .line 479
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->checkSelectionChanged()V

    .line 480
    iput-boolean v7, p0, Lorg/holoeverywhere/widget/Spinner;->mDataChanged:Z

    .line 481
    iput-boolean v7, p0, Lorg/holoeverywhere/widget/Spinner;->mNeedSync:Z

    .line 482
    iget v5, p0, Lorg/holoeverywhere/widget/Spinner;->mSelectedPosition:I

    invoke-virtual {p0, v5}, Lorg/holoeverywhere/widget/Spinner;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 470
    :sswitch_0
    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    div-int/lit8 v6, v4, 0x2

    sub-int v3, v5, v6

    .line 471
    goto :goto_1

    .line 473
    :sswitch_1
    add-int v5, v0, v1

    sub-int v3, v5, v4

    goto :goto_1

    .line 468
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 13
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 500
    if-nez p1, :cond_1

    .line 501
    const/4 v8, 0x0

    .line 534
    :cond_0
    :goto_0
    return v8

    .line 503
    :cond_1
    const/4 v8, 0x0

    .line 504
    .local v8, "width":I
    const/4 v5, 0x0

    .line 505
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 506
    .local v4, "itemType":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 508
    .local v9, "widthMeasureSpec":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 510
    .local v2, "heightMeasureSpec":I
    const/4 v10, 0x0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->getSelectedItemPosition()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 511
    .local v7, "start":I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v10

    add-int/lit8 v11, v7, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 513
    .local v1, "end":I
    sub-int v0, v1, v7

    .line 514
    .local v0, "count":I
    const/4 v10, 0x0

    rsub-int/lit8 v11, v0, 0xf

    sub-int v11, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 515
    move v3, v7

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 516
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v6

    .line 517
    .local v6, "positionType":I
    if-eq v6, v4, :cond_2

    .line 518
    move v4, v6

    .line 519
    const/4 v5, 0x0

    .line 521
    :cond_2
    invoke-interface {p1, v3, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 522
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_3

    .line 523
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    :cond_3
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 528
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 515
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 530
    .end local v6    # "positionType":I
    :cond_4
    if-eqz p2, :cond_0

    .line 531
    iget-object v10, p0, Lorg/holoeverywhere/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 532
    iget-object v10, p0, Lorg/holoeverywhere/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lorg/holoeverywhere/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 539
    invoke-virtual {p0, p2}, Lorg/holoeverywhere/widget/Spinner;->setSelection(I)V

    .line 540
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 541
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 545
    invoke-super {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->onDetachedFromWindow()V

    .line 546
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;->dismiss()V

    .line 549
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 553
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/AbsSpinner;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 554
    const-class v0, Lorg/holoeverywhere/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 555
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 560
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/AbsSpinner;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 561
    const-class v0, Lorg/holoeverywhere/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 562
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v0, 0x0

    .line 566
    invoke-super/range {p0 .. p5}, Lorg/holoeverywhere/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 567
    invoke-virtual {p0, v0, v0}, Lorg/holoeverywhere/widget/Spinner;->layout(IZ)V

    .line 568
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 572
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/widget/AbsSpinner;->onMeasure(II)V

    .line 573
    iget-object v1, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 575
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->getMeasuredWidth()I

    move-result v0

    .line 576
    .local v0, "measuredWidth":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/holoeverywhere/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/holoeverywhere/widget/Spinner;->setMeasuredDimension(II)V

    .line 585
    .end local v0    # "measuredWidth":I
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 589
    invoke-super {p0}, Lorg/holoeverywhere/widget/AbsSpinner;->performClick()Z

    move-result v0

    .line 590
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 591
    const/4 v0, 0x1

    .line 592
    iget-object v1, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    invoke-interface {v1}, Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 593
    iget-object v1, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    invoke-interface {v1}, Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;->show()V

    .line 596
    :cond_0
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 26
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    .line 601
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 602
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    new-instance v1, Lorg/holoeverywhere/widget/Spinner$DropDownAdapter;

    invoke-direct {v1, p1}, Lorg/holoeverywhere/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {v0, v1}, Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 607
    :goto_0
    return-void

    .line 605
    :cond_0
    new-instance v0, Lorg/holoeverywhere/widget/Spinner$DropDownAdapter;

    invoke-direct {v0, p1}, Lorg/holoeverywhere/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/Spinner;->mTempAdapter:Lorg/holoeverywhere/widget/Spinner$DropDownAdapter;

    goto :goto_0
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 610
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;->setHorizontalOffset(I)V

    .line 611
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 614
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;->setVerticalOffset(I)V

    .line 615
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 2
    .param p1, "pixels"    # I

    .prologue
    .line 618
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    instance-of v0, v0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;

    if-nez v0, :cond_0

    .line 619
    const-string v0, "Spinner"

    const-string v1, "Cannot set dropdown width for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :goto_0
    return-void

    .line 623
    :cond_0
    iput p1, p0, Lorg/holoeverywhere/widget/Spinner;->mDropDownWidth:I

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 628
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/AbsSpinner;->setEnabled(Z)V

    .line 629
    iget-boolean v2, p0, Lorg/holoeverywhere/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v2, :cond_0

    .line 630
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->getChildCount()I

    move-result v0

    .line 631
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 632
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 631
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 635
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 638
    iget v0, p0, Lorg/holoeverywhere/widget/Spinner;->mGravity:I

    if-eq v0, p1, :cond_1

    .line 639
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 640
    or-int/lit8 p1, p1, 0x3

    .line 642
    :cond_0
    iput p1, p0, Lorg/holoeverywhere/widget/Spinner;->mGravity:I

    .line 643
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->requestLayout()V

    .line 645
    :cond_1
    return-void
.end method

.method public setOnItemClickListener(Lorg/holoeverywhere/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .param p1, "l"    # Lorg/holoeverywhere/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 649
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 654
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    instance-of v0, v0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;

    if-nez v0, :cond_0

    .line 655
    const-string v0, "Spinner"

    const-string v1, "setPopupBackgroundDrawable: incompatible spinner mode; ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    check-cast v0, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/Spinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 663
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 665
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    .prologue
    .line 668
    iget-object v0, p0, Lorg/holoeverywhere/widget/Spinner;->mPopup:Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Lorg/holoeverywhere/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 669
    return-void
.end method

.method public setPromptId(I)V
    .locals 1
    .param p1, "promptId"    # I

    .prologue
    .line 672
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 673
    return-void
.end method
