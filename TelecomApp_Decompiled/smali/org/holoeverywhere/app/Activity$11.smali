.class Lorg/holoeverywhere/app/Activity$11;
.super Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z
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
    .line 295
    iput-object p1, p0, Lorg/holoeverywhere/app/Activity$11;->this$0:Lorg/holoeverywhere/app/Activity;

    iput p2, p0, Lorg/holoeverywhere/app/Activity$11;->val$featureId:I

    iput-object p3, p0, Lorg/holoeverywhere/app/Activity$11;->val$menu:Landroid/view/Menu;

    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic action(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 295
    check-cast p1, Lorg/holoeverywhere/addon/IAddonActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Activity$11;->action(Lorg/holoeverywhere/addon/IAddonActivity;)Z

    move-result v0

    return v0
.end method

.method public action(Lorg/holoeverywhere/addon/IAddonActivity;)Z
    .locals 2
    .param p1, "addon"    # Lorg/holoeverywhere/addon/IAddonActivity;

    .prologue
    .line 298
    iget v0, p0, Lorg/holoeverywhere/app/Activity$11;->val$featureId:I

    iget-object v1, p0, Lorg/holoeverywhere/app/Activity$11;->val$menu:Landroid/view/Menu;

    invoke-virtual {p1, v0, v1}, Lorg/holoeverywhere/addon/IAddonActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public post()Z
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity$11;->this$0:Lorg/holoeverywhere/app/Activity;

    iget v1, p0, Lorg/holoeverywhere/app/Activity$11;->val$featureId:I

    iget-object v2, p0, Lorg/holoeverywhere/app/Activity$11;->val$menu:Landroid/view/Menu;

    # invokes: Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z
    invoke-static {v0, v1, v2}, Lorg/holoeverywhere/app/Activity;->access$1001(Lorg/holoeverywhere/app/Activity;ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method
