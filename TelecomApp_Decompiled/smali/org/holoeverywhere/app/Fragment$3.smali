.class Lorg/holoeverywhere/app/Fragment$3;
.super Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/app/Fragment;->onDestroyView()V
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


# direct methods
.method constructor <init>(Lorg/holoeverywhere/app/Fragment;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lorg/holoeverywhere/app/Fragment$3;->this$0:Lorg/holoeverywhere/app/Fragment;

    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic justAction(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 137
    check-cast p1, Lorg/holoeverywhere/addon/IAddonFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Fragment$3;->justAction(Lorg/holoeverywhere/addon/IAddonFragment;)V

    return-void
.end method

.method public justAction(Lorg/holoeverywhere/addon/IAddonFragment;)V
    .locals 0
    .param p1, "addon"    # Lorg/holoeverywhere/addon/IAddonFragment;

    .prologue
    .line 140
    invoke-virtual {p1}, Lorg/holoeverywhere/addon/IAddonFragment;->onDestroyView()V

    .line 141
    return-void
.end method
