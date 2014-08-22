.class Lorg/holoeverywhere/widget/ListView$1;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/ListView;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/widget/ListView;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lorg/holoeverywhere/widget/ListView$1;->this$0:Lorg/holoeverywhere/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView$1;->this$0:Lorg/holoeverywhere/widget/ListView;

    # getter for: Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;
    invoke-static {v0}, Lorg/holoeverywhere/widget/ListView;->access$200(Lorg/holoeverywhere/widget/ListView;)Lorg/holoeverywhere/widget/FastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView$1;->this$0:Lorg/holoeverywhere/widget/ListView;

    # getter for: Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;
    invoke-static {v0}, Lorg/holoeverywhere/widget/ListView;->access$200(Lorg/holoeverywhere/widget/ListView;)Lorg/holoeverywhere/widget/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/FastScroller;->onSectionsChanged()V

    .line 198
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView$1;->this$0:Lorg/holoeverywhere/widget/ListView;

    # getter for: Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;
    invoke-static {v0}, Lorg/holoeverywhere/widget/ListView;->access$200(Lorg/holoeverywhere/widget/ListView;)Lorg/holoeverywhere/widget/FastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView$1;->this$0:Lorg/holoeverywhere/widget/ListView;

    # getter for: Lorg/holoeverywhere/widget/ListView;->mFastScroller:Lorg/holoeverywhere/widget/FastScroller;
    invoke-static {v0}, Lorg/holoeverywhere/widget/ListView;->access$200(Lorg/holoeverywhere/widget/ListView;)Lorg/holoeverywhere/widget/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/FastScroller;->onSectionsChanged()V

    .line 205
    :cond_0
    return-void
.end method

.method public onPrepareView(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListView$1;->this$0:Lorg/holoeverywhere/widget/ListView;

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/widget/ListView;->onPrepareView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
