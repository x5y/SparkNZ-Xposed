.class Lorg/holoeverywhere/app/ListActivity$2;
.super Ljava/lang/Object;
.source "ListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/app/ListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/app/ListActivity;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/app/ListActivity;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lorg/holoeverywhere/app/ListActivity$2;->this$0:Lorg/holoeverywhere/app/ListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lorg/holoeverywhere/app/ListActivity$2;->this$0:Lorg/holoeverywhere/app/ListActivity;

    iget-object v0, v0, Lorg/holoeverywhere/app/ListActivity;->mList:Lorg/holoeverywhere/widget/ListView;

    iget-object v1, p0, Lorg/holoeverywhere/app/ListActivity$2;->this$0:Lorg/holoeverywhere/app/ListActivity;

    iget-object v1, v1, Lorg/holoeverywhere/app/ListActivity;->mList:Lorg/holoeverywhere/widget/ListView;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 32
    return-void
.end method
