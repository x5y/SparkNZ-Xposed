.class Lorg/holoeverywhere/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/FastScroller$ScrollFade;,
        Lorg/holoeverywhere/widget/FastScroller$FastScrollerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/AbsListView;",
        ":",
        "Lorg/holoeverywhere/widget/FastScroller$FastScrollerCallback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_STATES:[I

.field private static final FADE_TIMEOUT:I = 0x5dc

.field private static MIN_PAGES:I = 0x0

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final PENDING_DRAG_DELAY:I = 0xb4

.field private static final PRESSED_STATES:[I

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_EXIT:I = 0x3

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1


# instance fields
.field private mAlwaysShow:Z

.field private mChangedBounds:Z

.field private final mDeferStartDrag:Ljava/lang/Runnable;

.field private mDrawOverlay:Z

.field private mHandler:Landroid/os/Handler;

.field mInitialTouchY:F

.field private mItemCount:I

.field mList:Landroid/widget/AbsListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mListAdapter:Landroid/widget/ListAdapter;

.field private mListOffset:I

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

.field private mOverlayPos:Landroid/graphics/RectF;

.field private mOverlayPosition:I

.field private mOverlaySize:I

.field private mPaint:Landroid/graphics/Paint;

.field mPendingDrag:Z

.field private mPosition:I

.field private mScaledTouchSlop:I

.field mScrollCompleted:Z

.field private mScrollFade:Lorg/holoeverywhere/widget/FastScroller$ScrollFade;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/holoeverywhere/widget/FastScroller",
            "<TT;>.ScrollFade;"
        }
    .end annotation
.end field

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mState:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field mThumbH:I

.field mThumbW:I

.field mThumbY:I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVisibleItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    new-array v0, v2, [I

    sput-object v0, Lorg/holoeverywhere/widget/FastScroller;->DEFAULT_STATES:[I

    .line 82
    const/4 v0, 0x4

    sput v0, Lorg/holoeverywhere/widget/FastScroller;->MIN_PAGES:I

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lorg/holoeverywhere/widget/FastScroller;->PRESSED_STATES:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    .local p2, "listView":Landroid/widget/AbsListView;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lorg/holoeverywhere/widget/FastScroller$1;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/widget/FastScroller$1;-><init>(Lorg/holoeverywhere/widget/FastScroller;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mHandler:Landroid/os/Handler;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mItemCount:I

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mTmpRect:Landroid/graphics/Rect;

    .line 147
    iput-object p2, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 148
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/FastScroller;->init(Landroid/content/Context;)V

    .line 149
    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 164
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 165
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 166
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 167
    return-void
.end method

.method private getThumbPositionForListPosition(III)I
    .locals 16
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 318
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/FastScroller;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v13, :cond_1

    .line 319
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/FastScroller;->getSectionsFromIndexer()V

    .line 321
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/holoeverywhere/widget/FastScroller;->mMatchDragPosition:Z

    if-nez v13, :cond_4

    .line 322
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v13}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    sub-int/2addr v13, v14

    mul-int v13, v13, p1

    sub-int v14, p3, p2

    div-int v8, v13, v14

    .line 347
    :cond_3
    :goto_0
    return v8

    .line 325
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lorg/holoeverywhere/widget/FastScroller;->mListOffset:I

    sub-int p1, p1, v13

    .line 326
    if-gez p1, :cond_5

    .line 327
    const/4 v8, 0x0

    goto :goto_0

    .line 329
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lorg/holoeverywhere/widget/FastScroller;->mListOffset:I

    sub-int p3, p3, v13

    .line 330
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v13}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    sub-int v12, v13, v14

    .line 331
    .local v12, "trackHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v9

    .line 332
    .local v9, "section":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v13, v9}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 333
    .local v11, "sectionPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v14, v9, 0x1

    invoke-interface {v13, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v5

    .line 334
    .local v5, "nextSectionPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v10, v13

    .line 335
    .local v10, "sectionCount":I
    sub-int v7, v5, v11

    .line 336
    .local v7, "positionsInSection":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 337
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_6

    const/4 v2, 0x0

    .line 339
    .local v2, "incrementalPos":F
    :goto_1
    int-to-float v13, v11

    sub-float v13, v2, v13

    int-to-float v14, v7

    div-float v6, v13, v14

    .line 340
    .local v6, "posWithinSection":F
    int-to-float v13, v9

    add-float/2addr v13, v6

    int-to-float v14, v10

    div-float/2addr v13, v14

    int-to-float v14, v12

    mul-float/2addr v13, v14

    float-to-int v8, v13

    .line 341
    .local v8, "result":I
    if-lez p1, :cond_3

    add-int v13, p1, p2

    move/from16 v0, p3

    if-ne v13, v0, :cond_3

    .line 342
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    add-int/lit8 v14, p2, -0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 343
    .local v3, "lastChild":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v13}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v4, v13, v14

    .line 345
    .local v4, "lastItemVisible":F
    int-to-float v13, v8

    sub-int v14, v12, v8

    int-to-float v14, v14

    mul-float/2addr v14, v4

    add-float/2addr v13, v14

    float-to-int v8, v13

    goto/16 :goto_0

    .line 337
    .end local v2    # "incrementalPos":F
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v4    # "lastItemVisible":F
    .end local v6    # "posWithinSection":F
    .end local v8    # "result":I
    :cond_6
    move/from16 v0, p1

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    add-float v2, v13, v14

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 355
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget-object v6, Lorg/holoeverywhere/R$styleable;->FastScroll:[I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 356
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/holoeverywhere/widget/FastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 357
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 358
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 360
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 362
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mOverlayPosition:I

    .line 364
    iput-boolean v3, p0, Lorg/holoeverywhere/widget/FastScroller;->mScrollCompleted:Z

    .line 365
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/FastScroller;->getSectionsFromIndexer()V

    .line 366
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lorg/holoeverywhere/R$dimen;->fastscroll_overlay_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mOverlaySize:I

    .line 368
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 369
    new-instance v5, Lorg/holoeverywhere/widget/FastScroller$ScrollFade;

    invoke-direct {v5, p0}, Lorg/holoeverywhere/widget/FastScroller$ScrollFade;-><init>(Lorg/holoeverywhere/widget/FastScroller;)V

    iput-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mScrollFade:Lorg/holoeverywhere/widget/FastScroller$ScrollFade;

    .line 370
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    .line 371
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 372
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 373
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lorg/holoeverywhere/widget/FastScroller;->mOverlaySize:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 374
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 375
    .local v1, "textColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 376
    .local v2, "textColorNormal":I
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    if-lez v5, :cond_0

    .line 379
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0, v5, v6, v4, v4}, Lorg/holoeverywhere/widget/FastScroller;->onSizeChanged(IIII)V

    .line 381
    :cond_0
    iput v4, p0, Lorg/holoeverywhere/widget/FastScroller;->mState:I

    .line 382
    invoke-direct {p0}, Lorg/holoeverywhere/widget/FastScroller;->refreshDrawableState()V

    .line 383
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 384
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mScaledTouchSlop:I

    .line 385
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_1

    :goto_0
    iput-boolean v3, p0, Lorg/holoeverywhere/widget/FastScroller;->mMatchDragPosition:Z

    .line 387
    iget-object v3, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v3, Lorg/holoeverywhere/widget/FastScroller$FastScrollerCallback;

    invoke-interface {v3}, Lorg/holoeverywhere/widget/FastScroller$FastScrollerCallback;->getVerticalScrollbarPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/FastScroller;->setScrollbarPosition(I)V

    .line 388
    return-void

    :cond_1
    move v3, v4

    .line 385
    goto :goto_0
.end method

.method private refreshDrawableState()V
    .locals 3

    .prologue
    .line 587
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    iget v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    sget-object v0, Lorg/holoeverywhere/widget/FastScroller;->PRESSED_STATES:[I

    .line 588
    .local v0, "state":[I
    :goto_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 591
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 592
    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 594
    :cond_1
    return-void

    .line 587
    .end local v0    # "state":[I
    :cond_2
    sget-object v0, Lorg/holoeverywhere/widget/FastScroller;->DEFAULT_STATES:[I

    goto :goto_0
.end method

.method private resetThumbPos()V
    .locals 5

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    const/4 v4, 0x0

    .line 597
    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    .line 598
    .local v0, "viewWidth":I
    iget v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mPosition:I

    packed-switch v1, :pswitch_data_0

    .line 607
    :goto_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 608
    return-void

    .line 601
    :pswitch_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 604
    :pswitch_1
    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbW:I

    iget v3, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 598
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 753
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    iput-object p2, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 754
    instance-of v0, p2, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/holoeverywhere/R$dimen;->fastscroll_thumb_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbW:I

    .line 757
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/holoeverywhere/R$dimen;->fastscroll_thumb_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    .line 763
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mChangedBounds:Z

    .line 764
    return-void

    .line 760
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbW:I

    .line 761
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    goto :goto_0
.end method


# virtual methods
.method beginDrag()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    const/4 v1, 0x1

    .line 152
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/FastScroller;->setState(I)V

    .line 153
    iget-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/FastScroller;->getSectionsFromIndexer()V

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 158
    iget-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v0, Lorg/holoeverywhere/widget/FastScroller$FastScrollerCallback;

    invoke-interface {v0, v1}, Lorg/holoeverywhere/widget/FastScroller$FastScrollerCallback;->reportScrollStateChange(I)V

    .line 160
    :cond_1
    invoke-direct {p0}, Lorg/holoeverywhere/widget/FastScroller;->cancelFling()V

    .line 161
    return-void
.end method

.method cancelPendingDrag()V
    .locals 2

    .prologue
    .line 170
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    iget-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mPendingDrag:Z

    .line 172
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 175
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mState:I

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbY:I

    move/from16 v21, v0

    .line 179
    .local v21, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView;->getWidth()I

    move-result v20

    .line 180
    .local v20, "viewWidth":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/FastScroller;->mScrollFade:Lorg/holoeverywhere/widget/FastScroller$ScrollFade;

    .line 181
    .local v13, "scrollFade":Lorg/holoeverywhere/widget/FastScroller$ScrollFade;, "Lorg/holoeverywhere/widget/FastScroller<TT;>.ScrollFade;"
    const/4 v5, -0x1

    .line 182
    .local v5, "alpha":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mState:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 183
    invoke-virtual {v13}, Lorg/holoeverywhere/widget/FastScroller$ScrollFade;->getAlpha()I

    move-result v5

    .line 184
    const/16 v22, 0x68

    move/from16 v0, v22

    if-ge v5, v0, :cond_2

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    mul-int/lit8 v23, v5, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 187
    :cond_2
    const/4 v9, 0x0

    .line 188
    .local v9, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mPosition:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 197
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    add-int v24, v24, v9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/holoeverywhere/widget/FastScroller;->mChangedBounds:Z

    .line 200
    .end local v9    # "left":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    .line 202
    .local v14, "thumbBounds":Landroid/graphics/Rect;
    iget v9, v14, Landroid/graphics/Rect;->left:I

    .line 203
    .restart local v9    # "left":I
    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    div-int/lit8 v8, v22, 0x2

    .line 204
    .local v8, "halfThumbHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    .line 205
    .local v18, "trackWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbW:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v9

    div-int/lit8 v23, v18, 0x2

    sub-int v17, v22, v23

    .line 206
    .local v17, "trackLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    add-int v23, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/AbsListView;->getHeight()I

    move-result v24

    sub-int v24, v24, v8

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 210
    .end local v8    # "halfThumbHeight":I
    .end local v9    # "left":I
    .end local v14    # "thumbBounds":Landroid/graphics/Rect;
    .end local v17    # "trackLeft":I
    .end local v18    # "trackWidth":I
    :cond_4
    const/16 v22, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 212
    const/16 v22, 0x0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 213
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mState:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mDrawOverlay:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 214
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mOverlayPosition:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 215
    const/4 v9, 0x0

    .line 216
    .restart local v9    # "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mPosition:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_1

    .line 220
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mOverlaySize:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 228
    :goto_2
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mOverlaySize:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    div-int/lit8 v23, v23, 0x2

    add-int v23, v23, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/AbsListView;->getHeight()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mOverlaySize:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 232
    .local v16, "top":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/holoeverywhere/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 233
    .local v11, "pos":Landroid/graphics/RectF;
    int-to-float v0, v9

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/RectF;->left:F

    .line 234
    iget v0, v11, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mOverlaySize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/RectF;->right:F

    .line 235
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/RectF;->top:F

    .line 236
    iget v0, v11, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mOverlaySize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/RectF;->bottom:F

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    iget v0, v11, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    iget v0, v11, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    iget v0, v11, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 242
    .end local v9    # "left":I
    .end local v11    # "pos":Landroid/graphics/RectF;
    .end local v16    # "top":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/holoeverywhere/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    .line 244
    .local v10, "paint":Landroid/graphics/Paint;
    invoke-virtual {v10}, Landroid/graphics/Paint;->descent()F

    move-result v6

    .line 245
    .local v6, "descent":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 246
    .local v12, "rectF":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/holoeverywhere/widget/FastScroller;->mTmpRect:Landroid/graphics/Rect;

    .line 247
    .local v15, "tmpRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 248
    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    div-int/lit8 v7, v22, 0x2

    .line 249
    .local v7, "hOff":I
    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    div-int/lit8 v19, v22, 0x2

    .line 250
    .local v19, "vOff":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mSectionText:Ljava/lang/String;

    move-object/from16 v22, v0

    iget v0, v12, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    iget v0, v12, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    sub-int v23, v23, v7

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v12, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    iget v0, v12, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mOverlaySize:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x4

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v6

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 191
    .end local v6    # "descent":F
    .end local v7    # "hOff":I
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v12    # "rectF":Landroid/graphics/RectF;
    .end local v15    # "tmpRect":Landroid/graphics/Rect;
    .end local v19    # "vOff":I
    .restart local v9    # "left":I
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbW:I

    move/from16 v22, v0

    mul-int v22, v22, v5

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0xd0

    move/from16 v22, v0

    sub-int v9, v20, v22

    .line 192
    goto/16 :goto_1

    .line 194
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbW:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    mul-int v23, v23, v5

    move/from16 v0, v23

    div-int/lit16 v0, v0, 0xd0

    move/from16 v23, v0

    add-int v9, v22, v23

    goto/16 :goto_1

    .line 224
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/AbsListView;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mOverlaySize:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto/16 :goto_2

    .line 253
    .end local v9    # "left":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mState:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 254
    if-nez v5, :cond_7

    .line 255
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/FastScroller;->setState(I)V

    goto/16 :goto_0

    .line 256
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    sub-int v23, v20, v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/AbsListView;->getHeight()I

    move-result v25

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v20

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 259
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    sub-int v23, v20, v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    move/from16 v24, v0

    add-int v24, v24, v21

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 216
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 265
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    iget-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 269
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    iget-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/FastScroller;->getSectionsFromIndexer()V

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mSections:[Ljava/lang/Object;

    return-object v0
.end method

.method getSectionsFromIndexer()V
    .locals 5

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 276
    iget-object v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 277
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 278
    instance-of v2, v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 279
    check-cast v2, Lorg/holoeverywhere/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mListOffset:I

    .line 281
    :cond_0
    instance-of v2, v0, Lorg/holoeverywhere/widget/ListAdapterWrapper;

    if-eqz v2, :cond_1

    .line 282
    check-cast v0, Lorg/holoeverywhere/widget/ListAdapterWrapper;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 284
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_1
    instance-of v2, v0, Landroid/widget/WrapperListAdapter;

    if-eqz v2, :cond_2

    .line 285
    check-cast v0, Landroid/widget/WrapperListAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 287
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_2
    instance-of v2, v0, Lorg/holoeverywhere/widget/ExpandableListConnector;

    if-eqz v2, :cond_4

    move-object v2, v0

    .line 288
    check-cast v2, Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 289
    .local v1, "expAdapter":Landroid/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3

    .line 290
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1    # "expAdapter":Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 291
    iput-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mListAdapter:Landroid/widget/ListAdapter;

    .line 292
    iget-object v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 309
    :cond_3
    :goto_0
    iput-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mListAdapter:Landroid/widget/ListAdapter;

    .line 310
    return-void

    .line 295
    :cond_4
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_5

    move-object v2, v0

    .line 296
    check-cast v2, Landroid/widget/SectionIndexer;

    iput-object v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 297
    iget-object v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 298
    iget-object v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mSections:[Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 299
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, " "

    aput-object v3, v2, v4

    iput-object v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 304
    :cond_5
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, " "

    aput-object v3, v2, v4

    iput-object v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 313
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    iget v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mState:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 351
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    iget v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbW:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 391
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mAlwaysShow:Z

    return v0
.end method

.method isPointInside(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "inTrack":Z
    iget v3, p0, Lorg/holoeverywhere/widget/FastScroller;->mPosition:I

    packed-switch v3, :pswitch_data_0

    .line 400
    iget-object v3, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    iget v4, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbW:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    move v0, v1

    .line 406
    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lorg/holoeverywhere/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    iget v3, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbY:I

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_3

    iget v3, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbY:I

    iget v4, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_3

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 400
    goto :goto_0

    .line 403
    :pswitch_0
    iget v3, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbW:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    .line 406
    goto :goto_1

    .line 396
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 410
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    iget v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 414
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 430
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 416
    :pswitch_1
    iget v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/holoeverywhere/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v0, Lorg/holoeverywhere/widget/FastScroller$FastScrollerCallback;

    invoke-interface {v0}, Lorg/holoeverywhere/widget/FastScroller$FastScrollerCallback;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/FastScroller;->beginDrag()V

    .line 419
    const/4 v0, 0x1

    goto :goto_1

    .line 421
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mInitialTouchY:F

    .line 422
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/FastScroller;->startPendingDrag()V

    goto :goto_0

    .line 427
    :pswitch_2
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method onItemCountChanged(II)V
    .locals 1
    .param p1, "oldCount"    # I
    .param p2, "newCount"    # I

    .prologue
    .line 434
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mLongList:Z

    .line 437
    :cond_0
    return-void
.end method

.method onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 441
    iget v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mItemCount:I

    if-eq v0, p4, :cond_0

    if-lez p3, :cond_0

    .line 442
    iput p4, p0, Lorg/holoeverywhere/widget/FastScroller;->mItemCount:I

    .line 443
    iget v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mItemCount:I

    div-int/2addr v0, p3

    sget v3, Lorg/holoeverywhere/widget/FastScroller;->MIN_PAGES:I

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mLongList:Z

    .line 445
    :cond_0
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    .line 446
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mLongList:Z

    .line 448
    :cond_1
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mLongList:Z

    if-nez v0, :cond_4

    .line 449
    iget v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mState:I

    if-eqz v0, :cond_2

    .line 450
    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/FastScroller;->setState(I)V

    .line 473
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v2

    .line 443
    goto :goto_0

    .line 454
    :cond_4
    sub-int v0, p4, p3

    if-lez v0, :cond_5

    iget v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mState:I

    if-eq v0, v4, :cond_5

    .line 455
    invoke-direct {p0, p2, p3, p4}, Lorg/holoeverywhere/widget/FastScroller;->getThumbPositionForListPosition(III)I

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbY:I

    .line 457
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mChangedBounds:Z

    if-eqz v0, :cond_5

    .line 458
    invoke-direct {p0}, Lorg/holoeverywhere/widget/FastScroller;->resetThumbPos()V

    .line 459
    iput-boolean v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mChangedBounds:Z

    .line 462
    :cond_5
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mScrollCompleted:Z

    .line 463
    iget v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mVisibleItem:I

    if-eq p2, v0, :cond_2

    .line 466
    iput p2, p0, Lorg/holoeverywhere/widget/FastScroller;->mVisibleItem:I

    .line 467
    iget v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mState:I

    if-eq v0, v4, :cond_2

    .line 468
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/FastScroller;->setState(I)V

    .line 469
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mAlwaysShow:Z

    if-nez v0, :cond_2

    .line 470
    iget-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mScrollFade:Lorg/holoeverywhere/widget/FastScroller$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 476
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mListAdapter:Landroid/widget/ListAdapter;

    .line 477
    return-void
.end method

.method onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    const/4 v4, 0x0

    .line 480
    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 481
    iget v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mPosition:I

    packed-switch v1, :pswitch_data_0

    .line 485
    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbW:I

    sub-int v2, p1, v2

    iget v3, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v4, p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 492
    :cond_0
    :goto_0
    iget v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mOverlayPosition:I

    if-nez v1, :cond_1

    .line 493
    iget-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 494
    .local v0, "pos":Landroid/graphics/RectF;
    iget v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mOverlaySize:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 495
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 496
    div-int/lit8 v1, p2, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 497
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 498
    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 499
    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 503
    .end local v0    # "pos":Landroid/graphics/RectF;
    :cond_1
    return-void

    .line 488
    :pswitch_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbW:I

    iget v3, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v7, 0x1

    .line 506
    iget v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mState:I

    if-nez v5, :cond_0

    move v5, v6

    .line 583
    :goto_0
    return v5

    .line 509
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 510
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 511
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p0, v5, v8}, Lorg/holoeverywhere/widget/FastScroller;->isPointInside(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 512
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v5, Lorg/holoeverywhere/widget/FastScroller$FastScrollerCallback;

    invoke-interface {v5}, Lorg/holoeverywhere/widget/FastScroller$FastScrollerCallback;->isInScrollingContainer()Z

    move-result v5

    if-nez v5, :cond_1

    .line 513
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/FastScroller;->beginDrag()V

    move v5, v7

    .line 514
    goto :goto_0

    .line 516
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mInitialTouchY:F

    .line 517
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/FastScroller;->startPendingDrag()V

    :cond_2
    :goto_1
    move v5, v6

    .line 583
    goto :goto_0

    .line 519
    :cond_3
    if-ne v0, v7, :cond_9

    .line 520
    iget-boolean v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mPendingDrag:Z

    if-eqz v5, :cond_5

    .line 521
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/FastScroller;->beginDrag()V

    .line 522
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 523
    .local v3, "viewHeight":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget v8, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    sub-int/2addr v5, v8

    add-int/lit8 v2, v5, 0xa

    .line 524
    .local v2, "newThumbY":I
    if-gez v2, :cond_8

    .line 525
    const/4 v2, 0x0

    .line 529
    :cond_4
    :goto_2
    iput v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbY:I

    .line 530
    iget v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbY:I

    int-to-float v5, v5

    iget v8, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    sub-int v8, v3, v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    invoke-virtual {p0, v5}, Lorg/holoeverywhere/widget/FastScroller;->scrollTo(F)V

    .line 531
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/FastScroller;->cancelPendingDrag()V

    .line 533
    .end local v2    # "newThumbY":I
    .end local v3    # "viewHeight":I
    :cond_5
    iget v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mState:I

    if-ne v5, v9, :cond_2

    .line 534
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v5, :cond_6

    .line 535
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 536
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v5, Lorg/holoeverywhere/widget/FastScroller$FastScrollerCallback;

    invoke-interface {v5, v6}, Lorg/holoeverywhere/widget/FastScroller$FastScrollerCallback;->reportScrollStateChange(I)V

    .line 538
    :cond_6
    invoke-virtual {p0, v7}, Lorg/holoeverywhere/widget/FastScroller;->setState(I)V

    .line 539
    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mHandler:Landroid/os/Handler;

    .line 540
    .local v1, "handler":Landroid/os/Handler;
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mScrollFade:Lorg/holoeverywhere/widget/FastScroller$ScrollFade;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 541
    iget-boolean v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mAlwaysShow:Z

    if-nez v5, :cond_7

    .line 542
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mScrollFade:Lorg/holoeverywhere/widget/FastScroller$ScrollFade;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v1, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 544
    :cond_7
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->invalidate()V

    move v5, v7

    .line 545
    goto/16 :goto_0

    .line 526
    .end local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "newThumbY":I
    .restart local v3    # "viewHeight":I
    :cond_8
    iget v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    add-int/2addr v5, v2

    if-le v5, v3, :cond_4

    .line 527
    iget v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    sub-int v2, v3, v5

    goto :goto_2

    .line 547
    .end local v2    # "newThumbY":I
    .end local v3    # "viewHeight":I
    :cond_9
    if-ne v0, v9, :cond_11

    .line 548
    iget-boolean v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mPendingDrag:Z

    if-eqz v5, :cond_c

    .line 549
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 550
    .local v4, "y":F
    iget v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mInitialTouchY:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v8, p0, Lorg/holoeverywhere/widget/FastScroller;->mScaledTouchSlop:I

    int-to-float v8, v8

    cmpl-float v5, v5, v8

    if-lez v5, :cond_c

    .line 551
    invoke-virtual {p0, v9}, Lorg/holoeverywhere/widget/FastScroller;->setState(I)V

    .line 552
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v5, :cond_a

    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v5, :cond_a

    .line 553
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/FastScroller;->getSectionsFromIndexer()V

    .line 555
    :cond_a
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v5, :cond_b

    .line 556
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5, v7}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 557
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v5, Lorg/holoeverywhere/widget/FastScroller$FastScrollerCallback;

    invoke-interface {v5, v7}, Lorg/holoeverywhere/widget/FastScroller$FastScrollerCallback;->reportScrollStateChange(I)V

    .line 559
    :cond_b
    invoke-direct {p0}, Lorg/holoeverywhere/widget/FastScroller;->cancelFling()V

    .line 560
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/FastScroller;->cancelPendingDrag()V

    .line 563
    .end local v4    # "y":F
    :cond_c
    iget v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mState:I

    if-ne v5, v9, :cond_2

    .line 564
    iget-object v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 565
    .restart local v3    # "viewHeight":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    sub-int/2addr v5, v6

    add-int/lit8 v2, v5, 0xa

    .line 566
    .restart local v2    # "newThumbY":I
    if-gez v2, :cond_e

    .line 567
    const/4 v2, 0x0

    .line 571
    :cond_d
    :goto_3
    iget v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbY:I

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v9, :cond_f

    move v5, v7

    .line 572
    goto/16 :goto_0

    .line 568
    :cond_e
    iget v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    add-int/2addr v5, v2

    if-le v5, v3, :cond_d

    .line 569
    iget v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    sub-int v2, v3, v5

    goto :goto_3

    .line 574
    :cond_f
    iput v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbY:I

    .line 575
    iget-boolean v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mScrollCompleted:Z

    if-eqz v5, :cond_10

    .line 576
    iget v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbY:I

    int-to-float v5, v5

    iget v6, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lorg/holoeverywhere/widget/FastScroller;->scrollTo(F)V

    :cond_10
    move v5, v7

    .line 578
    goto/16 :goto_0

    .line 580
    .end local v2    # "newThumbY":I
    .end local v3    # "viewHeight":I
    :cond_11
    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    .line 581
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/FastScroller;->cancelPendingDrag()V

    goto/16 :goto_1
.end method

.method scrollTo(F)V
    .locals 22
    .param p1, "position"    # F

    .prologue
    .line 611
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    .line 612
    .local v2, "count":I
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/holoeverywhere/widget/FastScroller;->mScrollCompleted:Z

    .line 613
    const/high16 v19, 0x3f800000

    int-to-float v0, v2

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x41000000

    div-float v7, v19, v20

    .line 614
    .local v7, "fThreshold":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 616
    .local v17, "sections":[Ljava/lang/Object;
    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    .line 617
    move-object/from16 v0, v17

    array-length v9, v0

    .line 618
    .local v9, "nSections":I
    int-to-float v0, v9

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v15, v0

    .line 619
    .local v15, "section":I
    if-lt v15, v9, :cond_0

    .line 620
    add-int/lit8 v15, v9, -0x1

    .line 622
    :cond_0
    move v3, v15

    .line 623
    .local v3, "exactSection":I
    move/from16 v16, v15

    .line 624
    .local v16, "sectionIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    .line 625
    .local v8, "index":I
    move v10, v2

    .line 626
    .local v10, "nextIndex":I
    move v13, v8

    .line 627
    .local v13, "prevIndex":I
    move v14, v15

    .line 628
    .local v14, "prevSection":I
    add-int/lit8 v12, v15, 0x1

    .line 629
    .local v12, "nextSection":I
    add-int/lit8 v19, v9, -0x1

    move/from16 v0, v19

    if-ge v15, v0, :cond_1

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    add-int/lit8 v20, v15, 0x1

    invoke-interface/range {v19 .. v20}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    .line 632
    :cond_1
    if-ne v10, v8, :cond_3

    .line 633
    :cond_2
    if-lez v15, :cond_3

    .line 634
    add-int/lit8 v15, v15, -0x1

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v13

    .line 636
    if-eq v13, v8, :cond_4

    .line 637
    move v14, v15

    .line 638
    move/from16 v16, v15

    .line 646
    :cond_3
    :goto_0
    add-int/lit8 v11, v12, 0x1

    .line 647
    .local v11, "nextNextSection":I
    :goto_1
    if-ge v11, v9, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v10, :cond_5

    .line 649
    add-int/lit8 v11, v11, 0x1

    .line 650
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 640
    .end local v11    # "nextNextSection":I
    :cond_4
    if-nez v15, :cond_2

    .line 641
    const/16 v16, 0x0

    .line 642
    goto :goto_0

    .line 652
    .restart local v11    # "nextNextSection":I
    :cond_5
    int-to-float v0, v14

    move/from16 v19, v0

    int-to-float v0, v9

    move/from16 v20, v0

    div-float v6, v19, v20

    .line 653
    .local v6, "fPrev":F
    int-to-float v0, v12

    move/from16 v19, v0

    int-to-float v0, v9

    move/from16 v20, v0

    div-float v5, v19, v20

    .line 654
    .local v5, "fNext":F
    if-ne v14, v3, :cond_8

    sub-float v19, p1, v6

    cmpg-float v19, v19, v7

    if-gez v19, :cond_8

    .line 655
    move v8, v13

    .line 660
    :goto_2
    add-int/lit8 v19, v2, -0x1

    move/from16 v0, v19

    if-le v8, v0, :cond_6

    .line 661
    add-int/lit8 v8, v2, -0x1

    .line 663
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/holoeverywhere/widget/ExpandableListView;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 664
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v4, Lorg/holoeverywhere/widget/ExpandableListView;

    .line 665
    .local v4, "expList":Lorg/holoeverywhere/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v8

    invoke-static/range {v19 .. v19}, Lorg/holoeverywhere/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Lorg/holoeverywhere/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lorg/holoeverywhere/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 688
    .end local v3    # "exactSection":I
    .end local v4    # "expList":Lorg/holoeverywhere/widget/ExpandableListView;
    .end local v5    # "fNext":F
    .end local v6    # "fPrev":F
    .end local v9    # "nSections":I
    .end local v10    # "nextIndex":I
    .end local v11    # "nextNextSection":I
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v14    # "prevSection":I
    .end local v15    # "section":I
    :goto_3
    if-ltz v16, :cond_10

    .line 689
    aget-object v19, v17, v16

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/holoeverywhere/widget/FastScroller;->mSectionText:Ljava/lang/String;

    .line 690
    .local v18, "text":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    :cond_7
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    const/16 v19, 0x1

    :goto_4
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/holoeverywhere/widget/FastScroller;->mDrawOverlay:Z

    .line 695
    .end local v18    # "text":Ljava/lang/String;
    :goto_5
    return-void

    .line 657
    .restart local v3    # "exactSection":I
    .restart local v5    # "fNext":F
    .restart local v6    # "fPrev":F
    .restart local v9    # "nSections":I
    .restart local v10    # "nextIndex":I
    .restart local v11    # "nextNextSection":I
    .restart local v12    # "nextSection":I
    .restart local v13    # "prevIndex":I
    .restart local v14    # "prevSection":I
    .restart local v15    # "section":I
    :cond_8
    sub-int v19, v10, v13

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v20, p1, v6

    mul-float v19, v19, v20

    sub-float v20, v5, v6

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v8, v13, v19

    goto/16 :goto_2

    .line 667
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/holoeverywhere/widget/ListView;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    check-cast v19, Lorg/holoeverywhere/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lorg/holoeverywhere/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_3

    .line 670
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView;->setSelection(I)V

    goto/16 :goto_3

    .line 673
    .end local v3    # "exactSection":I
    .end local v5    # "fNext":F
    .end local v6    # "fPrev":F
    .end local v8    # "index":I
    .end local v9    # "nSections":I
    .end local v10    # "nextIndex":I
    .end local v11    # "nextNextSection":I
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v14    # "prevSection":I
    .end local v15    # "section":I
    .end local v16    # "sectionIndex":I
    :cond_b
    int-to-float v0, v2

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v8, v0

    .line 674
    .restart local v8    # "index":I
    add-int/lit8 v19, v2, -0x1

    move/from16 v0, v19

    if-le v8, v0, :cond_c

    .line 675
    add-int/lit8 v8, v2, -0x1

    .line 677
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/holoeverywhere/widget/ExpandableListView;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 678
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v4, Lorg/holoeverywhere/widget/ExpandableListView;

    .line 679
    .restart local v4    # "expList":Lorg/holoeverywhere/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v8

    invoke-static/range {v19 .. v19}, Lorg/holoeverywhere/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Lorg/holoeverywhere/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lorg/holoeverywhere/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 686
    .end local v4    # "expList":Lorg/holoeverywhere/widget/ExpandableListView;
    :goto_6
    const/16 v16, -0x1

    .restart local v16    # "sectionIndex":I
    goto/16 :goto_3

    .line 681
    .end local v16    # "sectionIndex":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/holoeverywhere/widget/ListView;

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    check-cast v19, Lorg/holoeverywhere/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lorg/holoeverywhere/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_6

    .line 684
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/holoeverywhere/widget/FastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_6

    .line 690
    .restart local v16    # "sectionIndex":I
    .restart local v18    # "text":Ljava/lang/String;
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 693
    .end local v18    # "text":Ljava/lang/String;
    :cond_10
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/holoeverywhere/widget/FastScroller;->mDrawOverlay:Z

    goto/16 :goto_5
.end method

.method public setAlwaysShow(Z)V
    .locals 4
    .param p1, "alwaysShow"    # Z

    .prologue
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    const/4 v2, 0x1

    .line 698
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/FastScroller;->mAlwaysShow:Z

    .line 699
    if-eqz p1, :cond_1

    .line 700
    iget-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mScrollFade:Lorg/holoeverywhere/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 701
    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/FastScroller;->setState(I)V

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    iget v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_0

    .line 703
    iget-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mScrollFade:Lorg/holoeverywhere/widget/FastScroller$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 708
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    iput p1, p0, Lorg/holoeverywhere/widget/FastScroller;->mPosition:I

    .line 709
    packed-switch p1, :pswitch_data_0

    .line 713
    iget-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 719
    :goto_0
    return-void

    .line 716
    :pswitch_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 722
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    packed-switch p1, :pswitch_data_0

    .line 739
    :goto_0
    iput p1, p0, Lorg/holoeverywhere/widget/FastScroller;->mState:I

    .line 740
    invoke-direct {p0}, Lorg/holoeverywhere/widget/FastScroller;->refreshDrawableState()V

    .line 741
    return-void

    .line 724
    :pswitch_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mScrollFade:Lorg/holoeverywhere/widget/FastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 725
    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0

    .line 728
    :pswitch_1
    iget v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 729
    invoke-direct {p0}, Lorg/holoeverywhere/widget/FastScroller;->resetThumbPos()V

    .line 732
    :cond_0
    :pswitch_2
    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mScrollFade:Lorg/holoeverywhere/widget/FastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 735
    :pswitch_3
    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    .line 736
    .local v0, "viewWidth":I
    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget v2, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbY:I

    iget v4, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbY:I

    iget v5, p0, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto :goto_0

    .line 722
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method startPendingDrag()V
    .locals 4

    .prologue
    .line 744
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mPendingDrag:Z

    .line 745
    iget-object v0, p0, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Lorg/holoeverywhere/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 746
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 749
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller;, "Lorg/holoeverywhere/widget/FastScroller<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/FastScroller;->setState(I)V

    .line 750
    return-void
.end method
