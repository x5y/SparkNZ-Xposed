.class Lorg/holoeverywhere/app/Activity$26;
.super Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/app/Activity;->supportInvalidateOptionsMenu()V
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
    .line 571
    iput-object p1, p0, Lorg/holoeverywhere/app/Activity$26;->this$0:Lorg/holoeverywhere/app/Activity;

    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic action(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 571
    check-cast p1, Lorg/holoeverywhere/addon/IAddonActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Activity$26;->action(Lorg/holoeverywhere/addon/IAddonActivity;)Z

    move-result v0

    return v0
.end method

.method public action(Lorg/holoeverywhere/addon/IAddonActivity;)Z
    .locals 1
    .param p1, "addon"    # Lorg/holoeverywhere/addon/IAddonActivity;

    .prologue
    .line 574
    invoke-virtual {p1}, Lorg/holoeverywhere/addon/IAddonActivity;->invalidateOptionsMenu()Z

    move-result v0

    return v0
.end method

.method public justPost()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity$26;->this$0:Lorg/holoeverywhere/app/Activity;

    # invokes: Landroid/support/v4/app/_HoloActivity;->supportInvalidateOptionsMenu()V
    invoke-static {v0}, Lorg/holoeverywhere/app/Activity;->access$1301(Lorg/holoeverywhere/app/Activity;)V

    .line 580
    return-void
.end method
