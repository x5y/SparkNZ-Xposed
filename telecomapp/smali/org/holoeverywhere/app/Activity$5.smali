.class Lorg/holoeverywhere/app/Activity$5;
.super Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/app/Activity;->onCreate(Landroid/os/Bundle;)V
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

.field final synthetic val$state:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lorg/holoeverywhere/app/Activity$5;->this$0:Lorg/holoeverywhere/app/Activity;

    iput-object p2, p0, Lorg/holoeverywhere/app/Activity$5;->val$state:Landroid/os/Bundle;

    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic justAction(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 216
    check-cast p1, Lorg/holoeverywhere/addon/IAddonActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Activity$5;->justAction(Lorg/holoeverywhere/addon/IAddonActivity;)V

    return-void
.end method

.method public justAction(Lorg/holoeverywhere/addon/IAddonActivity;)V
    .locals 1
    .param p1, "addon"    # Lorg/holoeverywhere/addon/IAddonActivity;

    .prologue
    .line 219
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity$5;->val$state:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lorg/holoeverywhere/addon/IAddonActivity;->onPreCreate(Landroid/os/Bundle;)V

    .line 220
    return-void
.end method
