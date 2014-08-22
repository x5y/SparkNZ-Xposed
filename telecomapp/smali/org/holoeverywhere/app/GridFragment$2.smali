.class Lorg/holoeverywhere/app/GridFragment$2;
.super Ljava/lang/Object;
.source "GridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/app/GridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/app/GridFragment;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/app/GridFragment;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lorg/holoeverywhere/app/GridFragment$2;->this$0:Lorg/holoeverywhere/app/GridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment$2;->this$0:Lorg/holoeverywhere/app/GridFragment;

    # getter for: Lorg/holoeverywhere/app/GridFragment;->mGrid:Lorg/holoeverywhere/widget/GridView;
    invoke-static {v0}, Lorg/holoeverywhere/app/GridFragment;->access$000(Lorg/holoeverywhere/app/GridFragment;)Lorg/holoeverywhere/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lorg/holoeverywhere/app/GridFragment$2;->this$0:Lorg/holoeverywhere/app/GridFragment;

    # getter for: Lorg/holoeverywhere/app/GridFragment;->mGrid:Lorg/holoeverywhere/widget/GridView;
    invoke-static {v1}, Lorg/holoeverywhere/app/GridFragment;->access$000(Lorg/holoeverywhere/app/GridFragment;)Lorg/holoeverywhere/widget/GridView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/GridView;->focusableViewAvailable(Landroid/view/View;)V

    .line 37
    return-void
.end method
