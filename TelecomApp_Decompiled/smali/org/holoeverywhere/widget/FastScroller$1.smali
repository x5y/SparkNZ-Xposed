.class Lorg/holoeverywhere/widget/FastScroller$1;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/FastScroller;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/widget/FastScroller;)V
    .locals 0

    .prologue
    .line 95
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller$1;, "Lorg/holoeverywhere/widget/FastScroller.1;"
    iput-object p1, p0, Lorg/holoeverywhere/widget/FastScroller$1;->this$0:Lorg/holoeverywhere/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 98
    .local p0, "this":Lorg/holoeverywhere/widget/FastScroller$1;, "Lorg/holoeverywhere/widget/FastScroller.1;"
    iget-object v2, p0, Lorg/holoeverywhere/widget/FastScroller$1;->this$0:Lorg/holoeverywhere/widget/FastScroller;

    iget-object v2, v2, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v2, Lorg/holoeverywhere/widget/FastScroller$FastScrollerCallback;

    invoke-interface {v2}, Lorg/holoeverywhere/widget/FastScroller$FastScrollerCallback;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lorg/holoeverywhere/widget/FastScroller$1;->this$0:Lorg/holoeverywhere/widget/FastScroller;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/FastScroller;->beginDrag()V

    .line 100
    iget-object v2, p0, Lorg/holoeverywhere/widget/FastScroller$1;->this$0:Lorg/holoeverywhere/widget/FastScroller;

    iget-object v2, v2, Lorg/holoeverywhere/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    .line 101
    .local v1, "viewHeight":I
    iget-object v2, p0, Lorg/holoeverywhere/widget/FastScroller$1;->this$0:Lorg/holoeverywhere/widget/FastScroller;

    iget v2, v2, Lorg/holoeverywhere/widget/FastScroller;->mInitialTouchY:F

    float-to-int v2, v2

    iget-object v3, p0, Lorg/holoeverywhere/widget/FastScroller$1;->this$0:Lorg/holoeverywhere/widget/FastScroller;

    iget v3, v3, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, 0xa

    .line 102
    .local v0, "newThumbY":I
    if-gez v0, :cond_2

    .line 103
    const/4 v0, 0x0

    .line 107
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/holoeverywhere/widget/FastScroller$1;->this$0:Lorg/holoeverywhere/widget/FastScroller;

    iput v0, v2, Lorg/holoeverywhere/widget/FastScroller;->mThumbY:I

    .line 108
    iget-object v2, p0, Lorg/holoeverywhere/widget/FastScroller$1;->this$0:Lorg/holoeverywhere/widget/FastScroller;

    iget-object v3, p0, Lorg/holoeverywhere/widget/FastScroller$1;->this$0:Lorg/holoeverywhere/widget/FastScroller;

    iget v3, v3, Lorg/holoeverywhere/widget/FastScroller;->mThumbY:I

    int-to-float v3, v3

    iget-object v4, p0, Lorg/holoeverywhere/widget/FastScroller$1;->this$0:Lorg/holoeverywhere/widget/FastScroller;

    iget v4, v4, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/holoeverywhere/widget/FastScroller;->scrollTo(F)V

    .line 110
    .end local v0    # "newThumbY":I
    .end local v1    # "viewHeight":I
    :cond_1
    iget-object v2, p0, Lorg/holoeverywhere/widget/FastScroller$1;->this$0:Lorg/holoeverywhere/widget/FastScroller;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/holoeverywhere/widget/FastScroller;->mPendingDrag:Z

    .line 111
    return-void

    .line 104
    .restart local v0    # "newThumbY":I
    .restart local v1    # "viewHeight":I
    :cond_2
    iget-object v2, p0, Lorg/holoeverywhere/widget/FastScroller$1;->this$0:Lorg/holoeverywhere/widget/FastScroller;

    iget v2, v2, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    add-int/2addr v2, v0

    if-le v2, v1, :cond_0

    .line 105
    iget-object v2, p0, Lorg/holoeverywhere/widget/FastScroller$1;->this$0:Lorg/holoeverywhere/widget/FastScroller;

    iget v2, v2, Lorg/holoeverywhere/widget/FastScroller;->mThumbH:I

    sub-int v0, v1, v2

    goto :goto_0
.end method
