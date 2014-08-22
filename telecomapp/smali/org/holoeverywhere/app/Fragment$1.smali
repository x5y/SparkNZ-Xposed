.class Lorg/holoeverywhere/app/Fragment$1;
.super Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/app/Fragment;->onCreate(Landroid/os/Bundle;)V
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


# direct methods
.method constructor <init>(Lorg/holoeverywhere/app/Fragment;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lorg/holoeverywhere/app/Fragment$1;->this$0:Lorg/holoeverywhere/app/Fragment;

    iput-object p2, p0, Lorg/holoeverywhere/app/Fragment$1;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic justAction(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 120
    check-cast p1, Lorg/holoeverywhere/addon/IAddonFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Fragment$1;->justAction(Lorg/holoeverywhere/addon/IAddonFragment;)V

    return-void
.end method

.method public justAction(Lorg/holoeverywhere/addon/IAddonFragment;)V
    .locals 1
    .param p1, "addon"    # Lorg/holoeverywhere/addon/IAddonFragment;

    .prologue
    .line 123
    iget-object v0, p0, Lorg/holoeverywhere/app/Fragment$1;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lorg/holoeverywhere/addon/IAddonFragment;->onPreCreate(Landroid/os/Bundle;)V

    .line 124
    return-void
.end method
