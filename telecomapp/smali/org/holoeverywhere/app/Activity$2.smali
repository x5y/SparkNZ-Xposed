.class Lorg/holoeverywhere/app/Activity$2;
.super Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/app/Activity;->onActivityResult(IILandroid/content/Intent;)V
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

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lorg/holoeverywhere/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lorg/holoeverywhere/app/Activity$2;->this$0:Lorg/holoeverywhere/app/Activity;

    iput p2, p0, Lorg/holoeverywhere/app/Activity$2;->val$requestCode:I

    iput p3, p0, Lorg/holoeverywhere/app/Activity$2;->val$resultCode:I

    iput-object p4, p0, Lorg/holoeverywhere/app/Activity$2;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic justAction(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 178
    check-cast p1, Lorg/holoeverywhere/addon/IAddonActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Activity$2;->justAction(Lorg/holoeverywhere/addon/IAddonActivity;)V

    return-void
.end method

.method public justAction(Lorg/holoeverywhere/addon/IAddonActivity;)V
    .locals 3
    .param p1, "addon"    # Lorg/holoeverywhere/addon/IAddonActivity;

    .prologue
    .line 181
    iget v0, p0, Lorg/holoeverywhere/app/Activity$2;->val$requestCode:I

    iget v1, p0, Lorg/holoeverywhere/app/Activity$2;->val$resultCode:I

    iget-object v2, p0, Lorg/holoeverywhere/app/Activity$2;->val$data:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1, v2}, Lorg/holoeverywhere/addon/IAddonActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 182
    return-void
.end method
