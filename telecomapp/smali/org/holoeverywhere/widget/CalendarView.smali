.class public Lorg/holoeverywhere/widget/CalendarView;
.super Lorg/holoeverywhere/widget/FrameLayout;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/CalendarView$WeekView;,
        Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;,
        Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;,
        Lorg/holoeverywhere/widget/CalendarView$OnDateChangeListener;
    }
.end annotation


# static fields
.field private static final ADJUSTMENT_SCROLL_DURATION:I = 0x1f4

.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DAYS_PER_WEEK:I = 0x7

.field private static final DEFAULT_MAX_DATE:Ljava/lang/String; = "01/01/2100"

.field private static final DEFAULT_MIN_DATE:Ljava/lang/String; = "01/01/1900"

.field private static final DEFAULT_SHOWN_WEEK_COUNT:I = 0x6

.field private static final DEFAULT_SHOW_WEEK_NUMBER:Z = true

.field private static final DEFAULT_WEEK_DAY_TEXT_APPEARANCE_RES_ID:I = -0x1

.field private static final GOTO_SCROLL_DURATION:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_WEEK:J = 0x240c8400L

.field private static final SCROLL_CHANGE_DELAY:I = 0x28

.field private static final SCROLL_HYST_WEEKS:I = 0x2

.field private static final UNSCALED_BOTTOM_BUFFER:I = 0x14

.field private static final UNSCALED_LIST_SCROLL_TOP_OFFSET:I = 0x2

.field private static final UNSCALED_SELECTED_DATE_VERTICAL_BAR_WIDTH:I = 0x6

.field private static final UNSCALED_WEEK_MIN_VISIBLE_HEIGHT:I = 0xc

.field private static final UNSCALED_WEEK_SEPARATOR_LINE_WIDTH:I = 0x1


# instance fields
.field private mAdapter:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

.field private mBottomBuffer:I

.field private mCurrentLocale:Ljava/util/Locale;

.field private mCurrentMonthDisplayed:I

.field private mCurrentScrollState:I

.field private mCurrentYearDisplayed:I

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDateTextSize:I

.field private mDayLabels:[Ljava/lang/String;

.field private mDayNamesHeader:Landroid/view/ViewGroup;

.field private mDaysPerWeek:I

.field private mFirstDayOfMonth:Ljava/util/Calendar;

.field private mFirstDayOfWeek:I

.field private final mFocusedMonthDateColor:I

.field private mFriction:F

.field private mIsScrollingUp:Z

.field private mListScrollTopOffset:I

.field private mListView:Lorg/holoeverywhere/widget/ListView;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthName:Lorg/holoeverywhere/widget/TextView;

.field private mOnDateChangeListener:Lorg/holoeverywhere/widget/CalendarView$OnDateChangeListener;

.field private mPreviousScrollPosition:J

.field private mPreviousScrollState:I

.field private mScrollStateChangedRunnable:Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;

.field private final mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

.field private final mSelectedDateVerticalBarWidth:I

.field private final mSelectedWeekBackgroundColor:I

.field private mShowWeekNumber:Z

.field private mShownWeekCount:I

.field private mTempDate:Ljava/util/Calendar;

.field private final mUnfocusedMonthDateColor:I

.field private mVelocityScale:F

.field private mWeekMinVisibleHeight:I

.field private final mWeekNumberColor:I

.field private final mWeekSeparatorLineColor:I

.field private final mWeekSeperatorLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 409
    const-class v0, Lorg/holoeverywhere/widget/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/widget/CalendarView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 460
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 461
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 464
    sget v0, Lorg/holoeverywhere/R$attr;->calendarViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 465
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x2

    const/high16 v7, 0x41400000

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 468
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 421
    const/16 v5, 0x14

    iput v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mBottomBuffer:I

    .line 424
    iput v9, p0, Lorg/holoeverywhere/widget/CalendarView;->mCurrentScrollState:I

    .line 426
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "MM/dd/yyyy"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mDateFormat:Ljava/text/DateFormat;

    .line 431
    const/4 v5, 0x7

    iput v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mDaysPerWeek:I

    .line 435
    const v5, 0x3d4ccccd

    iput v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mFriction:F

    .line 436
    iput-boolean v9, p0, Lorg/holoeverywhere/widget/CalendarView;->mIsScrollingUp:Z

    .line 437
    iput v10, p0, Lorg/holoeverywhere/widget/CalendarView;->mListScrollTopOffset:I

    .line 444
    iput v9, p0, Lorg/holoeverywhere/widget/CalendarView;->mPreviousScrollState:I

    .line 445
    new-instance v5, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;-><init>(Lorg/holoeverywhere/widget/CalendarView;Lorg/holoeverywhere/widget/CalendarView$1;)V

    iput-object v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mScrollStateChangedRunnable:Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;

    .line 453
    const v5, 0x3eaa7efa

    iput v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mVelocityScale:F

    .line 454
    const/16 v5, 0xc

    iput v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mWeekMinVisibleHeight:I

    .line 469
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/holoeverywhere/widget/CalendarView;->setCurrentLocale(Ljava/util/Locale;)V

    .line 470
    sget-object v5, Lorg/holoeverywhere/R$styleable;->CalendarView:[I

    sget v6, Lorg/holoeverywhere/R$style;->Holo_CalendarView:I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 472
    .local v0, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mShowWeekNumber:Z

    .line 475
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mFirstDayOfWeek:I

    .line 477
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, "minDate":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v3, v5}, Lorg/holoeverywhere/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 480
    :cond_0
    const-string v5, "01/01/1900"

    iget-object v6, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v5, v6}, Lorg/holoeverywhere/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 482
    :cond_1
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, "maxDate":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v2, v5}, Lorg/holoeverywhere/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 485
    :cond_2
    const-string v5, "01/01/2100"

    iget-object v6, p0, Lorg/holoeverywhere/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v5, v6}, Lorg/holoeverywhere/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 487
    :cond_3
    iget-object v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    iget-object v6, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 488
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Max date cannot be before min date."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 491
    :cond_4
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mShownWeekCount:I

    .line 494
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    .line 496
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mFocusedMonthDateColor:I

    .line 498
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mUnfocusedMonthDateColor:I

    .line 500
    const/16 v5, 0xc

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mWeekSeparatorLineColor:I

    .line 502
    const/16 v5, 0xb

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mWeekNumberColor:I

    .line 504
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 506
    const v5, 0x1030046

    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 509
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mDateTextSize:I

    .line 511
    const/16 v5, 0xa

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 514
    .local v4, "weekDayTextAppearanceResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 515
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 516
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {v8, v7, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mWeekMinVisibleHeight:I

    .line 519
    const/high16 v5, 0x40000000

    invoke-static {v8, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mListScrollTopOffset:I

    .line 522
    const/high16 v5, 0x41a00000

    invoke-static {v8, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mBottomBuffer:I

    .line 525
    const/high16 v5, 0x40c00000

    invoke-static {v8, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mSelectedDateVerticalBarWidth:I

    .line 529
    const/high16 v5, 0x3f800000

    invoke-static {v8, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mWeekSeperatorLineWidth:I

    .line 533
    sget v5, Lorg/holoeverywhere/R$layout;->calendar_view:I

    invoke-static {p1, v5, p0, v8}, Lorg/holoeverywhere/LayoutInflater;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 534
    sget v5, Lorg/holoeverywhere/R$id;->list:I

    invoke-virtual {p0, v5}, Lorg/holoeverywhere/widget/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/holoeverywhere/widget/ListView;

    iput-object v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mListView:Lorg/holoeverywhere/widget/ListView;

    .line 535
    sget v5, Lorg/holoeverywhere/R$id;->day_names:I

    invoke-virtual {p0, v5}, Lorg/holoeverywhere/widget/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 536
    sget v5, Lorg/holoeverywhere/R$id;->month_name:I

    invoke-virtual {p0, v5}, Lorg/holoeverywhere/widget/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/holoeverywhere/widget/TextView;

    iput-object v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mMonthName:Lorg/holoeverywhere/widget/TextView;

    .line 537
    invoke-direct {p0, v4}, Lorg/holoeverywhere/widget/CalendarView;->setUpHeader(I)V

    .line 538
    invoke-direct {p0}, Lorg/holoeverywhere/widget/CalendarView;->setUpListView()V

    .line 539
    invoke-direct {p0}, Lorg/holoeverywhere/widget/CalendarView;->setUpAdapter()V

    .line 540
    iget-object v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 541
    iget-object v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v6, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 542
    iget-object v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v5, v9, v8, v8}, Lorg/holoeverywhere/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    .line 548
    :goto_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/CalendarView;->invalidate()V

    .line 549
    return-void

    .line 543
    :cond_5
    iget-object v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    iget-object v6, p0, Lorg/holoeverywhere/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 544
    iget-object v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v5, v9, v8, v8}, Lorg/holoeverywhere/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0

    .line 546
    :cond_6
    iget-object v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v5, v9, v8, v8}, Lorg/holoeverywhere/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method static synthetic access$002(Lorg/holoeverywhere/widget/CalendarView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lorg/holoeverywhere/widget/CalendarView;->mCurrentScrollState:I

    return p1
.end method

.method static synthetic access$100(Lorg/holoeverywhere/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mPreviousScrollState:I

    return v0
.end method

.method static synthetic access$1000(Lorg/holoeverywhere/widget/CalendarView;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$102(Lorg/holoeverywhere/widget/CalendarView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lorg/holoeverywhere/widget/CalendarView;->mPreviousScrollState:I

    return p1
.end method

.method static synthetic access$1100(Lorg/holoeverywhere/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mShownWeekCount:I

    return v0
.end method

.method static synthetic access$1200(Lorg/holoeverywhere/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method static synthetic access$1300(Lorg/holoeverywhere/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mWeekSeperatorLineWidth:I

    return v0
.end method

.method static synthetic access$1400(Lorg/holoeverywhere/widget/CalendarView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mShowWeekNumber:Z

    return v0
.end method

.method static synthetic access$1500(Lorg/holoeverywhere/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mSelectedDateVerticalBarWidth:I

    return v0
.end method

.method static synthetic access$1600(Lorg/holoeverywhere/widget/CalendarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/holoeverywhere/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mWeekNumberColor:I

    return v0
.end method

.method static synthetic access$1800(Lorg/holoeverywhere/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mFocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$1900(Lorg/holoeverywhere/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mUnfocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$200(Lorg/holoeverywhere/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mListScrollTopOffset:I

    return v0
.end method

.method static synthetic access$2000(Lorg/holoeverywhere/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mWeekSeparatorLineColor:I

    return v0
.end method

.method static synthetic access$2100(Lorg/holoeverywhere/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mDaysPerWeek:I

    return v0
.end method

.method static synthetic access$2200(Lorg/holoeverywhere/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mDateTextSize:I

    return v0
.end method

.method static synthetic access$2600(Lorg/holoeverywhere/widget/CalendarView;)Lorg/holoeverywhere/widget/CalendarView$OnDateChangeListener;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mOnDateChangeListener:Lorg/holoeverywhere/widget/CalendarView$OnDateChangeListener;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/holoeverywhere/widget/CalendarView;)Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mAdapter:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/holoeverywhere/widget/CalendarView;Landroid/widget/AbsListView;III)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;
    .param p1, "x1"    # Landroid/widget/AbsListView;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/holoeverywhere/widget/CalendarView;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method static synthetic access$2900(Lorg/holoeverywhere/widget/CalendarView;Landroid/widget/AbsListView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;
    .param p1, "x1"    # Landroid/widget/AbsListView;
    .param p2, "x2"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/holoeverywhere/widget/CalendarView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method static synthetic access$300(Lorg/holoeverywhere/widget/CalendarView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mIsScrollingUp:Z

    return v0
.end method

.method static synthetic access$400(Lorg/holoeverywhere/widget/CalendarView;Ljava/util/Calendar;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/holoeverywhere/widget/CalendarView;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$600(Lorg/holoeverywhere/widget/CalendarView;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$700(Lorg/holoeverywhere/widget/CalendarView;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mFirstDayOfWeek:I

    return v0
.end method

.method static synthetic access$800(Lorg/holoeverywhere/widget/CalendarView;Ljava/util/Calendar;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$900(Lorg/holoeverywhere/widget/CalendarView;)Lorg/holoeverywhere/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mListView:Lorg/holoeverywhere/widget/ListView;

    return-object v0
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 552
    if-nez p1, :cond_0

    .line 553
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 558
    :goto_0
    return-object v2

    .line 555
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 556
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 557
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private getWeeksSinceMinDate(Ljava/util/Calendar;)I
    .locals 11
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 583
    iget-object v6, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 584
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fromDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not precede toDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 588
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v2, v6, v8

    .line 590
    .local v2, "endTimeMillis":J
    iget-object v6, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v8, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    iget-object v9, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v4, v6, v8

    .line 592
    .local v4, "startTimeMillis":J
    iget-object v6, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget v7, p0, Lorg/holoeverywhere/widget/CalendarView;->mFirstDayOfWeek:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    const-wide/32 v8, 0x5265c00

    mul-long v0, v6, v8

    .line 594
    .local v0, "dayOffsetMillis":J
    sub-long v6, v2, v4

    add-long/2addr v6, v0

    const-wide/32 v8, 0x240c8400

    div-long/2addr v6, v8

    long-to-int v6, v6

    return v6
.end method

.method private goTo(Ljava/util/Calendar;ZZZ)V
    .locals 8
    .param p1, "date"    # Ljava/util/Calendar;
    .param p2, "animate"    # Z
    .param p3, "setSelected"    # Z
    .param p4, "forceScroll"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 600
    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 601
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time not between "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/holoeverywhere/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 604
    :cond_1
    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mListView:Lorg/holoeverywhere/widget/ListView;

    invoke-virtual {v4}, Lorg/holoeverywhere/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 605
    .local v1, "firstFullyVisiblePosition":I
    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mListView:Lorg/holoeverywhere/widget/ListView;

    invoke-virtual {v4, v7}, Lorg/holoeverywhere/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 606
    .local v0, "firstChild":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_2

    .line 607
    add-int/lit8 v1, v1, 0x1

    .line 609
    :cond_2
    iget v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mShownWeekCount:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 611
    .local v2, "lastFullyVisiblePosition":I
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mBottomBuffer:I

    if-le v4, v5, :cond_3

    .line 612
    add-int/lit8 v2, v2, -0x1

    .line 614
    :cond_3
    if-eqz p3, :cond_4

    .line 615
    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mAdapter:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v4, p1}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 617
    :cond_4
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    .line 618
    .local v3, "position":I
    if-lt v3, v1, :cond_5

    if-gt v3, v2, :cond_5

    if-eqz p4, :cond_9

    .line 620
    :cond_5
    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 621
    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 622
    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, Lorg/holoeverywhere/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    .line 623
    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 624
    const/4 v3, 0x0

    .line 628
    :goto_0
    const/4 v4, 0x2

    iput v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mPreviousScrollState:I

    .line 629
    if-eqz p2, :cond_8

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_8

    .line 630
    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mListView:Lorg/holoeverywhere/widget/ListView;

    iget v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mListScrollTopOffset:I

    const/16 v6, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Lorg/holoeverywhere/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 642
    :cond_6
    :goto_1
    return-void

    .line 626
    :cond_7
    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, Lorg/holoeverywhere/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    goto :goto_0

    .line 635
    :cond_8
    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mListView:Lorg/holoeverywhere/widget/ListView;

    iget v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mListScrollTopOffset:I

    invoke-virtual {v4, v3, v5}, Lorg/holoeverywhere/widget/ListView;->setSelectionFromTop(II)V

    .line 636
    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mListView:Lorg/holoeverywhere/widget/ListView;

    invoke-direct {p0, v4, v7}, Lorg/holoeverywhere/widget/CalendarView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_1

    .line 639
    :cond_9
    if-eqz p3, :cond_6

    .line 640
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    goto :goto_1
.end method

.method private isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3
    .param p1, "firstDate"    # Ljava/util/Calendar;
    .param p2, "secondDate"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x1

    .line 650
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onScroll(Landroid/widget/AbsListView;III)V
    .locals 9
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 665
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/widget/CalendarView$WeekView;

    .line 666
    .local v0, "child":Lorg/holoeverywhere/widget/CalendarView$WeekView;
    if-nez v0, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/CalendarView$WeekView;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/CalendarView$WeekView;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-long v1, v7

    .line 671
    .local v1, "currScroll":J
    iget-wide v7, p0, Lorg/holoeverywhere/widget/CalendarView;->mPreviousScrollPosition:J

    cmp-long v7, v1, v7

    if-gez v7, :cond_6

    .line 672
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/holoeverywhere/widget/CalendarView;->mIsScrollingUp:Z

    .line 678
    :goto_1
    invoke-virtual {v0}, Lorg/holoeverywhere/widget/CalendarView$WeekView;->getBottom()I

    move-result v7

    iget v8, p0, Lorg/holoeverywhere/widget/CalendarView;->mWeekMinVisibleHeight:I

    if-ge v7, v8, :cond_7

    const/4 v6, 0x1

    .line 679
    .local v6, "offset":I
    :goto_2
    iget-boolean v7, p0, Lorg/holoeverywhere/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_8

    .line 680
    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "child":Lorg/holoeverywhere/widget/CalendarView$WeekView;
    check-cast v0, Lorg/holoeverywhere/widget/CalendarView$WeekView;

    .line 686
    .restart local v0    # "child":Lorg/holoeverywhere/widget/CalendarView$WeekView;
    :cond_2
    :goto_3
    iget-boolean v7, p0, Lorg/holoeverywhere/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_9

    .line 687
    invoke-virtual {v0}, Lorg/holoeverywhere/widget/CalendarView$WeekView;->getMonthOfFirstWeekDay()I

    move-result v4

    .line 692
    .local v4, "month":I
    :goto_4
    iget v7, p0, Lorg/holoeverywhere/widget/CalendarView;->mCurrentMonthDisplayed:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_a

    if-nez v4, :cond_a

    .line 693
    const/4 v5, 0x1

    .line 699
    .local v5, "monthDiff":I
    :goto_5
    iget-boolean v7, p0, Lorg/holoeverywhere/widget/CalendarView;->mIsScrollingUp:Z

    if-nez v7, :cond_3

    if-gtz v5, :cond_4

    :cond_3
    iget-boolean v7, p0, Lorg/holoeverywhere/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_5

    if-gez v5, :cond_5

    .line 700
    :cond_4
    invoke-virtual {v0}, Lorg/holoeverywhere/widget/CalendarView$WeekView;->getFirstDay()Ljava/util/Calendar;

    move-result-object v3

    .line 701
    .local v3, "firstDay":Ljava/util/Calendar;
    iget-boolean v7, p0, Lorg/holoeverywhere/widget/CalendarView;->mIsScrollingUp:Z

    if-eqz v7, :cond_c

    .line 702
    const/4 v7, 0x5

    const/4 v8, -0x7

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 706
    :goto_6
    invoke-direct {p0, v3}, Lorg/holoeverywhere/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    .line 708
    .end local v3    # "firstDay":Ljava/util/Calendar;
    :cond_5
    iput-wide v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mPreviousScrollPosition:J

    .line 709
    iget v7, p0, Lorg/holoeverywhere/widget/CalendarView;->mCurrentScrollState:I

    iput v7, p0, Lorg/holoeverywhere/widget/CalendarView;->mPreviousScrollState:I

    goto :goto_0

    .line 673
    .end local v4    # "month":I
    .end local v5    # "monthDiff":I
    .end local v6    # "offset":I
    :cond_6
    iget-wide v7, p0, Lorg/holoeverywhere/widget/CalendarView;->mPreviousScrollPosition:J

    cmp-long v7, v1, v7

    if-lez v7, :cond_0

    .line 674
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/holoeverywhere/widget/CalendarView;->mIsScrollingUp:Z

    goto :goto_1

    .line 678
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 682
    .restart local v6    # "offset":I
    :cond_8
    if-eqz v6, :cond_2

    .line 683
    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "child":Lorg/holoeverywhere/widget/CalendarView$WeekView;
    check-cast v0, Lorg/holoeverywhere/widget/CalendarView$WeekView;

    .restart local v0    # "child":Lorg/holoeverywhere/widget/CalendarView$WeekView;
    goto :goto_3

    .line 689
    :cond_9
    invoke-virtual {v0}, Lorg/holoeverywhere/widget/CalendarView$WeekView;->getMonthOfLastWeekDay()I

    move-result v4

    .restart local v4    # "month":I
    goto :goto_4

    .line 694
    :cond_a
    iget v7, p0, Lorg/holoeverywhere/widget/CalendarView;->mCurrentMonthDisplayed:I

    if-nez v7, :cond_b

    const/16 v7, 0xb

    if-ne v4, v7, :cond_b

    .line 695
    const/4 v5, -0x1

    .restart local v5    # "monthDiff":I
    goto :goto_5

    .line 697
    .end local v5    # "monthDiff":I
    :cond_b
    iget v7, p0, Lorg/holoeverywhere/widget/CalendarView;->mCurrentMonthDisplayed:I

    sub-int v5, v4, v7

    .restart local v5    # "monthDiff":I
    goto :goto_5

    .line 704
    .restart local v3    # "firstDay":Ljava/util/Calendar;
    :cond_c
    const/4 v7, 0x5

    const/4 v8, 0x7

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_6
.end method

.method private onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 713
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mScrollStateChangedRunnable:Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 714
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 718
    :try_start_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    const/4 v1, 0x1

    .line 723
    :goto_0
    return v1

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Ljava/text/ParseException;
    sget-object v1, Lorg/holoeverywhere/widget/CalendarView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 728
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    :goto_0
    return-void

    .line 732
    :cond_0
    iput-object p1, p0, Lorg/holoeverywhere/widget/CalendarView;->mCurrentLocale:Ljava/util/Locale;

    .line 733
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lorg/holoeverywhere/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    .line 734
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lorg/holoeverywhere/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    .line 735
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lorg/holoeverywhere/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    .line 736
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lorg/holoeverywhere/widget/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private setMonthDisplayed(Ljava/util/Calendar;)V
    .locals 10
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 800
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 801
    .local v7, "newMonthDisplayed":I
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 802
    .local v9, "newYearDisplayed":I
    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mCurrentMonthDisplayed:I

    if-ne v0, v7, :cond_0

    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mCurrentYearDisplayed:I

    if-eq v0, v9, :cond_1

    .line 804
    :cond_0
    iput v7, p0, Lorg/holoeverywhere/widget/CalendarView;->mCurrentMonthDisplayed:I

    .line 805
    iput v9, p0, Lorg/holoeverywhere/widget/CalendarView;->mCurrentYearDisplayed:I

    .line 806
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mAdapter:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    iget v3, p0, Lorg/holoeverywhere/widget/CalendarView;->mCurrentMonthDisplayed:I

    invoke-virtual {v0, v3}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->setFocusMonth(I)V

    .line 807
    const/16 v6, 0x34

    .line 810
    .local v6, "flags":I
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 811
    .local v1, "millis":J
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v5, 0x34

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v8

    .line 813
    .local v8, "newMonthName":Ljava/lang/String;
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mMonthName:Lorg/holoeverywhere/widget/TextView;

    invoke-virtual {v0, v8}, Lorg/holoeverywhere/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mMonthName:Lorg/holoeverywhere/widget/TextView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/TextView;->invalidate()V

    .line 816
    .end local v1    # "millis":J
    .end local v6    # "flags":I
    .end local v8    # "newMonthName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setUpAdapter()V
    .locals 2

    .prologue
    .line 832
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mAdapter:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    if-nez v0, :cond_0

    .line 833
    new-instance v0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;-><init>(Lorg/holoeverywhere/widget/CalendarView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mAdapter:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    .line 834
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mAdapter:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    new-instance v1, Lorg/holoeverywhere/widget/CalendarView$1;

    invoke-direct {v1, p0}, Lorg/holoeverywhere/widget/CalendarView$1;-><init>(Lorg/holoeverywhere/widget/CalendarView;)V

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 847
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mListView:Lorg/holoeverywhere/widget/ListView;

    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mAdapter:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 849
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mAdapter:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    .line 850
    return-void
.end method

.method private setUpHeader(I)V
    .locals 9
    .param p1, "weekDayTextAppearanceResId"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 853
    iget v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mDaysPerWeek:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mDayLabels:[Ljava/lang/String;

    .line 854
    iget v2, p0, Lorg/holoeverywhere/widget/CalendarView;->mFirstDayOfWeek:I

    .local v2, "i":I
    iget v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mFirstDayOfWeek:I

    iget v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mDaysPerWeek:I

    add-int v1, v4, v5

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 855
    const/4 v4, 0x7

    if-le v2, v4, :cond_0

    add-int/lit8 v0, v2, -0x7

    .line 856
    .local v0, "calendarDay":I
    :goto_1
    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mDayLabels:[Ljava/lang/String;

    iget v5, p0, Lorg/holoeverywhere/widget/CalendarView;->mFirstDayOfWeek:I

    sub-int v5, v2, v5

    const/16 v6, 0x32

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 854
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "calendarDay":I
    :cond_0
    move v0, v2

    .line 855
    goto :goto_1

    .line 859
    :cond_1
    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/holoeverywhere/widget/TextView;

    .line 860
    .local v3, "label":Lorg/holoeverywhere/widget/TextView;
    iget-boolean v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mShowWeekNumber:Z

    if-eqz v4, :cond_3

    .line 861
    invoke-virtual {v3, v7}, Lorg/holoeverywhere/widget/TextView;->setVisibility(I)V

    .line 865
    :goto_2
    const/4 v2, 0x1

    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_5

    .line 866
    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "label":Lorg/holoeverywhere/widget/TextView;
    check-cast v3, Lorg/holoeverywhere/widget/TextView;

    .line 867
    .restart local v3    # "label":Lorg/holoeverywhere/widget/TextView;
    const/4 v4, -0x1

    if-le p1, v4, :cond_2

    .line 868
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lorg/holoeverywhere/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 871
    :cond_2
    iget v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mDaysPerWeek:I

    add-int/lit8 v4, v4, 0x1

    if-ge v2, v4, :cond_4

    .line 872
    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mDayLabels:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    invoke-virtual {v3, v7}, Lorg/holoeverywhere/widget/TextView;->setVisibility(I)V

    .line 865
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 863
    :cond_3
    invoke-virtual {v3, v8}, Lorg/holoeverywhere/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 875
    :cond_4
    invoke-virtual {v3, v8}, Lorg/holoeverywhere/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 878
    :cond_5
    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 879
    return-void
.end method

.method private setUpListView()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 883
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mListView:Lorg/holoeverywhere/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 884
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mListView:Lorg/holoeverywhere/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ListView;->setItemsCanFocus(Z)V

    .line 885
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mListView:Lorg/holoeverywhere/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 886
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mListView:Lorg/holoeverywhere/widget/ListView;

    new-instance v1, Lorg/holoeverywhere/widget/CalendarView$2;

    invoke-direct {v1, p0}, Lorg/holoeverywhere/widget/CalendarView$2;-><init>(Lorg/holoeverywhere/widget/CalendarView;)V

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 899
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 900
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mListView:Lorg/holoeverywhere/widget/ListView;

    iget v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mFriction:F

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ListView;->setFriction(F)V

    .line 901
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mListView:Lorg/holoeverywhere/widget/ListView;

    iget v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mVelocityScale:F

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ListView;->setVelocityScale(F)V

    .line 903
    :cond_0
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mAdapter:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    # getter for: Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v0}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->access$2400(Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mFirstDayOfWeek:I

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWeekNumber()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mShowWeekNumber:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mListView:Lorg/holoeverywhere/widget/ListView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 659
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 660
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/CalendarView;->setCurrentLocale(Ljava/util/Locale;)V

    .line 661
    return-void
.end method

.method public setDate(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    const/4 v0, 0x0

    .line 740
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/holoeverywhere/widget/CalendarView;->setDate(JZZ)V

    .line 741
    return-void
.end method

.method public setDate(JZZ)V
    .locals 2
    .param p1, "date"    # J
    .param p3, "animate"    # Z
    .param p4, "center"    # Z

    .prologue
    .line 744
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 745
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mAdapter:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    # getter for: Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->access$2400(Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/holoeverywhere/widget/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    :goto_0
    return-void

    .line 748
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, v1, p4}, Lorg/holoeverywhere/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 753
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mListView:Lorg/holoeverywhere/widget/ListView;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ListView;->setEnabled(Z)V

    .line 754
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 757
    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mFirstDayOfWeek:I

    if-ne v0, p1, :cond_0

    .line 764
    :goto_0
    return-void

    .line 760
    :cond_0
    iput p1, p0, Lorg/holoeverywhere/widget/CalendarView;->mFirstDayOfWeek:I

    .line 761
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mAdapter:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    # invokes: Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->init()V
    invoke-static {v0}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->access$2500(Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;)V

    .line 762
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mAdapter:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    .line 763
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/CalendarView;->setUpHeader(I)V

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 4
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x0

    .line 767
    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 768
    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Lorg/holoeverywhere/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, v2}, Lorg/holoeverywhere/widget/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 772
    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mAdapter:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    # invokes: Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->init()V
    invoke-static {v1}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->access$2500(Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;)V

    .line 773
    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mAdapter:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    # getter for: Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->access$2400(Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    .line 774
    .local v0, "date":Ljava/util/Calendar;
    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 775
    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/holoeverywhere/widget/CalendarView;->setDate(J)V

    goto :goto_0

    .line 777
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1, v3}, Lorg/holoeverywhere/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 4
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x0

    .line 782
    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 783
    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, v2}, Lorg/holoeverywhere/widget/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 797
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 787
    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mAdapter:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    # getter for: Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->access$2400(Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    .line 788
    .local v0, "date":Ljava/util/Calendar;
    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 789
    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mAdapter:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    iget-object v2, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 791
    :cond_1
    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mAdapter:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    # invokes: Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->init()V
    invoke-static {v1}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->access$2500(Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;)V

    .line 792
    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 793
    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/holoeverywhere/widget/CalendarView;->setDate(J)V

    goto :goto_0

    .line 795
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v1, v3}, Lorg/holoeverywhere/widget/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setOnDateChangeListener(Lorg/holoeverywhere/widget/CalendarView$OnDateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/holoeverywhere/widget/CalendarView$OnDateChangeListener;

    .prologue
    .line 819
    iput-object p1, p0, Lorg/holoeverywhere/widget/CalendarView;->mOnDateChangeListener:Lorg/holoeverywhere/widget/CalendarView$OnDateChangeListener;

    .line 820
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .locals 1
    .param p1, "showWeekNumber"    # Z

    .prologue
    .line 823
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mShowWeekNumber:Z

    if-ne v0, p1, :cond_0

    .line 829
    :goto_0
    return-void

    .line 826
    :cond_0
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/CalendarView;->mShowWeekNumber:Z

    .line 827
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView;->mAdapter:Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    .line 828
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/CalendarView;->setUpHeader(I)V

    goto :goto_0
.end method
