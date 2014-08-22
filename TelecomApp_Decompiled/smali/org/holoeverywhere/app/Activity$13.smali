.class Lorg/holoeverywhere/app/Activity$13;
.super Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V
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

.field final synthetic val$featureId:I

.field final synthetic val$menu:Landroid/view/Menu;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/app/Activity;ILandroid/view/Menu;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lorg/holoeverywhere/app/Activity$13;->this$0:Lorg/holoeverywhere/app/Activity;

    iput p2, p0, Lorg/holoeverywhere/app/Activity$13;->val$featureId:I

    iput-object p3, p0, Lorg/holoeverywhere/app/Activity$13;->val$menu:Landroid/view/Menu;

    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic justAction(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 326
    check-cast p1, Lorg/holoeverywhere/addon/IAddonActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Activity$13;->justAction(Lorg/holoeverywhere/addon/IAddonActivity;)V

    return-void
.end method

.method public justAction(Lorg/holoeverywhere/addon/IAddonActivity;)V
    .locals 2
    .param p1, "addon"    # Lorg/holoeverywhere/addon/IAddonActivity;

    .prologue
    .line 329
    iget v0, p0, Lorg/holoeverywhere/app/Activity$13;->val$featureId:I

    iget-object v1, p0, Lorg/holoeverywhere/app/Activity$13;->val$menu:Landroid/view/Menu;

    invoke-virtual {p1, v0, v1}, Lorg/holoeverywhere/addon/IAddonActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 330
    return-void
.end method
