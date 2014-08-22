.class Lorg/holoeverywhere/widget/ListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lorg/holoeverywhere/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/holoeverywhere/widget/ListPopupWindow$PopupScrollListener;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/widget/ListPopupWindow;Lorg/holoeverywhere/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/widget/ListPopupWindow;
    .param p2, "x1"    # Lorg/holoeverywhere/widget/ListPopupWindow$1;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/ListPopupWindow$PopupScrollListener;-><init>(Lorg/holoeverywhere/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 93
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 97
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow$PopupScrollListener;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow$PopupScrollListener;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    # getter for: Lorg/holoeverywhere/widget/ListPopupWindow;->mPopup:Lorg/holoeverywhere/widget/PopupWindow;
    invoke-static {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->access$000(Lorg/holoeverywhere/widget/ListPopupWindow;)Lorg/holoeverywhere/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow$PopupScrollListener;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    # getter for: Lorg/holoeverywhere/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->access$200(Lorg/holoeverywhere/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListPopupWindow$PopupScrollListener;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    # getter for: Lorg/holoeverywhere/widget/ListPopupWindow;->mResizePopupRunnable:Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;
    invoke-static {v1}, Lorg/holoeverywhere/widget/ListPopupWindow;->access$100(Lorg/holoeverywhere/widget/ListPopupWindow;)Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListPopupWindow$PopupScrollListener;->this$0:Lorg/holoeverywhere/widget/ListPopupWindow;

    # getter for: Lorg/holoeverywhere/widget/ListPopupWindow;->mResizePopupRunnable:Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;
    invoke-static {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->access$100(Lorg/holoeverywhere/widget/ListPopupWindow;)Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow$ResizePopupRunnable;->run()V

    .line 103
    :cond_0
    return-void
.end method
