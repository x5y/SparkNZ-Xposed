.class Lorg/holoeverywhere/app/Activity$8;
.super Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/app/Activity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback",
        "<",
        "Lorg/holoeverywhere/addon/IAddonActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/app/Activity;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/app/Activity;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lorg/holoeverywhere/app/Activity$8;->this$0:Lorg/holoeverywhere/app/Activity;

    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic justAction(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 253
    check-cast p1, Lorg/holoeverywhere/addon/IAddonActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Activity$8;->justAction(Lorg/holoeverywhere/addon/IAddonActivity;)V

    return-void
.end method

.method public justAction(Lorg/holoeverywhere/addon/IAddonActivity;)V
    .locals 0
    .param p1, "addon"    # Lorg/holoeverywhere/addon/IAddonActivity;

    .prologue
    .line 256
    invoke-virtual {p1}, Lorg/holoeverywhere/addon/IAddonActivity;->onDestroy()V

    .line 257
    return-void
.end method
