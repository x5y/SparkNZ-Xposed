.class Lorg/holoeverywhere/widget/PopupWindow$1;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/PopupWindow;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lorg/holoeverywhere/widget/PopupWindow$1;->this$0:Lorg/holoeverywhere/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 8

    .prologue
    const/4 v3, -0x1

    .line 149
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow$1;->this$0:Lorg/holoeverywhere/widget/PopupWindow;

    # getter for: Lorg/holoeverywhere/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lorg/holoeverywhere/widget/PopupWindow;->access$400(Lorg/holoeverywhere/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow$1;->this$0:Lorg/holoeverywhere/widget/PopupWindow;

    # getter for: Lorg/holoeverywhere/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lorg/holoeverywhere/widget/PopupWindow;->access$400(Lorg/holoeverywhere/widget/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v6, v0

    .line 150
    .local v6, "anchor":Landroid/view/View;
    :goto_0
    if-eqz v6, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow$1;->this$0:Lorg/holoeverywhere/widget/PopupWindow;

    # getter for: Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Lorg/holoeverywhere/widget/PopupWindow;->access$500(Lorg/holoeverywhere/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow$1;->this$0:Lorg/holoeverywhere/widget/PopupWindow;

    # getter for: Lorg/holoeverywhere/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Lorg/holoeverywhere/widget/PopupWindow;->access$500(Lorg/holoeverywhere/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 154
    .local v7, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow$1;->this$0:Lorg/holoeverywhere/widget/PopupWindow;

    iget-object v1, p0, Lorg/holoeverywhere/widget/PopupWindow$1;->this$0:Lorg/holoeverywhere/widget/PopupWindow;

    iget-object v2, p0, Lorg/holoeverywhere/widget/PopupWindow$1;->this$0:Lorg/holoeverywhere/widget/PopupWindow;

    # getter for: Lorg/holoeverywhere/widget/PopupWindow;->mAnchorXoff:I
    invoke-static {v2}, Lorg/holoeverywhere/widget/PopupWindow;->access$600(Lorg/holoeverywhere/widget/PopupWindow;)I

    move-result v2

    iget-object v4, p0, Lorg/holoeverywhere/widget/PopupWindow$1;->this$0:Lorg/holoeverywhere/widget/PopupWindow;

    # getter for: Lorg/holoeverywhere/widget/PopupWindow;->mAnchorYoff:I
    invoke-static {v4}, Lorg/holoeverywhere/widget/PopupWindow;->access$700(Lorg/holoeverywhere/widget/PopupWindow;)I

    move-result v4

    # invokes: Lorg/holoeverywhere/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    invoke-static {v1, v6, v7, v2, v4}, Lorg/holoeverywhere/widget/PopupWindow;->access$800(Lorg/holoeverywhere/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    # invokes: Lorg/holoeverywhere/widget/PopupWindow;->updateAboveAnchor(Z)V
    invoke-static {v0, v1}, Lorg/holoeverywhere/widget/PopupWindow;->access$900(Lorg/holoeverywhere/widget/PopupWindow;Z)V

    .line 155
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupWindow$1;->this$0:Lorg/holoeverywhere/widget/PopupWindow;

    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/holoeverywhere/widget/PopupWindow;->update(IIIIZ)V

    .line 157
    .end local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    .line 149
    .end local v6    # "anchor":Landroid/view/View;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method
