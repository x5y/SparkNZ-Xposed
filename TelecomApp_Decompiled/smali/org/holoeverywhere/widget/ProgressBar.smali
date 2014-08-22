.class public Lorg/holoeverywhere/widget/ProgressBar;
.super Landroid/widget/ProgressBar;
.source "ProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/ProgressBar$1;,
        Lorg/holoeverywhere/widget/ProgressBar$SavedState;,
        Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;,
        Lorg/holoeverywhere/widget/ProgressBar$RefreshData;,
        Lorg/holoeverywhere/widget/ProgressBar$AccessibilityEventSender;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private mAccessibilityEventSender:Lorg/holoeverywhere/widget/ProgressBar$AccessibilityEventSender;

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAttached:Z

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMax:I

.field protected mMaxHeight:I

.field protected mMaxWidth:I

.field protected mMinHeight:I

.field protected mMinWidth:I

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private final mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/holoeverywhere/widget/ProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;

.field private mSampleTile:Landroid/graphics/Bitmap;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 199
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 203
    sget v0, Lorg/holoeverywhere/R$style;->Holo_ProgressBar:I

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/holoeverywhere/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "styleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 208
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 185
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/holoeverywhere/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    .line 209
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/holoeverywhere/widget/ProgressBar;->mUiThreadId:J

    .line 210
    invoke-direct {p0}, Lorg/holoeverywhere/widget/ProgressBar;->initProgressBar()V

    .line 211
    sget-object v5, Lorg/holoeverywhere/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 213
    .local v0, "a":Landroid/content/res/TypedArray;
    iput-boolean v4, p0, Lorg/holoeverywhere/widget/ProgressBar;->mNoInvalidate:Z

    .line 215
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 216
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 217
    invoke-direct {p0, v1, v3}, Lorg/holoeverywhere/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 218
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    :cond_0
    const/16 v5, 0x9

    iget v6, p0, Lorg/holoeverywhere/widget/ProgressBar;->mDuration:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lorg/holoeverywhere/widget/ProgressBar;->mDuration:I

    .line 223
    const/16 v5, 0xb

    iget v6, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMinWidth:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMinWidth:I

    .line 225
    iget v5, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMaxWidth:I

    .line 227
    const/16 v5, 0xc

    iget v6, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMinHeight:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMinHeight:I

    .line 229
    iget v5, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMaxHeight:I

    .line 231
    const/16 v5, 0xa

    iget v6, p0, Lorg/holoeverywhere/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lorg/holoeverywhere/widget/ProgressBar;->mBehavior:I

    .line 234
    const/16 v5, 0xd

    const v6, 0x10a000b

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 237
    .local v2, "resID":I
    if-lez v2, :cond_1

    .line 238
    invoke-virtual {p0, p1, v2}, Lorg/holoeverywhere/widget/ProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 240
    :cond_1
    const/4 v5, 0x2

    iget v6, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMax:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/holoeverywhere/widget/ProgressBar;->setMax(I)V

    .line 241
    const/4 v5, 0x3

    iget v6, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgress:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/holoeverywhere/widget/ProgressBar;->setProgress(I)V

    .line 243
    const/4 v5, 0x4

    iget v6, p0, Lorg/holoeverywhere/widget/ProgressBar;->mSecondaryProgress:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/holoeverywhere/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 246
    const/4 v5, 0x7

    invoke-static {v0, v5}, Lorg/holoeverywhere/drawable/DrawableCompat;->getDrawable(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_2

    .line 249
    invoke-direct {p0, v1}, Lorg/holoeverywhere/widget/ProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 250
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    :cond_2
    const/4 v5, 0x6

    iget-boolean v6, p0, Lorg/holoeverywhere/widget/ProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lorg/holoeverywhere/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 255
    iput-boolean v3, p0, Lorg/holoeverywhere/widget/ProgressBar;->mNoInvalidate:Z

    .line 256
    iget-boolean v5, p0, Lorg/holoeverywhere/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-nez v5, :cond_3

    const/4 v5, 0x5

    iget-boolean v6, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminate:Z

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/ProgressBar;->setIndeterminate(Z)V

    .line 259
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    return-void
.end method

.method static synthetic access$100(Lorg/holoeverywhere/widget/ProgressBar;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/ProgressBar;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/holoeverywhere/widget/ProgressBar;IIZZ)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/ProgressBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/holoeverywhere/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    return-void
.end method

.method static synthetic access$302(Lorg/holoeverywhere/widget/ProgressBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/ProgressBar;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mRefreshIsPosted:Z

    return p1
.end method

.method private declared-synchronized doRefreshProgress(IIZZ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMax:I

    if-lez v5, :cond_2

    int-to-float v5, p2

    iget v6, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMax:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 265
    .local v4, "scale":F
    :goto_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 266
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 267
    const/4 v3, 0x0

    .line 268
    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    .line 269
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 272
    :cond_0
    const v5, 0x461c4000

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 273
    .local v2, "level":I
    if-eqz v3, :cond_3

    .end local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 277
    .end local v2    # "level":I
    :goto_2
    if-eqz p4, :cond_1

    sget v5, Lorg/holoeverywhere/R$id;->progress:I

    if-ne p1, v5, :cond_1

    .line 278
    invoke-virtual {p0, v4, p3}, Lorg/holoeverywhere/widget/ProgressBar;->onProgressRefresh(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :cond_1
    monitor-exit p0

    return-void

    .line 264
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "scale":F
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "level":I
    .restart local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "scale":F
    :cond_3
    move-object v3, v1

    .line 273
    goto :goto_1

    .line 275
    .end local v2    # "level":I
    .end local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 264
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "scale":F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 296
    .local v0, "roundedCorners":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 293
    :array_0
    .array-data 4
        0x40a00000
        0x40a00000
        0x40a00000
        0x40a00000
        0x40a00000
        0x40a00000
        0x40a00000
        0x40a00000
    .end array-data
.end method

.method private initProgressBar()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 350
    const/16 v0, 0x64

    iput v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMax:I

    .line 351
    iput v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgress:I

    .line 352
    iput v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mSecondaryProgress:I

    .line 353
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminate:Z

    .line 354
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 355
    const/16 v0, 0xfa0

    iput v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mDuration:I

    .line 356
    const/4 v0, 0x1

    iput v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mBehavior:I

    .line 357
    iput v2, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMinWidth:I

    .line 358
    iput v3, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMaxWidth:I

    .line 359
    iput v2, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMinHeight:I

    .line 360
    iput v3, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMaxHeight:I

    .line 361
    return-void
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 555
    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 556
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/holoeverywhere/widget/ProgressBar;->doRefreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 557
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mRefreshProgressRunnable:Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;

    if-nez v1, :cond_2

    .line 559
    new-instance v1, Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;-><init>(Lorg/holoeverywhere/widget/ProgressBar;Lorg/holoeverywhere/widget/ProgressBar$1;)V

    iput-object v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mRefreshProgressRunnable:Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;

    .line 562
    :cond_2
    invoke-static {p1, p2, p3}, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->obtain(IIZ)Lorg/holoeverywhere/widget/ProgressBar$RefreshData;

    move-result-object v0

    .line 563
    .local v0, "rd":Lorg/holoeverywhere/widget/ProgressBar$RefreshData;
    iget-object v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    iget-boolean v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mAttached:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mRefreshIsPosted:Z

    if-nez v1, :cond_0

    .line 565
    iget-object v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mRefreshProgressRunnable:Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 566
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mRefreshIsPosted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 555
    .end local v0    # "rd":Lorg/holoeverywhere/widget/ProgressBar$RefreshData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    .prologue
    .line 572
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mAccessibilityEventSender:Lorg/holoeverywhere/widget/ProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 573
    new-instance v0, Lorg/holoeverywhere/widget/ProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/holoeverywhere/widget/ProgressBar$AccessibilityEventSender;-><init>(Lorg/holoeverywhere/widget/ProgressBar;Lorg/holoeverywhere/widget/ProgressBar$1;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mAccessibilityEventSender:Lorg/holoeverywhere/widget/ProgressBar$AccessibilityEventSender;

    .line 577
    :goto_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mAccessibilityEventSender:Lorg/holoeverywhere/widget/ProgressBar$AccessibilityEventSender;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lorg/holoeverywhere/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 579
    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mAccessibilityEventSender:Lorg/holoeverywhere/widget/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 20
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    .prologue
    .line 761
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v14, :cond_3

    move-object/from16 v3, p1

    .line 762
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 763
    .local v3, "background":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .line 764
    .local v2, "N":I
    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    .line 765
    .local v11, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 766
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    .line 767
    .local v6, "id":I
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    sget v14, Lorg/holoeverywhere/R$id;->progress:I

    if-eq v6, v14, :cond_0

    sget v14, Lorg/holoeverywhere/R$id;->secondaryProgress:I

    if-ne v6, v14, :cond_1

    :cond_0
    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lorg/holoeverywhere/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    aput-object v14, v11, v5

    .line 765
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 767
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 770
    .end local v6    # "id":I
    :cond_2
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v8, v11}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 771
    .local v8, "newBg":Landroid/graphics/drawable/LayerDrawable;
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_5

    .line 772
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v14

    invoke-virtual {v8, v5, v14}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 771
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 775
    .end local v2    # "N":I
    .end local v3    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v5    # "i":I
    .end local v8    # "newBg":Landroid/graphics/drawable/LayerDrawable;
    .end local v11    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v14, :cond_6

    move-object/from16 v7, p1

    .line 776
    check-cast v7, Landroid/graphics/drawable/StateListDrawable;

    .line 777
    .local v7, "in":Landroid/graphics/drawable/StateListDrawable;
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 778
    .local v10, "out":Landroid/graphics/drawable/StateListDrawable;
    const-string v14, "getStateCount"

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v7, v14, v15, v0}, Lorg/holoeverywhere/util/ReflectHelper;->invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 780
    .local v9, "numStates":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v9, :cond_4

    .line 781
    const-string v14, "getStateSet"

    const-class v15, [I

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v7, v14, v15, v0}, Lorg/holoeverywhere/util/ReflectHelper;->invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    const-string v15, "getStateDrawable"

    const-class v16, Landroid/graphics/drawable/Drawable;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v7, v15, v0, v1}, Lorg/holoeverywhere/util/ReflectHelper;->invoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v15, v1}, Lorg/holoeverywhere/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 780
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    move-object v8, v10

    .line 800
    .end local v5    # "i":I
    .end local v7    # "in":Landroid/graphics/drawable/StateListDrawable;
    .end local v9    # "numStates":I
    .end local v10    # "out":Landroid/graphics/drawable/StateListDrawable;
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_4
    return-object v8

    .line 787
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v14, :cond_9

    .line 788
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 789
    .local v13, "tileBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v14, :cond_7

    .line 790
    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/holoeverywhere/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    .line 792
    :cond_7
    new-instance v12, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct/range {p0 .. p0}, Lorg/holoeverywhere/widget/ProgressBar;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 794
    .local v12, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v14, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v13, v14, v15}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 796
    .local v4, "bitmapShader":Landroid/graphics/BitmapShader;
    invoke-virtual {v12}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 797
    if-eqz p2, :cond_8

    new-instance v14, Landroid/graphics/drawable/ClipDrawable;

    const/4 v15, 0x3

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v12, v15, v0}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v12, v14

    .end local v12    # "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    :cond_8
    move-object v8, v12

    goto :goto_4

    .end local v4    # "bitmapShader":Landroid/graphics/BitmapShader;
    .end local v13    # "tileBitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    move-object/from16 v8, p1

    .line 800
    goto :goto_4
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v7, 0x2710

    .line 804
    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 805
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 806
    .local v1, "background":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 807
    .local v0, "N":I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 808
    .local v4, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 809
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 810
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lorg/holoeverywhere/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 811
    .local v2, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 812
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 809
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 814
    .end local v2    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 815
    move-object p1, v4

    .line 817
    .end local v0    # "N":I
    .end local v1    # "background":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "i":I
    .end local v4    # "newBg":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-object p1
.end method

.method private updateDrawableBounds(II)V
    .locals 13
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v12, 0x0

    .line 821
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getPaddingRight()I

    move-result v10

    sub-int v10, p1, v10

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getPaddingLeft()I

    move-result v11

    sub-int v7, v10, v11

    .line 822
    .local v7, "right":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getPaddingBottom()I

    move-result v10

    sub-int v10, p2, v10

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getPaddingTop()I

    move-result v11

    sub-int v0, v10, v11

    .line 823
    .local v0, "bottom":I
    const/4 v8, 0x0

    .line 824
    .local v8, "top":I
    const/4 v6, 0x0

    .line 825
    .local v6, "left":I
    iget-object v10, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_1

    .line 826
    iget-boolean v10, p0, Lorg/holoeverywhere/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v10, v10, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v10, :cond_0

    .line 828
    iget-object v10, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 830
    .local v5, "intrinsicWidth":I
    iget-object v10, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 832
    .local v4, "intrinsicHeight":I
    int-to-float v10, v5

    int-to-float v11, v4

    div-float v3, v10, v11

    .line 834
    .local v3, "intrinsicAspect":F
    int-to-float v10, p1

    int-to-float v11, p2

    div-float v1, v10, v11

    .line 835
    .local v1, "boundAspect":F
    cmpl-float v10, v3, v1

    if-eqz v10, :cond_0

    .line 836
    cmpl-float v10, v1, v3

    if-lez v10, :cond_3

    .line 837
    int-to-float v10, p2

    mul-float/2addr v10, v3

    float-to-int v9, v10

    .line 838
    .local v9, "width":I
    sub-int v10, p1, v9

    div-int/lit8 v6, v10, 0x2

    .line 839
    add-int v7, v6, v9

    .line 847
    .end local v1    # "boundAspect":F
    .end local v3    # "intrinsicAspect":F
    .end local v4    # "intrinsicHeight":I
    .end local v5    # "intrinsicWidth":I
    .end local v9    # "width":I
    :cond_0
    :goto_0
    iget-object v10, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v6, v8, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 849
    :cond_1
    iget-object v10, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_2

    .line 850
    iget-object v10, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v12, v12, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 852
    :cond_2
    return-void

    .line 841
    .restart local v1    # "boundAspect":F
    .restart local v3    # "intrinsicAspect":F
    .restart local v4    # "intrinsicHeight":I
    .restart local v5    # "intrinsicWidth":I
    :cond_3
    int-to-float v10, p1

    const/high16 v11, 0x3f800000

    div-float/2addr v11, v3

    mul-float/2addr v10, v11

    float-to-int v2, v10

    .line 842
    .local v2, "height":I
    sub-int v10, p2, v2

    div-int/lit8 v8, v10, 0x2

    .line 843
    add-int v0, v8, v2

    goto :goto_0
.end method

.method private updateDrawableState()V
    .locals 2

    .prologue
    .line 855
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 856
    .local v0, "state":[I
    iget-object v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 859
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 861
    iget-object v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 863
    :cond_1
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 284
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 285
    invoke-direct {p0}, Lorg/holoeverywhere/widget/ProgressBar;->updateDrawableState()V

    .line 286
    return-void
.end method

.method protected getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getResolvedLayoutDirection()I
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 331
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getResolvedLayoutDirection()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mSecondaryProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementProgress(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgress(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 365
    iget-boolean v3, p0, Lorg/holoeverywhere/widget/ProgressBar;->mInDrawing:Z

    if-nez v3, :cond_0

    .line 366
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 368
    .local v0, "dirty":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getPaddingLeft()I

    move-result v4

    add-int v1, v3, v4

    .line 369
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getPaddingTop()I

    move-result v4

    add-int v2, v3, v4

    .line 371
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/holoeverywhere/widget/ProgressBar;->invalidate(IIII)V

    .line 377
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 388
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 389
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 392
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 395
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 399
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 400
    iget-boolean v3, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v3, :cond_0

    .line 401
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->startAnimation()V

    .line 403
    :cond_0
    iget-object v3, p0, Lorg/holoeverywhere/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 404
    monitor-enter p0

    .line 405
    :try_start_0
    iget-object v3, p0, Lorg/holoeverywhere/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 406
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 407
    iget-object v3, p0, Lorg/holoeverywhere/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;

    .line 408
    .local v2, "rd":Lorg/holoeverywhere/widget/ProgressBar$RefreshData;
    iget v3, v2, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->id:I

    iget v4, v2, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->progress:I

    iget-boolean v5, v2, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->fromUser:Z

    const/4 v6, 0x1

    invoke-direct {p0, v3, v4, v5, v6}, Lorg/holoeverywhere/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    .line 409
    invoke-virtual {v2}, Lorg/holoeverywhere/widget/ProgressBar$RefreshData;->recycle()V

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    .end local v2    # "rd":Lorg/holoeverywhere/widget/ProgressBar$RefreshData;
    :cond_1
    iget-object v3, p0, Lorg/holoeverywhere/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 412
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    iput-boolean v7, p0, Lorg/holoeverywhere/widget/ProgressBar;->mAttached:Z

    .line 415
    return-void

    .line 412
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->stopAnimation()V

    .line 422
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mRefreshProgressRunnable:Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mRefreshProgressRunnable:Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 425
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mRefreshProgressRunnable:Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mRefreshIsPosted:Z

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mRefreshProgressRunnable:Lorg/holoeverywhere/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 428
    :cond_2
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mAccessibilityEventSender:Lorg/holoeverywhere/widget/ProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_3

    .line 429
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mAccessibilityEventSender:Lorg/holoeverywhere/widget/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 431
    :cond_3
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mAttached:Z

    .line 433
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 437
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 438
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 439
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 440
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 441
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 442
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getDrawingTime()J

    move-result-wide v2

    .line 443
    .local v2, "time":J
    iget-boolean v4, p0, Lorg/holoeverywhere/widget/ProgressBar;->mHasAnimation:Z

    if-eqz v4, :cond_0

    .line 444
    iget-object v4, p0, Lorg/holoeverywhere/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v5, p0, Lorg/holoeverywhere/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v2, v3, v5}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 445
    iget-object v4, p0, Lorg/holoeverywhere/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    .line 447
    .local v1, "scale":F
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lorg/holoeverywhere/widget/ProgressBar;->mInDrawing:Z

    .line 448
    const v4, 0x461c4000

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    const/4 v4, 0x0

    :try_start_2
    iput-boolean v4, p0, Lorg/holoeverywhere/widget/ProgressBar;->mInDrawing:Z

    .line 452
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->postInvalidate()V

    .line 454
    .end local v1    # "scale":F
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 455
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 456
    iget-boolean v4, p0, Lorg/holoeverywhere/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v4, :cond_1

    instance-of v4, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v4, :cond_1

    .line 457
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 458
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/holoeverywhere/widget/ProgressBar;->mShouldStartAnimationDrawable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 461
    .end local v2    # "time":J
    :cond_1
    monitor-exit p0

    return-void

    .line 450
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "scale":F
    .restart local v2    # "time":J
    :catchall_0
    move-exception v4

    const/4 v5, 0x0

    :try_start_3
    iput-boolean v5, p0, Lorg/holoeverywhere/widget/ProgressBar;->mInDrawing:Z

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 437
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "scale":F
    .end local v2    # "time":J
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 466
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 467
    const-class v0, Lorg/holoeverywhere/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 468
    iget v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 469
    iget v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 470
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
    .line 475
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 476
    const-class v0, Lorg/holoeverywhere/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 477
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 482
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 483
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 484
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 485
    .local v1, "dh":I
    if-eqz v0, :cond_0

    .line 486
    iget v3, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMinWidth:I

    iget v4, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 488
    iget v3, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMinHeight:I

    iget v4, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 491
    :cond_0
    invoke-direct {p0}, Lorg/holoeverywhere/widget/ProgressBar;->updateDrawableState()V

    .line 492
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 493
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 494
    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lorg/holoeverywhere/internal/_View;->supportResolveSizeAndState(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, p2, v4}, Lorg/holoeverywhere/internal/_View;->supportResolveSizeAndState(III)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lorg/holoeverywhere/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-void

    .line 482
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected onProgressRefresh(FZ)V
    .locals 6
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 501
    :try_start_0
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    invoke-direct {p0}, Lorg/holoeverywhere/widget/ProgressBar;->scheduleAccessibilityEventSender()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 513
    move-object v0, p1

    check-cast v0, Lorg/holoeverywhere/widget/ProgressBar$SavedState;

    .line 514
    .local v0, "ss":Lorg/holoeverywhere/widget/ProgressBar$SavedState;
    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ProgressBar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 515
    iget v1, v0, Lorg/holoeverywhere/widget/ProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/ProgressBar;->setProgress(I)V

    .line 516
    iget v1, v0, Lorg/holoeverywhere/widget/ProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 517
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 521
    invoke-super {p0}, Landroid/widget/ProgressBar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 522
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lorg/holoeverywhere/widget/ProgressBar$SavedState;

    invoke-direct {v0, v1}, Lorg/holoeverywhere/widget/ProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 523
    .local v0, "ss":Lorg/holoeverywhere/widget/ProgressBar$SavedState;
    iget v2, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgress:I

    iput v2, v0, Lorg/holoeverywhere/widget/ProgressBar$SavedState;->progress:I

    .line 524
    iget v2, p0, Lorg/holoeverywhere/widget/ProgressBar;->mSecondaryProgress:I

    iput v2, v0, Lorg/holoeverywhere/widget/ProgressBar$SavedState;->secondaryProgress:I

    .line 525
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 530
    invoke-direct {p0, p1, p2}, Lorg/holoeverywhere/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 531
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 535
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisibilityChanged(Landroid/view/View;I)V

    .line 536
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 537
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 539
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->stopAnimation()V

    .line 544
    :cond_1
    :goto_0
    return-void

    .line 541
    :cond_2
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 549
    invoke-super {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 551
    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 583
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_1

    .line 585
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminate:Z

    .line 587
    if-eqz p1, :cond_2

    .line 589
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 590
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->startAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 592
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 593
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->stopAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 600
    if-eqz p1, :cond_0

    .line 601
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 603
    :cond_0
    iput-object p1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 604
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 605
    iput-object p1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 606
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->postInvalidate()V

    .line 608
    :cond_1
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .prologue
    .line 612
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 613
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 617
    iput-object p1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 618
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    .line 622
    monitor-enter p0

    if-gez p1, :cond_0

    .line 623
    const/4 p1, 0x0

    .line 625
    :cond_0
    :try_start_0
    iget v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMax:I

    if-eq p1, v0, :cond_2

    .line 626
    iput p1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMax:I

    .line 627
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->postInvalidate()V

    .line 629
    iget v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 630
    iput p1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgress:I

    .line 632
    :cond_1
    sget v0, Lorg/holoeverywhere/R$id;->progress:I

    iget v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/holoeverywhere/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    :cond_2
    monitor-exit p0

    return-void

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 638
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/holoeverywhere/widget/ProgressBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    monitor-exit p0

    return-void

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 642
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 655
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 645
    :cond_1
    if-gez p1, :cond_2

    .line 646
    const/4 p1, 0x0

    .line 648
    :cond_2
    :try_start_1
    iget v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 649
    iget p1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMax:I

    .line 651
    :cond_3
    iget v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgress:I

    if-eq p1, v0, :cond_0

    .line 652
    iput p1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgress:I

    .line 653
    sget v0, Lorg/holoeverywhere/R$id;->progress:I

    iget v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Lorg/holoeverywhere/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    .line 660
    iget-object v2, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_3

    .line 661
    iget-object v2, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 662
    const/4 v1, 0x1

    .line 666
    .local v1, "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_0

    .line 667
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 668
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 669
    .local v0, "drawableHeight":I
    iget v2, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMaxHeight:I

    if-ge v2, v0, :cond_0

    .line 670
    iput v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMaxHeight:I

    .line 671
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->requestLayout()V

    .line 674
    .end local v0    # "drawableHeight":I
    :cond_0
    iput-object p1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 675
    iget-boolean v2, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminate:Z

    if-nez v2, :cond_1

    .line 676
    iput-object p1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 677
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->postInvalidate()V

    .line 679
    :cond_1
    if-eqz v1, :cond_2

    .line 680
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lorg/holoeverywhere/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 681
    invoke-direct {p0}, Lorg/holoeverywhere/widget/ProgressBar;->updateDrawableState()V

    .line 682
    sget v2, Lorg/holoeverywhere/R$id;->progress:I

    iget v3, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, v2, v3, v4, v4}, Lorg/holoeverywhere/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    .line 683
    sget v2, Lorg/holoeverywhere/R$id;->secondaryProgress:I

    iget v3, p0, Lorg/holoeverywhere/widget/ProgressBar;->mSecondaryProgress:I

    invoke-direct {p0, v2, v3, v4, v4}, Lorg/holoeverywhere/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    .line 686
    :cond_2
    return-void

    .line 664
    .end local v1    # "needUpdate":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "needUpdate":Z
    goto :goto_0
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 690
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 703
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 693
    :cond_1
    if-gez p1, :cond_2

    .line 694
    const/4 p1, 0x0

    .line 696
    :cond_2
    :try_start_1
    iget v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 697
    iget p1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mMax:I

    .line 699
    :cond_3
    iget v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_0

    .line 700
    iput p1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mSecondaryProgress:I

    .line 701
    sget v0, Lorg/holoeverywhere/R$id;->secondaryProgress:I

    iget v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/holoeverywhere/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 707
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 708
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 709
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 710
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 712
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->stopAnimation()V

    .line 718
    :cond_1
    :goto_0
    return-void

    .line 714
    :cond_2
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method startAnimation()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 721
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    :goto_0
    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    .line 725
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mHasAnimation:Z

    .line 748
    :goto_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->postInvalidate()V

    goto :goto_0

    .line 728
    :cond_1
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mHasAnimation:Z

    .line 729
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 730
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 732
    :cond_2
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_3

    .line 733
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 737
    :goto_2
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_4

    .line 738
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 742
    :goto_3
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 743
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 744
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 745
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 746
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    goto :goto_1

    .line 735
    :cond_3
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    goto :goto_2

    .line 740
    :cond_4
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    goto :goto_3
.end method

.method stopAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 752
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mHasAnimation:Z

    .line 753
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 755
    iput-boolean v1, p0, Lorg/holoeverywhere/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 757
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/ProgressBar;->postInvalidate()V

    .line 758
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 867
    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
