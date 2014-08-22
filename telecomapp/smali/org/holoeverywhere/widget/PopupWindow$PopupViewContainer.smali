.class Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;
.super Lorg/holoeverywhere/widget/FrameLayout;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupViewContainer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/PopupWindow;


# direct methods
.method public constructor <init>(Lorg/holoeverywhere/widget/PopupWindow;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    iput-object p1, p0, Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;->this$0:Lorg/holoeverywhere/widget/PopupWindow;

    .line 38
    invoke-direct {p0, p2}, Lorg/holoeverywhere/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 44
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    if-nez v2, :cond_1

    .line 45
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 64
    :cond_0
    :goto_0
    return v1

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 50
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 51
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 56
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 57
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 58
    iget-object v2, p0, Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;->this$0:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 62
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 64
    :cond_4
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;->this$0:Lorg/holoeverywhere/widget/PopupWindow;

    # getter for: Lorg/holoeverywhere/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lorg/holoeverywhere/widget/PopupWindow;->access$000(Lorg/holoeverywhere/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;->this$0:Lorg/holoeverywhere/widget/PopupWindow;

    # getter for: Lorg/holoeverywhere/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lorg/holoeverywhere/widget/PopupWindow;->access$000(Lorg/holoeverywhere/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 78
    iget-object v1, p0, Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;->this$0:Lorg/holoeverywhere/widget/PopupWindow;

    # getter for: Lorg/holoeverywhere/widget/PopupWindow;->mAboveAnchor:Z
    invoke-static {v1}, Lorg/holoeverywhere/widget/PopupWindow;->access$100(Lorg/holoeverywhere/widget/PopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Lorg/holoeverywhere/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 80
    .local v0, "drawableState":[I
    # getter for: Lorg/holoeverywhere/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I
    invoke-static {}, Lorg/holoeverywhere/widget/PopupWindow;->access$200()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 83
    .end local v0    # "drawableState":[I
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 90
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 91
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;->getHeight()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 93
    :cond_0
    iget-object v3, p0, Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;->this$0:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v3}, Lorg/holoeverywhere/widget/PopupWindow;->dismiss()V

    .line 99
    :goto_0
    return v2

    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 96
    iget-object v3, p0, Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;->this$0:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-virtual {v3}, Lorg/holoeverywhere/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 99
    :cond_2
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;->this$0:Lorg/holoeverywhere/widget/PopupWindow;

    # getter for: Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lorg/holoeverywhere/widget/PopupWindow;->access$300(Lorg/holoeverywhere/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow$PopupViewContainer;->this$0:Lorg/holoeverywhere/widget/PopupWindow;

    # getter for: Lorg/holoeverywhere/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lorg/holoeverywhere/widget/PopupWindow;->access$300(Lorg/holoeverywhere/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method
