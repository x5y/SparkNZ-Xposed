.class Lorg/holoeverywhere/app/Activity$3;
.super Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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

.field final synthetic val$newConfig:Landroid/content/res/Configuration;

.field final synthetic val$oldConfig:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lorg/holoeverywhere/app/Activity$3;->this$0:Lorg/holoeverywhere/app/Activity;

    iput-object p2, p0, Lorg/holoeverywhere/app/Activity$3;->val$oldConfig:Landroid/content/res/Configuration;

    iput-object p3, p0, Lorg/holoeverywhere/app/Activity$3;->val$newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic justAction(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 190
    check-cast p1, Lorg/holoeverywhere/addon/IAddonActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Activity$3;->justAction(Lorg/holoeverywhere/addon/IAddonActivity;)V

    return-void
.end method

.method public justAction(Lorg/holoeverywhere/addon/IAddonActivity;)V
    .locals 2
    .param p1, "addon"    # Lorg/holoeverywhere/addon/IAddonActivity;

    .prologue
    .line 193
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity$3;->val$oldConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Lorg/holoeverywhere/app/Activity$3;->val$newConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, v1}, Lorg/holoeverywhere/addon/IAddonActivity;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 194
    return-void
.end method
