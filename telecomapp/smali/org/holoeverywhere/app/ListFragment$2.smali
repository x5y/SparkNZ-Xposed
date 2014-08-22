.class Lorg/holoeverywhere/app/ListFragment$2;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/app/ListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/app/ListFragment;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/app/ListFragment;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lorg/holoeverywhere/app/ListFragment$2;->this$0:Lorg/holoeverywhere/app/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lorg/holoeverywhere/app/ListFragment$2;->this$0:Lorg/holoeverywhere/app/ListFragment;

    # getter for: Lorg/holoeverywhere/app/ListFragment;->mList:Lorg/holoeverywhere/widget/ListView;
    invoke-static {v0}, Lorg/holoeverywhere/app/ListFragment;->access$000(Lorg/holoeverywhere/app/ListFragment;)Lorg/holoeverywhere/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lorg/holoeverywhere/app/ListFragment$2;->this$0:Lorg/holoeverywhere/app/ListFragment;

    # getter for: Lorg/holoeverywhere/app/ListFragment;->mList:Lorg/holoeverywhere/widget/ListView;
    invoke-static {v1}, Lorg/holoeverywhere/app/ListFragment;->access$000(Lorg/holoeverywhere/app/ListFragment;)Lorg/holoeverywhere/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 37
    return-void
.end method
