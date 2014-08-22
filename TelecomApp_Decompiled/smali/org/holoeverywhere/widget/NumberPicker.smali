.class public Lorg/holoeverywhere/widget/NumberPicker;
.super Lorg/holoeverywhere/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;,
        Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;,
        Lorg/holoeverywhere/widget/NumberPicker$OnValueChangeListener;,
        Lorg/holoeverywhere/widget/NumberPicker$OnScrollListener;,
        Lorg/holoeverywhere/widget/NumberPicker$InputTextFilter;,
        Lorg/holoeverywhere/widget/NumberPicker$Formatter;,
        Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lorg/holoeverywhere/widget/NumberPicker$BeginSoftInputOnLongPressCommand;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field public static final FOCUSABLES_ACCESSIBILITY:I = 0x2

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SELECTOR_WHELL_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field public static final TWO_DIGIT_FORMATTER:Lorg/holoeverywhere/widget/NumberPicker$Formatter;

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2


# instance fields
.field private final mAdjustScroller:Lorg/holoeverywhere/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lorg/holoeverywhere/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Lorg/holoeverywhere/widget/Scroller;

.field private mFormatter:Lorg/holoeverywhere/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lorg/holoeverywhere/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lorg/holoeverywhere/widget/NumberPicker$OnValueChangeListener;

.field private final mPressedStateHelper:Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;

.field private mShowSoftInputOnTap:Z

.field private final mSolidColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    sget v0, Lorg/holoeverywhere/R$layout;->number_picker_with_selector_wheel:I

    sput v0, Lorg/holoeverywhere/widget/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    .line 228
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/holoeverywhere/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 240
    new-instance v0, Lorg/holoeverywhere/widget/NumberPicker$1;

    invoke-direct {v0}, Lorg/holoeverywhere/widget/NumberPicker$1;-><init>()V

    sput-object v0, Lorg/holoeverywhere/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lorg/holoeverywhere/widget/NumberPicker$Formatter;

    return-void

    .line 228
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 313
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 316
    sget v0, Lorg/holoeverywhere/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 317
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 321
    invoke-direct/range {p0 .. p3}, Lorg/holoeverywhere/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 273
    const/high16 v13, -0x80000000

    move-object/from16 v0, p0

    iput v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mInitialScrollOffset:I

    .line 278
    const-wide/16 v13, 0x12c

    move-object/from16 v0, p0

    iput-wide v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 291
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mScrollState:I

    .line 296
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 297
    const/4 v13, 0x3

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorIndices:[I

    .line 322
    sget-object v13, Lorg/holoeverywhere/R$styleable;->NumberPicker:[I

    sget v14, Lorg/holoeverywhere/R$style;->Holo_NumberPicker:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 324
    .local v3, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v13, 0x2

    sget v14, Lorg/holoeverywhere/widget/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 327
    .local v9, "layoutResId":I
    sget v13, Lorg/holoeverywhere/widget/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    if-ne v9, v13, :cond_0

    const/4 v13, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 328
    const/16 v13, 0xb

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mSolidColor:I

    .line 330
    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 332
    const/4 v13, 0x1

    const/high16 v14, 0x40000000

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    float-to-int v8, v13

    .line 336
    .local v8, "defSelectionDividerHeight":I
    const/16 v13, 0x9

    invoke-virtual {v3, v13, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 339
    const/4 v13, 0x1

    const/high16 v14, 0x42400000

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    float-to-int v7, v13

    .line 344
    .local v7, "defSelectionDividerDistance":I
    const/16 v13, 0xa

    invoke-virtual {v3, v13, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 347
    const/4 v13, 0x6

    const/4 v14, -0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mMinHeight:I

    .line 350
    const/4 v13, 0x4

    const/4 v14, -0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxHeight:I

    .line 353
    move-object/from16 v0, p0

    iget v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mMinHeight:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxHeight:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mMinHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxHeight:I

    if-le v13, v14, :cond_1

    .line 356
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "minHeight > maxHeight"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 327
    .end local v7    # "defSelectionDividerDistance":I
    .end local v8    # "defSelectionDividerHeight":I
    :cond_0
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 358
    .restart local v7    # "defSelectionDividerDistance":I
    .restart local v8    # "defSelectionDividerHeight":I
    :cond_1
    const/4 v13, 0x5

    const/4 v14, -0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mMinWidth:I

    .line 361
    const/4 v13, 0x3

    const/4 v14, -0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxWidth:I

    .line 364
    move-object/from16 v0, p0

    iget v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mMinWidth:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxWidth:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mMinWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxWidth:I

    if-le v13, v14, :cond_2

    .line 367
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "minWidth > maxWidth"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 369
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxWidth:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 370
    const/16 v13, 0xc

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 372
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 373
    new-instance v13, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;-><init>(Lorg/holoeverywhere/widget/NumberPicker;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mPressedStateHelper:Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;

    .line 374
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v13, :cond_7

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/holoeverywhere/widget/NumberPicker;->setWillNotDraw(Z)V

    .line 375
    const/4 v13, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v9, v1, v13}, Lorg/holoeverywhere/LayoutInflater;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 376
    new-instance v10, Lorg/holoeverywhere/widget/NumberPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lorg/holoeverywhere/widget/NumberPicker$2;-><init>(Lorg/holoeverywhere/widget/NumberPicker;)V

    .line 388
    .local v10, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v11, Lorg/holoeverywhere/widget/NumberPicker$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/holoeverywhere/widget/NumberPicker$3;-><init>(Lorg/holoeverywhere/widget/NumberPicker;)V

    .line 401
    .local v11, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v13, :cond_8

    .line 402
    sget v13, Lorg/holoeverywhere/R$id;->increment:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/holoeverywhere/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 403
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    if-eqz v13, :cond_3

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v13, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v13, v11}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 410
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v13, :cond_9

    .line 411
    sget v13, Lorg/holoeverywhere/R$id;->decrement:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/holoeverywhere/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 412
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    if-eqz v13, :cond_4

    .line 413
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v13, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v13, v11}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 419
    :cond_4
    :goto_4
    sget v13, Lorg/holoeverywhere/R$id;->numberpicker_input:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/holoeverywhere/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lorg/holoeverywhere/internal/NumberPickerEditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    .line 420
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    new-instance v14, Lorg/holoeverywhere/widget/NumberPicker$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/holoeverywhere/widget/NumberPicker$4;-><init>(Lorg/holoeverywhere/widget/NumberPicker;)V

    invoke-virtual {v13, v14}, Lorg/holoeverywhere/internal/NumberPickerEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    const/4 v14, 0x1

    new-array v14, v14, [Landroid/text/InputFilter;

    const/4 v15, 0x0

    new-instance v16, Lorg/holoeverywhere/widget/NumberPicker$InputTextFilter;

    invoke-direct/range {v16 .. v17}, Lorg/holoeverywhere/widget/NumberPicker$InputTextFilter;-><init>(Lorg/holoeverywhere/widget/NumberPicker;)V

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Lorg/holoeverywhere/internal/NumberPickerEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lorg/holoeverywhere/internal/NumberPickerEditText;->setRawInputType(I)V

    .line 435
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    const/4 v14, 0x6

    invoke-virtual {v13, v14}, Lorg/holoeverywhere/internal/NumberPickerEditText;->setImeOptions(I)V

    .line 436
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 437
    .local v6, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mTouchSlop:I

    .line 438
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 439
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v13

    div-int/lit8 v13, v13, 0x8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 441
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v13}, Lorg/holoeverywhere/internal/NumberPickerEditText;->getTextSize()F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mTextSize:I

    .line 442
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 443
    .local v12, "paint":Landroid/graphics/Paint;
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 444
    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 445
    move-object/from16 v0, p0

    iget v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mTextSize:I

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 446
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v13}, Lorg/holoeverywhere/internal/NumberPickerEditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 447
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v13}, Lorg/holoeverywhere/internal/NumberPickerEditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 448
    .local v5, "colors":Landroid/content/res/ColorStateList;
    sget-object v13, Landroid/view/View;->ENABLED_STATE_SET:[I

    const/4 v14, -0x1

    invoke-virtual {v5, v13, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 450
    .local v4, "color":I
    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 451
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 452
    new-instance v13, Lorg/holoeverywhere/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-direct/range {v13 .. v16}, Lorg/holoeverywhere/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mFlingScroller:Lorg/holoeverywhere/widget/Scroller;

    .line 453
    new-instance v13, Lorg/holoeverywhere/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v16, 0x40200000

    invoke-direct/range {v15 .. v16}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v13, v14, v15}, Lorg/holoeverywhere/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mAdjustScroller:Lorg/holoeverywhere/widget/Scroller;

    .line 455
    invoke-direct/range {p0 .. p0}, Lorg/holoeverywhere/widget/NumberPicker;->updateInputTextView()Z

    .line 456
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x10

    if-lt v13, v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/NumberPicker;->getImportantForAccessibility()I

    move-result v13

    if-nez v13, :cond_5

    .line 458
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/holoeverywhere/widget/NumberPicker;->setImportantForAccessibility(I)V

    .line 460
    :cond_5
    return-void

    .line 369
    .end local v4    # "color":I
    .end local v5    # "colors":Landroid/content/res/ColorStateList;
    .end local v6    # "configuration":Landroid/view/ViewConfiguration;
    .end local v10    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v11    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .end local v12    # "paint":Landroid/graphics/Paint;
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 374
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 408
    .restart local v10    # "onClickListener":Landroid/view/View$OnClickListener;
    .restart local v11    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_3

    .line 417
    :cond_9
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_4
.end method

.method static synthetic access$000(Lorg/holoeverywhere/widget/NumberPicker;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->showSoftInput()V

    return-void
.end method

.method static synthetic access$1000(Lorg/holoeverywhere/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;

    .prologue
    .line 41
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$102(Lorg/holoeverywhere/widget/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mIngonreMoveEvents:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/holoeverywhere/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;

    .prologue
    .line 41
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1102(Lorg/holoeverywhere/widget/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1180(Lorg/holoeverywhere/widget/NumberPicker;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/holoeverywhere/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;

    .prologue
    .line 41
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$1300(Lorg/holoeverywhere/widget/NumberPicker;)Lorg/holoeverywhere/internal/NumberPickerEditText;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/holoeverywhere/widget/NumberPicker;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$1500(Lorg/holoeverywhere/widget/NumberPicker;ZJ)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$1600(Lorg/holoeverywhere/widget/NumberPicker;Lorg/holoeverywhere/internal/NumberPickerEditText;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;
    .param p1, "x1"    # Lorg/holoeverywhere/internal/NumberPickerEditText;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/NumberPicker;->validateInputTextView(Lorg/holoeverywhere/internal/NumberPickerEditText;)V

    return-void
.end method

.method static synthetic access$200(Lorg/holoeverywhere/widget/NumberPicker;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/holoeverywhere/widget/NumberPicker;)J
    .locals 2
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;

    .prologue
    .line 41
    iget-wide v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/holoeverywhere/widget/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/holoeverywhere/widget/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/holoeverywhere/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;

    .prologue
    .line 41
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$700(Lorg/holoeverywhere/widget/NumberPicker;II)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/holoeverywhere/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$800()[C
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/holoeverywhere/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$900(Lorg/holoeverywhere/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;

    .prologue
    .line 41
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$902(Lorg/holoeverywhere/widget/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$980(Lorg/holoeverywhere/widget/NumberPicker;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 473
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/holoeverywhere/internal/NumberPickerEditText;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mFlingScroller:Lorg/holoeverywhere/widget/Scroller;

    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/NumberPicker;->moveToFinalScrollerPosition(Lorg/holoeverywhere/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mAdjustScroller:Lorg/holoeverywhere/widget/Scroller;

    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/NumberPicker;->moveToFinalScrollerPosition(Lorg/holoeverywhere/widget/Scroller;)Z

    .line 478
    :cond_0
    iput v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mPreviousScrollerY:I

    .line 479
    if-eqz p1, :cond_1

    .line 480
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mFlingScroller:Lorg/holoeverywhere/widget/Scroller;

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lorg/holoeverywhere/widget/Scroller;->startScroll(IIIII)V

    .line 486
    :goto_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->invalidate()V

    .line 494
    :goto_1
    return-void

    .line 483
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mFlingScroller:Lorg/holoeverywhere/widget/Scroller;

    iget v4, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lorg/holoeverywhere/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 488
    :cond_2
    if-eqz p1, :cond_3

    .line 489
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 491
    :cond_3
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 520
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 521
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 520
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 523
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 524
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 525
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    .line 527
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 528
    invoke-direct {p0, v1}, Lorg/holoeverywhere/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 529
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 603
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 604
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 605
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 619
    :goto_0
    return-void

    .line 608
    :cond_0
    iget v3, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 609
    :cond_1
    const-string v2, ""

    .line 618
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 611
    :cond_2
    iget-object v3, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 612
    iget v3, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 613
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 614
    goto :goto_1

    .line 615
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 622
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 623
    .local v4, "deltaY":I
    if-eqz v4, :cond_1

    .line 624
    iput v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mPreviousScrollerY:I

    .line 625
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 626
    if-lez v4, :cond_2

    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 629
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mAdjustScroller:Lorg/holoeverywhere/widget/Scroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lorg/holoeverywhere/widget/Scroller;->startScroll(IIIII)V

    .line 631
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->invalidate()V

    .line 632
    const/4 v1, 0x1

    .line 634
    :cond_1
    return v1

    .line 626
    :cond_2
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorElementHeight:I

    goto :goto_0
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 638
    iput v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mPreviousScrollerY:I

    .line 639
    if-lez p1, :cond_0

    .line 640
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mFlingScroller:Lorg/holoeverywhere/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lorg/holoeverywhere/widget/Scroller;->fling(IIIIIIII)V

    .line 646
    :goto_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->invalidate()V

    .line 647
    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mFlingScroller:Lorg/holoeverywhere/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lorg/holoeverywhere/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 650
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mFormatter:Lorg/holoeverywhere/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mFormatter:Lorg/holoeverywhere/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lorg/holoeverywhere/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 676
    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 677
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 678
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 679
    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    .line 688
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 677
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    .end local v0    # "i":I
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 686
    :catch_0
    move-exception v1

    .line 688
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    goto :goto_1
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 706
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 707
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 713
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 709
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 710
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 721
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 723
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 726
    iget-boolean v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 727
    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/internal/NumberPickerEditText;->setVisibility(I)V

    .line 730
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 733
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 734
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 736
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 737
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 738
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    .line 740
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 741
    invoke-direct {p0, v1}, Lorg/holoeverywhere/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 742
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 745
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 746
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/NumberPicker;->setFadingEdgeLength(I)V

    .line 747
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 750
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 751
    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorIndices:[I

    .line 752
    .local v1, "selectorIndices":[I
    array-length v5, v1

    iget v6, p0, Lorg/holoeverywhere/widget/NumberPicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 753
    .local v4, "totalTextHeight":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 754
    .local v3, "totalTextGapHeight":F
    array-length v5, v1

    int-to-float v2, v5

    .line 755
    .local v2, "textGapCount":F
    div-float v5, v3, v2

    const/high16 v6, 0x3f000000

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 756
    iget v5, p0, Lorg/holoeverywhere/widget/NumberPicker;->mTextSize:I

    iget v6, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorElementHeight:I

    .line 757
    iget-object v5, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v5}, Lorg/holoeverywhere/internal/NumberPickerEditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v6}, Lorg/holoeverywhere/internal/NumberPickerEditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 759
    .local v0, "editTextTextPosition":I
    iget v5, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v0, v5

    iput v5, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInitialScrollOffset:I

    .line 761
    iget v5, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Lorg/holoeverywhere/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 762
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->updateInputTextView()Z

    .line 763
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 766
    iget-object v4, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 767
    iget-object v3, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorIndices:[I

    .line 768
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->getValue()I

    move-result v0

    .line 769
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 770
    add-int v4, v0, v1

    add-int/lit8 v2, v4, -0x1

    .line 772
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Lorg/holoeverywhere/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 773
    invoke-direct {p0, v2}, Lorg/holoeverywhere/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 775
    :cond_0
    aput v2, v3, v1

    .line 776
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lorg/holoeverywhere/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 769
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 778
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000

    .line 781
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 793
    .end local p1    # "measureSpec":I
    :goto_0
    :sswitch_0
    return p1

    .line 784
    .restart local p1    # "measureSpec":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 785
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 786
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 795
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 790
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 793
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 786
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Lorg/holoeverywhere/widget/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Lorg/holoeverywhere/widget/Scroller;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 800
    invoke-virtual {p1, v3}, Lorg/holoeverywhere/widget/Scroller;->forceFinished(Z)V

    .line 801
    invoke-virtual {p1}, Lorg/holoeverywhere/widget/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Lorg/holoeverywhere/widget/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 802
    .local v0, "amountToScroll":I
    iget v5, p0, Lorg/holoeverywhere/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 804
    .local v1, "futureScrollOffset":I
    iget v5, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 805
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_2

    .line 806
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 807
    if-lez v2, :cond_1

    .line 808
    iget v5, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 813
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 814
    invoke-virtual {p0, v4, v0}, Lorg/holoeverywhere/widget/NumberPicker;->scrollBy(II)V

    .line 817
    :goto_1
    return v3

    .line 810
    :cond_1
    iget v5, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 817
    goto :goto_1
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 821
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mOnValueChangeListener:Lorg/holoeverywhere/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mOnValueChangeListener:Lorg/holoeverywhere/widget/NumberPicker$OnValueChangeListener;

    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lorg/holoeverywhere/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lorg/holoeverywhere/widget/NumberPicker;II)V

    .line 824
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 1001
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 1004
    :cond_1
    iput p1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mScrollState:I

    .line 1005
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mOnScrollListener:Lorg/holoeverywhere/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mOnScrollListener:Lorg/holoeverywhere/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lorg/holoeverywhere/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Lorg/holoeverywhere/widget/NumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Lorg/holoeverywhere/widget/Scroller;)V
    .locals 2
    .param p1, "scroller"    # Lorg/holoeverywhere/widget/Scroller;

    .prologue
    .line 988
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mFlingScroller:Lorg/holoeverywhere/widget/Scroller;

    if-ne p1, v0, :cond_2

    .line 989
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 990
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->updateInputTextView()Z

    .line 992
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/NumberPicker;->onScrollStateChange(I)V

    .line 998
    :cond_1
    :goto_0
    return-void

    .line 994
    :cond_2
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 995
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .prologue
    .line 1086
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lorg/holoeverywhere/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 1087
    new-instance v0, Lorg/holoeverywhere/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lorg/holoeverywhere/widget/NumberPicker;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lorg/holoeverywhere/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 1091
    :goto_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lorg/holoeverywhere/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1093
    return-void

    .line 1089
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lorg/holoeverywhere/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 1097
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1098
    new-instance v0, Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lorg/holoeverywhere/widget/NumberPicker;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1102
    :goto_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    # invokes: Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V
    invoke-static {v0, p1}, Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$1700(Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1103
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lorg/holoeverywhere/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1104
    return-void

    .line 1100
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 1107
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSetSelectionCommand:Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 1108
    new-instance v0, Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;-><init>(Lorg/holoeverywhere/widget/NumberPicker;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSetSelectionCommand:Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;

    .line 1112
    :goto_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSetSelectionCommand:Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;

    # setter for: Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;->access$1802(Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1113
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSetSelectionCommand:Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;

    # setter for: Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;->access$1902(Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1114
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSetSelectionCommand:Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1115
    return-void

    .line 1110
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSetSelectionCommand:Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1121
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSetSelectionCommand:Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 1122
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSetSelectionCommand:Lorg/holoeverywhere/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1124
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lorg/holoeverywhere/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 1125
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lorg/holoeverywhere/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1127
    :cond_2
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mPressedStateHelper:Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 1128
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lorg/holoeverywhere/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lorg/holoeverywhere/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1134
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/holoeverywhere/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1140
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1144
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1145
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1146
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lorg/holoeverywhere/internal/_View;->supportResolveSizeAndState(III)I

    move-result p2

    .line 1149
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 1286
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1303
    :goto_0
    return-void

    .line 1289
    :cond_0
    iget-boolean v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 1290
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1295
    :goto_1
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mValue:I

    .line 1296
    .local v0, "previous":I
    iput p1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mValue:I

    .line 1297
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->updateInputTextView()Z

    .line 1298
    if-eqz p2, :cond_1

    .line 1299
    invoke-direct {p0, v0, p1}, Lorg/holoeverywhere/widget/NumberPicker;->notifyChange(II)V

    .line 1301
    :cond_1
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1302
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1292
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1293
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method

.method private showSoftInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1314
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1316
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1317
    iget-boolean v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1318
    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v1, v3}, Lorg/holoeverywhere/internal/NumberPickerEditText;->setVisibility(I)V

    .line 1320
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v1}, Lorg/holoeverywhere/internal/NumberPickerEditText;->requestFocus()Z

    .line 1321
    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1323
    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1326
    iget-boolean v8, p0, Lorg/holoeverywhere/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1366
    :cond_0
    :goto_0
    return-void

    .line 1329
    :cond_1
    const/4 v4, 0x0

    .line 1330
    .local v4, "maxTextWidth":I
    iget-object v8, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1331
    const/4 v3, 0x0

    .line 1332
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1333
    iget-object v8, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1335
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1336
    move v3, v1

    .line 1332
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1339
    .end local v1    # "digitWidth":F
    :cond_3
    const/4 v5, 0x0

    .line 1340
    .local v5, "numberOfDigits":I
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    .line 1341
    .local v0, "current":I
    :goto_2
    if-lez v0, :cond_4

    .line 1342
    add-int/lit8 v5, v5, 0x1

    .line 1343
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1345
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1356
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v5    # "numberOfDigits":I
    :cond_5
    iget-object v8, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v8}, Lorg/holoeverywhere/internal/NumberPickerEditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v9}, Lorg/holoeverywhere/internal/NumberPickerEditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1358
    iget v8, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1359
    iget v8, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1360
    iput v4, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxWidth:I

    .line 1364
    :goto_3
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1347
    .end local v2    # "i":I
    :cond_6
    iget-object v8, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1348
    .local v7, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1349
    iget-object v8, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1351
    .local v6, "textWidth":F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1352
    float-to-int v4, v6

    .line 1348
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1362
    .end local v6    # "textWidth":F
    .end local v7    # "valueCount":I
    :cond_8
    iget v8, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinWidth:I

    iput v8, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateInputTextView()Z
    .locals 4

    .prologue
    .line 1369
    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v1}, Lorg/holoeverywhere/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 1371
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v1}, Lorg/holoeverywhere/internal/NumberPickerEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1373
    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v1, v0}, Lorg/holoeverywhere/internal/NumberPickerEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    const/4 v1, 0x1

    .line 1376
    :goto_1
    return v1

    .line 1369
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mValue:I

    iget v3, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_0

    .line 1376
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private validateInputTextView(Lorg/holoeverywhere/internal/NumberPickerEditText;)V
    .locals 3
    .param p1, "v"    # Lorg/holoeverywhere/internal/NumberPickerEditText;

    .prologue
    .line 1380
    invoke-virtual {p1}, Lorg/holoeverywhere/internal/NumberPickerEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1381
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1382
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->updateInputTextView()Z

    .line 1387
    :goto_0
    return-void

    .line 1384
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/holoeverywhere/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1385
    .local v0, "current":I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 466
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    :goto_0
    return-void

    .line 469
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/LinearLayout;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 498
    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mFlingScroller:Lorg/holoeverywhere/widget/Scroller;

    .line 499
    .local v1, "scroller":Lorg/holoeverywhere/widget/Scroller;
    invoke-virtual {v1}, Lorg/holoeverywhere/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mAdjustScroller:Lorg/holoeverywhere/widget/Scroller;

    .line 501
    invoke-virtual {v1}, Lorg/holoeverywhere/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-virtual {v1}, Lorg/holoeverywhere/widget/Scroller;->computeScrollOffset()Z

    .line 506
    invoke-virtual {v1}, Lorg/holoeverywhere/widget/Scroller;->getCurrY()I

    move-result v0

    .line 507
    .local v0, "currentScrollerY":I
    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 508
    invoke-virtual {v1}, Lorg/holoeverywhere/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mPreviousScrollerY:I

    .line 510
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lorg/holoeverywhere/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lorg/holoeverywhere/widget/NumberPicker;->scrollBy(II)V

    .line 511
    iput v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mPreviousScrollerY:I

    .line 512
    invoke-virtual {v1}, Lorg/holoeverywhere/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    invoke-direct {p0, v1}, Lorg/holoeverywhere/widget/NumberPicker;->onScrollerFinished(Lorg/holoeverywhere/widget/Scroller;)V

    goto :goto_0

    .line 515
    :cond_2
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x100

    const/16 v4, 0x80

    const/16 v3, 0x40

    const/16 v2, 0x10

    .line 534
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 535
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 565
    :goto_0
    return v0

    .line 537
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 565
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 541
    :pswitch_1
    invoke-virtual {p0, v4}, Lorg/holoeverywhere/widget/NumberPicker;->sendAccessibilityEvent(I)V

    .line 542
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    .line 543
    invoke-virtual {p0, v3, v6}, Lorg/holoeverywhere/widget/NumberPicker;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 550
    :pswitch_2
    invoke-virtual {p0, v5}, Lorg/holoeverywhere/widget/NumberPicker;->sendAccessibilityEvent(I)V

    .line 551
    invoke-virtual {p0, v4}, Lorg/holoeverywhere/widget/NumberPicker;->sendAccessibilityEvent(I)V

    .line 552
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    .line 553
    invoke-virtual {p0, v3, v6}, Lorg/holoeverywhere/widget/NumberPicker;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 560
    :pswitch_3
    invoke-virtual {p0, v5}, Lorg/holoeverywhere/widget/NumberPicker;->sendAccessibilityEvent(I)V

    goto :goto_1

    .line 539
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 570
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 571
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    .line 577
    :goto_0
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 574
    :sswitch_0
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 571
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 588
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 585
    :pswitch_1
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 582
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 599
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 596
    :pswitch_1
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 593
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 656
    const v0, 0x3f666666

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getInputField()Lorg/holoeverywhere/internal/NumberPickerEditText;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 698
    const v0, 0x3f666666

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 717
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 828
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->removeAllCallbacks()V

    .line 829
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 833
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v11, :cond_1

    .line 834
    invoke-super/range {p0 .. p1}, Lorg/holoeverywhere/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/NumberPicker;->getRight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/NumberPicker;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    int-to-float v9, v11

    .line 838
    .local v9, "x":F
    move-object/from16 v0, p0

    iget v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v10, v11

    .line 839
    .local v10, "y":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mScrollState:I

    if-nez v11, :cond_3

    .line 841
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    if-eqz v11, :cond_2

    .line 843
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v12, Lorg/holoeverywhere/internal/_View;->PRESSED_STATE_SET:[I

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 845
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/NumberPicker;->getRight()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lorg/holoeverywhere/widget/NumberPicker;->mTopSelectionDividerTop:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 847
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 849
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    if-eqz v11, :cond_3

    .line 850
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v12, Lorg/holoeverywhere/internal/_View;->PRESSED_STATE_SET:[I

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 852
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lorg/holoeverywhere/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/NumberPicker;->getRight()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/NumberPicker;->getBottom()I

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 854
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 857
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorIndices:[I

    .line 858
    .local v6, "selectorIndices":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v11, v6

    if-ge v3, v11, :cond_6

    .line 859
    aget v5, v6, v3

    .line 860
    .local v5, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 862
    .local v4, "scrollSelectorValue":Ljava/lang/String;
    const/4 v11, 0x1

    if-ne v3, v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v11}, Lorg/holoeverywhere/internal/NumberPickerEditText;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_5

    .line 864
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 866
    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 858
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 868
    .end local v4    # "scrollSelectorValue":Ljava/lang/String;
    .end local v5    # "selectorIndex":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_0

    .line 869
    move-object/from16 v0, p0

    iget v8, v0, Lorg/holoeverywhere/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 870
    .local v8, "topOfTopDivider":I
    move-object/from16 v0, p0

    iget v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectionDividerHeight:I

    add-int v2, v8, v11

    .line 871
    .local v2, "bottomOfTopDivider":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/NumberPicker;->getRight()I

    move-result v13

    invoke-virtual {v11, v12, v8, v13, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 873
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 874
    move-object/from16 v0, p0

    iget v1, v0, Lorg/holoeverywhere/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 875
    .local v1, "bottomOfBottomDivider":I
    move-object/from16 v0, p0

    iget v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int v7, v1, v11

    .line 877
    .local v7, "topOfBottomDivider":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/NumberPicker;->getRight()I

    move-result v13

    invoke-virtual {v11, v12, v7, v13, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 879
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 886
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 887
    const-class v0, Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 888
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 889
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 890
    iget v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 891
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 895
    iget-boolean v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 940
    :goto_0
    return v0

    .line 898
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 940
    goto :goto_0

    .line 900
    :pswitch_0
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->removeAllCallbacks()V

    .line 901
    iget-object v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/holoeverywhere/internal/NumberPickerEditText;->setVisibility(I)V

    .line 902
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mLastDownEventY:F

    iput v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 903
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mLastDownEventTime:J

    .line 904
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mIngonreMoveEvents:Z

    .line 905
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 906
    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Lorg/holoeverywhere/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 907
    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mScrollState:I

    if-nez v2, :cond_2

    .line 908
    iget-object v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mPressedStateHelper:Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 917
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 918
    iget-object v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mFlingScroller:Lorg/holoeverywhere/widget/Scroller;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 919
    iget-object v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mFlingScroller:Lorg/holoeverywhere/widget/Scroller;

    invoke-virtual {v2, v0}, Lorg/holoeverywhere/widget/Scroller;->forceFinished(Z)V

    .line 920
    iget-object v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mAdjustScroller:Lorg/holoeverywhere/widget/Scroller;

    invoke-virtual {v2, v0}, Lorg/holoeverywhere/widget/Scroller;->forceFinished(Z)V

    .line 921
    invoke-direct {p0, v1}, Lorg/holoeverywhere/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 911
    :cond_3
    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Lorg/holoeverywhere/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 912
    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mScrollState:I

    if-nez v2, :cond_2

    .line 913
    iget-object v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mPressedStateHelper:Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v2, v0}, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_1

    .line 922
    :cond_4
    iget-object v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mAdjustScroller:Lorg/holoeverywhere/widget/Scroller;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 923
    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mFlingScroller:Lorg/holoeverywhere/widget/Scroller;

    invoke-virtual {v1, v0}, Lorg/holoeverywhere/widget/Scroller;->forceFinished(Z)V

    .line 924
    iget-object v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mAdjustScroller:Lorg/holoeverywhere/widget/Scroller;

    invoke-virtual {v1, v0}, Lorg/holoeverywhere/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 925
    :cond_5
    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Lorg/holoeverywhere/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 926
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->hideSoftInput()V

    .line 927
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lorg/holoeverywhere/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 929
    :cond_6
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mLastDownEventY:F

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 930
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->hideSoftInput()V

    .line 931
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, v0, v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 934
    :cond_7
    iput-boolean v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 935
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    goto/16 :goto_0

    .line 898
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 946
    iget-boolean v8, p0, Lorg/holoeverywhere/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v8, :cond_1

    .line 947
    invoke-super/range {p0 .. p5}, Lorg/holoeverywhere/widget/LinearLayout;->onLayout(ZIIII)V

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->getMeasuredWidth()I

    move-result v7

    .line 951
    .local v7, "msrdWdth":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->getMeasuredHeight()I

    move-result v6

    .line 952
    .local v6, "msrdHght":I
    iget-object v8, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v8}, Lorg/holoeverywhere/internal/NumberPickerEditText;->getMeasuredWidth()I

    move-result v3

    .line 953
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v8}, Lorg/holoeverywhere/internal/NumberPickerEditText;->getMeasuredHeight()I

    move-result v2

    .line 954
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 955
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 956
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 957
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 958
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Lorg/holoeverywhere/internal/NumberPickerEditText;->layout(IIII)V

    .line 959
    if-eqz p1, :cond_0

    .line 960
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->initializeSelectorWheel()V

    .line 961
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->initializeFadingEdges()V

    .line 962
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->getHeight()I

    move-result v8

    iget v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/holoeverywhere/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 964
    iget v8, p0, Lorg/holoeverywhere/widget/NumberPicker;->mTopSelectionDividerTop:I

    iget v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectionDividersDistance:I

    add-int/2addr v8, v9

    iput v8, p0, Lorg/holoeverywhere/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 971
    iget-boolean v4, p0, Lorg/holoeverywhere/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 972
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/widget/LinearLayout;->onMeasure(II)V

    .line 985
    :goto_0
    return-void

    .line 975
    :cond_0
    iget v4, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lorg/holoeverywhere/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 977
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lorg/holoeverywhere/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 979
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Lorg/holoeverywhere/widget/LinearLayout;->onMeasure(II)V

    .line 980
    iget v4, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lorg/holoeverywhere/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 982
    .local v3, "widthSize":I
    iget v4, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lorg/holoeverywhere/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 984
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Lorg/holoeverywhere/widget/NumberPicker;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1012
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v9, :cond_1

    .line 1013
    :cond_0
    const/4 v9, 0x0

    .line 1082
    :goto_0
    return v9

    .line 1015
    :cond_1
    iget-object v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_2

    .line 1016
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1018
    :cond_2
    iget-object v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1019
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    packed-switch v9, :pswitch_data_0

    .line 1082
    :cond_3
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 1021
    :pswitch_0
    iget-boolean v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mIngonreMoveEvents:Z

    if-nez v9, :cond_3

    .line 1024
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 1025
    .local v0, "currentMoveY":F
    iget v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mScrollState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_5

    .line 1026
    iget v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mLastDownEventY:F

    sub-float v9, v0, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v1, v9

    .line 1027
    .local v1, "deltaDownY":I
    iget v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mTouchSlop:I

    if-le v1, v9, :cond_4

    .line 1028
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->removeAllCallbacks()V

    .line 1029
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/holoeverywhere/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1036
    .end local v1    # "deltaDownY":I
    :cond_4
    :goto_2
    iput v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mLastDownOrMoveEventY:F

    goto :goto_1

    .line 1032
    :cond_5
    iget v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v9, v0, v9

    float-to-int v2, v9

    .line 1033
    .local v2, "deltaMoveY":I
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v2}, Lorg/holoeverywhere/widget/NumberPicker;->scrollBy(II)V

    .line 1034
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->invalidate()V

    goto :goto_2

    .line 1040
    .end local v0    # "currentMoveY":F
    .end local v2    # "deltaMoveY":I
    :pswitch_1
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 1041
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 1042
    iget-object v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mPressedStateHelper:Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v9}, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 1043
    iget-object v8, p0, Lorg/holoeverywhere/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1044
    .local v8, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1045
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    float-to-int v6, v9

    .line 1046
    .local v6, "initialVelocity":I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v9, v10, :cond_6

    .line 1047
    invoke-direct {p0, v6}, Lorg/holoeverywhere/widget/NumberPicker;->fling(I)V

    .line 1048
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/holoeverywhere/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1077
    :goto_3
    iget-object v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 1078
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 1050
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v5, v9

    .line 1051
    .local v5, "eventY":I
    int-to-float v9, v5

    iget v10, p0, Lorg/holoeverywhere/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v2, v9

    .line 1052
    .restart local v2    # "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iget-wide v11, p0, Lorg/holoeverywhere/widget/NumberPicker;->mLastDownEventTime:J

    sub-long v3, v9, v11

    .line 1053
    .local v3, "deltaTime":J
    iget v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mTouchSlop:I

    if-gt v2, v9, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v9

    int-to-long v9, v9

    cmp-long v9, v3, v9

    if-gez v9, :cond_a

    .line 1055
    iget-boolean v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mShowSoftInputOnTap:Z

    if-eqz v9, :cond_8

    .line 1056
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 1057
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->showSoftInput()V

    .line 1075
    :cond_7
    :goto_4
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/holoeverywhere/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_3

    .line 1059
    :cond_8
    iget v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorElementHeight:I

    div-int v9, v5, v9

    add-int/lit8 v7, v9, -0x1

    .line 1062
    .local v7, "selectorIndexOffset":I
    if-lez v7, :cond_9

    .line 1063
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/holoeverywhere/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1064
    iget-object v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mPressedStateHelper:Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 1066
    :cond_9
    if-gez v7, :cond_7

    .line 1067
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/holoeverywhere/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1068
    iget-object v9, p0, Lorg/holoeverywhere/widget/NumberPicker;->mPressedStateHelper:Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lorg/holoeverywhere/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 1073
    .end local v7    # "selectorIndexOffset":I
    :cond_a
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_4

    .line 1019
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 1155
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorIndices:[I

    .line 1156
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-lez p2, :cond_1

    aget v1, v0, v3

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_1

    .line 1159
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    iget-boolean v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-gez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_2

    .line 1165
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1168
    :cond_2
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1169
    :cond_3
    :goto_1
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_4

    .line 1170
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1171
    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1172
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lorg/holoeverywhere/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1175
    iget-boolean v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_3

    .line 1177
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1180
    :cond_4
    :goto_2
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1181
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1182
    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1183
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lorg/holoeverywhere/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1186
    iget-boolean v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_4

    .line 1188
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1194
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1207
    :goto_0
    return-void

    .line 1197
    :cond_0
    iput-object p1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1198
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/internal/NumberPickerEditText;->setRawInputType(I)V

    .line 1204
    :goto_1
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->updateInputTextView()Z

    .line 1205
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1206
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1202
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/internal/NumberPickerEditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1211
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/LinearLayout;->setEnabled(Z)V

    .line 1212
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1213
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1215
    :cond_0
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1216
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1218
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mInputText:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/internal/NumberPickerEditText;->setEnabled(Z)V

    .line 1219
    return-void
.end method

.method public setFormatter(Lorg/holoeverywhere/widget/NumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lorg/holoeverywhere/widget/NumberPicker$Formatter;

    .prologue
    .line 1222
    iget-object v0, p0, Lorg/holoeverywhere/widget/NumberPicker;->mFormatter:Lorg/holoeverywhere/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1228
    :goto_0
    return-void

    .line 1225
    :cond_0
    iput-object p1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mFormatter:Lorg/holoeverywhere/widget/NumberPicker$Formatter;

    .line 1226
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1227
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    .line 1231
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1247
    :goto_0
    return-void

    .line 1234
    :cond_0
    if-gez p1, :cond_1

    .line 1235
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1237
    :cond_1
    iput p1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    .line 1238
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1239
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    iput v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mValue:I

    .line 1241
    :cond_2
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1242
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1243
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1244
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->updateInputTextView()Z

    .line 1245
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1246
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1241
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "minValue"    # I

    .prologue
    .line 1250
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1266
    :goto_0
    return-void

    .line 1253
    :cond_0
    if-gez p1, :cond_1

    .line 1254
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1256
    :cond_1
    iput p1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    .line 1257
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 1258
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    iput v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mValue:I

    .line 1260
    :cond_2
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1261
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1262
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1263
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->updateInputTextView()Z

    .line 1264
    invoke-direct {p0}, Lorg/holoeverywhere/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1265
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1260
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1269
    iput-wide p1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 1270
    return-void
.end method

.method public setOnScrollListener(Lorg/holoeverywhere/widget/NumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lorg/holoeverywhere/widget/NumberPicker$OnScrollListener;

    .prologue
    .line 1273
    iput-object p1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mOnScrollListener:Lorg/holoeverywhere/widget/NumberPicker$OnScrollListener;

    .line 1274
    return-void
.end method

.method public setOnValueChangedListener(Lorg/holoeverywhere/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lorg/holoeverywhere/widget/NumberPicker$OnValueChangeListener;

    .prologue
    .line 1278
    iput-object p1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mOnValueChangeListener:Lorg/holoeverywhere/widget/NumberPicker$OnValueChangeListener;

    .line 1279
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1282
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1283
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1306
    iget v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/holoeverywhere/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1307
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 1309
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1311
    :cond_1
    return-void

    .line 1306
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
