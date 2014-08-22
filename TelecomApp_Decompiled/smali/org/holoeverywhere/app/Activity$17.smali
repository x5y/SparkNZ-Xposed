.class Lorg/holoeverywhere/app/Activity$17;
.super Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
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

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/app/Activity;ILandroid/view/View;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lorg/holoeverywhere/app/Activity$17;->this$0:Lorg/holoeverywhere/app/Activity;

    iput p2, p0, Lorg/holoeverywhere/app/Activity$17;->val$featureId:I

    iput-object p3, p0, Lorg/holoeverywhere/app/Activity$17;->val$view:Landroid/view/View;

    iput-object p4, p0, Lorg/holoeverywhere/app/Activity$17;->val$menu:Landroid/view/Menu;

    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic action(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 401
    check-cast p1, Lorg/holoeverywhere/addon/IAddonActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Activity$17;->action(Lorg/holoeverywhere/addon/IAddonActivity;)Z

    move-result v0

    return v0
.end method

.method public action(Lorg/holoeverywhere/addon/IAddonActivity;)Z
    .locals 3
    .param p1, "addon"    # Lorg/holoeverywhere/addon/IAddonActivity;

    .prologue
    .line 404
    iget v0, p0, Lorg/holoeverywhere/app/Activity$17;->val$featureId:I

    iget-object v1, p0, Lorg/holoeverywhere/app/Activity$17;->val$view:Landroid/view/View;

    iget-object v2, p0, Lorg/holoeverywhere/app/Activity$17;->val$menu:Landroid/view/Menu;

    invoke-virtual {p1, v0, v1, v2}, Lorg/holoeverywhere/addon/IAddonActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public post()Z
    .locals 4

    .prologue
    .line 409
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity$17;->this$0:Lorg/holoeverywhere/app/Activity;

    iget v1, p0, Lorg/holoeverywhere/app/Activity$17;->val$featureId:I

    iget-object v2, p0, Lorg/holoeverywhere/app/Activity$17;->val$view:Landroid/view/View;

    iget-object v3, p0, Lorg/holoeverywhere/app/Activity$17;->val$menu:Landroid/view/Menu;

    # invokes: Landroid/support/v4/app/FragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    invoke-static {v0, v1, v2, v3}, Lorg/holoeverywhere/app/Activity;->access$1101(Lorg/holoeverywhere/app/Activity;ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
