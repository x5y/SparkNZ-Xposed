.class public Lorg/holoeverywhere/widget/ViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ViewPager.java"


# instance fields
.field private mSwipeEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/ViewPager;->mSwipeEnabled:Z

    .line 17
    return-void
.end method


# virtual methods
.method public isSwipeEnabled()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ViewPager;->mSwipeEnabled:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 25
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ViewPager;->mSwipeEnabled:Z

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/ViewPager;->mSwipeEnabled:Z

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setSwipeEnabled(Z)V
    .locals 9
    .param p1, "swipeEnabled"    # Z

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 40
    iget-boolean v2, p0, Lorg/holoeverywhere/widget/ViewPager;->mSwipeEnabled:Z

    if-ne v2, p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/ViewPager;->mSwipeEnabled:Z

    .line 44
    if-nez p1, :cond_0

    .line 45
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 46
    .local v8, "event":Landroid/view/MotionEvent;
    invoke-super {p0, v8}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 47
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0
.end method
