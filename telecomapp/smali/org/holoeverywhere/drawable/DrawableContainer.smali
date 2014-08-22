.class public Lorg/holoeverywhere/drawable/DrawableContainer;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;
    }
.end annotation


# static fields
.field private static final DEFAULT_DITHER:Z = true


# instance fields
.field private mAlpha:I

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCurIndex:I

.field private mCurrDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

.field private mEnterAnimationEnd:J

.field private mExitAnimationEnd:J

.field private mLastDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 285
    const/16 v0, 0xff

    iput v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mAlpha:I

    .line 288
    const/4 v0, -0x1

    iput v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurIndex:I

    return-void
.end method


# virtual methods
.method animate(Z)V
    .locals 12
    .param p1, "schedule"    # Z

    .prologue
    const-wide/16 v10, 0xff

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    .line 297
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 298
    .local v2, "now":J
    const/4 v1, 0x0

    .line 299
    .local v1, "animating":Z
    iget-object v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 300
    iget-wide v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_0

    .line 301
    iget-wide v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_3

    .line 302
    iget-object v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 303
    iput-wide v7, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 314
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 315
    iget-wide v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_1

    .line 316
    iget-wide v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_5

    .line 317
    iget-object v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v9, v9}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 318
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 319
    iput-wide v7, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 330
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 331
    iget-object v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x10

    add-long/2addr v5, v2

    invoke-virtual {p0, v4, v5, v6}, Lorg/holoeverywhere/drawable/DrawableContainer;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 333
    :cond_2
    return-void

    .line 305
    :cond_3
    iget-wide v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mEnterAnimationEnd:J

    sub-long/2addr v4, v2

    mul-long/2addr v4, v10

    long-to-int v4, v4

    iget-object v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    iget v5, v5, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    div-int v0, v4, v5

    .line 307
    .local v0, "animAlpha":I
    iget-object v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    rsub-int v5, v0, 0xff

    iget v6, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mAlpha:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 308
    const/4 v1, 0x1

    .line 309
    goto :goto_0

    .line 312
    .end local v0    # "animAlpha":I
    :cond_4
    iput-wide v7, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mEnterAnimationEnd:J

    goto :goto_0

    .line 321
    :cond_5
    iget-wide v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mExitAnimationEnd:J

    sub-long/2addr v4, v2

    mul-long/2addr v4, v10

    long-to-int v4, v4

    iget-object v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    iget v5, v5, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    div-int v0, v4, v5

    .line 323
    .restart local v0    # "animAlpha":I
    iget-object v4, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mAlpha:I

    mul-int/2addr v5, v0

    div-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 324
    const/4 v1, 0x1

    .line 325
    goto :goto_1

    .line 328
    .end local v0    # "animAlpha":I
    :cond_6
    iput-wide v7, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 337
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 340
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 343
    :cond_1
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 347
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 356
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    .line 358
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->getConstantHeight()I

    move-result v0

    .line 371
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->getConstantWidth()I

    move-result v0

    .line 379
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumHeight()I

    move-result v0

    .line 387
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumWidth()I

    move-result v0

    .line 395
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->getOpacity()I

    move-result v0

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 406
    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 407
    .local v0, "r":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 409
    const/4 v1, 0x1

    .line 414
    :goto_0
    return v1

    .line 411
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 412
    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 414
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 420
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "changed":Z
    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 435
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 436
    const/4 v0, 0x1

    .line 438
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 439
    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 440
    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 442
    :cond_1
    iget-wide v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 443
    iput-wide v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 444
    const/4 v0, 0x1

    .line 446
    :cond_2
    iget-wide v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 447
    iput-wide v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 448
    const/4 v0, 0x1

    .line 450
    :cond_3
    if-eqz v0, :cond_4

    .line 451
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer;->invalidateSelf()V

    .line 453
    :cond_4
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 457
    iget-boolean v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mMutated:Z

    if-nez v3, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-ne v3, p0, :cond_2

    .line 458
    iget-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v3}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v0

    .line 459
    .local v0, "N":I
    iget-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v3}, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 460
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 461
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 462
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 460
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mMutated:Z

    .line 467
    .end local v0    # "N":I
    .end local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "i":I
    :cond_2
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 472
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 475
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 478
    :cond_1
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 482
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 488
    :goto_0
    return v0

    .line 485
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    goto :goto_0

    .line 488
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 493
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 499
    :goto_0
    return v0

    .line 496
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    goto :goto_0

    .line 499
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 504
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 507
    :cond_0
    return-void
.end method

.method public selectDrawable(I)Z
    .locals 10
    .param p1, "idx"    # I

    .prologue
    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 510
    iget v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurIndex:I

    if-ne p1, v5, :cond_0

    .line 568
    :goto_0
    return v3

    .line 513
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 514
    .local v1, "now":J
    iget-object v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    iget v5, v5, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    if-lez v5, :cond_7

    .line 515
    iget-object v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 516
    iget-object v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 518
    :cond_1
    iget-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 519
    iget-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 520
    iget-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    iget v3, v3, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    int-to-long v5, v3

    add-long/2addr v5, v1

    iput-wide v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 529
    :cond_2
    :goto_1
    if-ltz p1, :cond_9

    iget-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    iget v3, v3, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    if-ge p1, v3, :cond_9

    .line 530
    iget-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    iget-object v3, v3, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v3, p1

    .line 531
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 532
    iput p1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurIndex:I

    .line 533
    if-eqz v0, :cond_3

    .line 534
    iget-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    iget v3, v3, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-lez v3, :cond_8

    .line 535
    iget-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    iget v3, v3, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    int-to-long v5, v3

    add-long/2addr v5, v1

    iput-wide v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 539
    :goto_2
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer;->isVisible()Z

    move-result v3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 540
    iget-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v3, v3, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 541
    iget-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 542
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer;->getState()[I

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 543
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 544
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 551
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_3
    iget-wide v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_4

    iget-wide v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_5

    .line 552
    :cond_4
    iget-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    if-nez v3, :cond_a

    .line 553
    new-instance v3, Lorg/holoeverywhere/drawable/DrawableContainer$1;

    invoke-direct {v3, p0}, Lorg/holoeverywhere/drawable/DrawableContainer$1;-><init>(Lorg/holoeverywhere/drawable/DrawableContainer;)V

    iput-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 563
    :goto_4
    invoke-virtual {p0, v4}, Lorg/holoeverywhere/drawable/DrawableContainer;->animate(Z)V

    .line 566
    :cond_5
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer;->invalidateSelf()V

    move v3, v4

    .line 568
    goto/16 :goto_0

    .line 522
    :cond_6
    iput-object v9, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 523
    iput-wide v7, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_1

    .line 525
    :cond_7
    iget-object v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 526
    iget-object v5, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_1

    .line 537
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_8
    iget v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    .line 547
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_9
    iput-object v9, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 548
    const/4 v3, -0x1

    iput v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurIndex:I

    goto :goto_3

    .line 561
    :cond_a
    iget-object v3, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lorg/holoeverywhere/drawable/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public setAlpha(I)V
    .locals 4
    .param p1, "alpha"    # I

    .prologue
    .line 580
    iget v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 581
    iput p1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mAlpha:I

    .line 582
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 583
    iget-wide v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mEnterAnimationEnd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 584
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/drawable/DrawableContainer;->animate(Z)V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 594
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 595
    iput-object p1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 596
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 600
    :cond_0
    return-void
.end method

.method protected setConstantState(Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 0
    .param p1, "state"    # Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    .prologue
    .line 604
    iput-object p1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    .line 605
    return-void
.end method

.method public setDither(Z)V
    .locals 2
    .param p1, "dither"    # Z

    .prologue
    .line 609
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    if-eq v0, p1, :cond_0

    .line 610
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    iput-boolean p1, v0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 611
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 615
    :cond_0
    return-void
.end method

.method public setEnterFadeDuration(I)V
    .locals 1
    .param p1, "ms"    # I

    .prologue
    .line 618
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    iput p1, v0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 619
    return-void
.end method

.method public setExitFadeDuration(I)V
    .locals 1
    .param p1, "ms"    # I

    .prologue
    .line 622
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mDrawableContainerState:Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;

    iput p1, v0, Lorg/holoeverywhere/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 623
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 627
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 628
    .local v0, "changed":Z
    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 629
    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 631
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 632
    iget-object v1, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 634
    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 639
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lorg/holoeverywhere/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 642
    :cond_0
    return-void
.end method
