.class public abstract Lorg/holoeverywhere/widget/AbsSeekBar;
.super Lorg/holoeverywhere/widget/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mDisabledAlpha:F

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownX:F

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 34
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 25
    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 26
    iput v0, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/holoeverywhere/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 26
    iput v0, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput-boolean v4, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 26
    iput v4, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 43
    sget-object v3, Lorg/holoeverywhere/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 46
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 47
    const/4 v3, 0x2

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getThumbOffset()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 49
    .local v2, "thumbOffset":I
    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 50
    const/high16 v3, 0x3f000000

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 54
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 60
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "gap"    # I

    .prologue
    .line 343
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v7

    sub-int v7, p1, v7

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingRight()I

    move-result v8

    sub-int v0, v7, v8

    .line 344
    .local v0, "available":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 345
    .local v5, "thumbWidth":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 346
    .local v3, "thumbHeight":I
    sub-int/2addr v0, v5

    .line 347
    iget v7, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 348
    int-to-float v7, v0

    mul-float/2addr v7, p3

    float-to-int v4, v7

    .line 350
    .local v4, "thumbPos":I
    const/high16 v7, -0x80000000

    if-ne p4, v7, :cond_0

    .line 351
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 352
    .local v2, "oldBounds":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 353
    .local v6, "topBound":I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 358
    .end local v2    # "oldBounds":Landroid/graphics/Rect;
    .local v1, "bottomBound":I
    :goto_0
    add-int v7, v4, v5

    invoke-virtual {p2, v4, v6, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 359
    return-void

    .line 355
    .end local v1    # "bottomBound":I
    .end local v6    # "topBound":I
    :cond_0
    move v6, p4

    .line 356
    .restart local v6    # "topBound":I
    add-int v1, p4, v3

    .restart local v1    # "bottomBound":I
    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 362
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getWidth()I

    move-result v4

    .line 363
    .local v4, "width":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingRight()I

    move-result v7

    sub-int v0, v6, v7

    .line 364
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 366
    .local v5, "x":I
    const/4 v2, 0x0

    .line 367
    .local v2, "progress":F
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 368
    const/4 v3, 0x0

    .line 375
    .local v3, "scale":F
    :goto_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getMax()I

    move-result v1

    .line 376
    .local v1, "max":I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    .line 377
    float-to-int v6, v2

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lorg/holoeverywhere/widget/AbsSeekBar;->setProgress(IZ)V

    .line 378
    return-void

    .line 369
    .end local v1    # "max":I
    .end local v3    # "scale":F
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingRight()I

    move-result v6

    sub-int v6, v4, v6

    if-le v5, v6, :cond_1

    .line 370
    const/high16 v3, 0x3f800000

    .restart local v3    # "scale":F
    goto :goto_0

    .line 372
    .end local v3    # "scale":F
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v6

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 373
    .restart local v3    # "scale":F
    iget v2, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateThumbPos(II)V
    .locals 12
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v8, 0x0

    .line 381
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 382
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 383
    .local v5, "thumb":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_2

    move v6, v8

    .line 384
    .local v6, "thumbHeight":I
    :goto_0
    iget v9, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingTop()I

    move-result v10

    sub-int v10, p2, v10

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 386
    .local v7, "trackHeight":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getMax()I

    move-result v3

    .line 387
    .local v3, "max":I
    if-lez v3, :cond_3

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getProgress()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v3

    div-float v4, v9, v10

    .line 388
    .local v4, "scale":F
    :goto_1
    if-le v6, v7, :cond_4

    .line 389
    if-eqz v5, :cond_0

    .line 390
    invoke-direct {p0, p1, v5, v4, v8}, Lorg/holoeverywhere/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 392
    :cond_0
    sub-int v9, v6, v7

    div-int/lit8 v2, v9, 0x2

    .line 393
    .local v2, "gapForCenteringTrack":I
    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingRight()I

    move-result v9

    sub-int v9, p1, v9

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v10

    sub-int v10, p2, v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 408
    .end local v2    # "gapForCenteringTrack":I
    :cond_1
    :goto_2
    return-void

    .line 383
    .end local v3    # "max":I
    .end local v4    # "scale":F
    .end local v6    # "thumbHeight":I
    .end local v7    # "trackHeight":I
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    goto :goto_0

    .line 387
    .restart local v3    # "max":I
    .restart local v6    # "thumbHeight":I
    .restart local v7    # "trackHeight":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 399
    .restart local v4    # "scale":F
    :cond_4
    if-eqz v0, :cond_5

    .line 400
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingRight()I

    move-result v9

    sub-int v9, p1, v9

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v10

    sub-int v10, p2, v10

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 403
    :cond_5
    sub-int v8, v7, v6

    div-int/lit8 v1, v8, 0x2

    .line 404
    .local v1, "gap":I
    if-eqz v5, :cond_1

    .line 405
    invoke-direct {p0, p1, v5, v4, v1}, Lorg/holoeverywhere/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 64
    invoke-super {p0}, Lorg/holoeverywhere/widget/ProgressBar;->drawableStateChanged()V

    .line 65
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 70
    :cond_0
    iget-object v2, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 72
    .local v1, "state":[I
    iget-object v2, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 74
    .end local v1    # "state":[I
    :cond_1
    return-void

    .line 67
    :cond_2
    const/high16 v2, 0x437f0000

    iget v3, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public isInScrollingContainer()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 95
    invoke-super {p0}, Lorg/holoeverywhere/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 96
    iget-object v0, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 99
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 104
    iget-object v0, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 106
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 107
    iget-object v0, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    .line 115
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/ProgressBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 116
    const-class v0, Lorg/holoeverywhere/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 122
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/ProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 123
    const-class v1, Lorg/holoeverywhere/widget/AbsSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 126
    .local v0, "progress":I
    if-lez v0, :cond_0

    .line 127
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 130
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 133
    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 140
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 142
    .local v0, "progress":I
    packed-switch p1, :pswitch_data_0

    .line 159
    .end local v0    # "progress":I
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 144
    .restart local v0    # "progress":I
    :pswitch_0
    if-lez v0, :cond_0

    .line 147
    iget v2, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Lorg/holoeverywhere/widget/AbsSeekBar;->setProgress(IZ)V

    .line 148
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 154
    iget v2, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lorg/holoeverywhere/widget/AbsSeekBar;->setProgress(IZ)V

    .line 155
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 165
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 166
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 167
    .local v3, "thumbHeight":I
    :goto_0
    const/4 v2, 0x0

    .line 168
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 169
    .local v1, "dh":I
    if-eqz v0, :cond_0

    .line 170
    iget v4, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mMinWidth:I

    iget v5, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 172
    iget v4, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mMinHeight:I

    iget v5, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 174
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 176
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 177
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 178
    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Lorg/holoeverywhere/internal/_View;->supportResolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Lorg/holoeverywhere/internal/_View;->supportResolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lorg/holoeverywhere/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 166
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    .end local v3    # "thumbHeight":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 165
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onProgressRefresh(FZ)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/widget/ProgressBar;->onProgressRefresh(FZ)V

    .line 186
    iget-object v0, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 187
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Lorg/holoeverywhere/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 189
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->invalidate()V

    .line 191
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Lorg/holoeverywhere/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 196
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mIsDragging:Z

    .line 200
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mIsDragging:Z

    .line 204
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    iget-boolean v3, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 261
    :cond_1
    :goto_0
    return v1

    .line 211
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 213
    :pswitch_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mTouchDownX:F

    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/AbsSeekBar;->setPressed(Z)V

    .line 217
    iget-object v2, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 218
    iget-object v2, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 220
    :cond_4
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 221
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 222
    invoke-direct {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 226
    :pswitch_1
    iget-boolean v2, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_5

    .line 227
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 229
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 230
    .local v0, "x":F
    iget v2, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 231
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/AbsSeekBar;->setPressed(Z)V

    .line 232
    iget-object v2, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 233
    iget-object v2, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 235
    :cond_6
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 236
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 237
    invoke-direct {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 242
    .end local v0    # "x":F
    :pswitch_2
    iget-boolean v3, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_7

    .line 243
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 244
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 245
    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/AbsSeekBar;->setPressed(Z)V

    .line 251
    :goto_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->invalidate()V

    goto :goto_0

    .line 247
    :cond_7
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 248
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 249
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_1

    .line 254
    :pswitch_3
    iget-boolean v3, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_8

    .line 255
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 256
    invoke-virtual {p0, v2}, Lorg/holoeverywhere/widget/AbsSeekBar;->setPressed(Z)V

    .line 258
    :cond_8
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 266
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/widget/ProgressBar;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    :goto_0
    return v2

    .line 269
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 270
    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getProgress()I

    move-result v1

    .line 273
    .local v1, "progress":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40a00000

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 274
    .local v0, "increment":I
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 292
    goto :goto_0

    .line 276
    :sswitch_0
    if-gtz v1, :cond_2

    move v2, v3

    .line 277
    goto :goto_0

    .line 279
    :cond_2
    sub-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Lorg/holoeverywhere/widget/AbsSeekBar;->setProgress(IZ)V

    .line 280
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 284
    :sswitch_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getMax()I

    move-result v4

    if-lt v1, v4, :cond_3

    move v2, v3

    .line 285
    goto :goto_0

    .line 287
    :cond_3
    add-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Lorg/holoeverywhere/widget/AbsSeekBar;->setProgress(IZ)V

    .line 288
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 274
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .param p1, "increment"    # I

    .prologue
    .line 296
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1    # "increment":I
    :cond_0
    iput p1, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 297
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    .line 301
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/ProgressBar;->setMax(I)V

    .line 302
    iget v0, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 303
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_1
    monitor-exit p0

    return-void

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 310
    iget-object v2, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_3

    .line 311
    iget-object v2, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 312
    const/4 v0, 0x1

    .line 316
    .local v0, "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_1

    .line 317
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 318
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumbOffset:I

    .line 319
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 323
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->requestLayout()V

    .line 326
    :cond_1
    iput-object p1, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 327
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->invalidate()V

    .line 328
    if-eqz v0, :cond_2

    .line 329
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lorg/holoeverywhere/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 330
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 332
    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 335
    .end local v1    # "state":[I
    :cond_2
    return-void

    .line 314
    .end local v0    # "needUpdate":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "needUpdate":Z
    goto :goto_0
.end method

.method public setThumbOffset(I)V
    .locals 0
    .param p1, "thumbOffset"    # I

    .prologue
    .line 338
    iput p1, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumbOffset:I

    .line 339
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/AbsSeekBar;->invalidate()V

    .line 340
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 412
    iget-object v0, p0, Lorg/holoeverywhere/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
