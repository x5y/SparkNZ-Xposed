.class Lorg/holoeverywhere/app/Fragment$4;
.super Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback",
        "<",
        "Lorg/holoeverywhere/addon/IAddonFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/app/Fragment;

.field final synthetic val$savedInstanceState:Landroid/os/Bundle;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lorg/holoeverywhere/app/Fragment$4;->this$0:Lorg/holoeverywhere/app/Fragment;

    iput-object p2, p0, Lorg/holoeverywhere/app/Fragment$4;->val$view:Landroid/view/View;

    iput-object p3, p0, Lorg/holoeverywhere/app/Fragment$4;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic justAction(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 149
    check-cast p1, Lorg/holoeverywhere/addon/IAddonFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Fragment$4;->justAction(Lorg/holoeverywhere/addon/IAddonFragment;)V

    return-void
.end method

.method public justAction(Lorg/holoeverywhere/addon/IAddonFragment;)V
    .locals 2
    .param p1, "addon"    # Lorg/holoeverywhere/addon/IAddonFragment;

    .prologue
    .line 152
    iget-object v0, p0, Lorg/holoeverywhere/app/Fragment$4;->val$view:Landroid/view/View;

    iget-object v1, p0, Lorg/holoeverywhere/app/Fragment$4;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Lorg/holoeverywhere/addon/IAddonFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 153
    return-void
.end method
