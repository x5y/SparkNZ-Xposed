.class Lorg/holoeverywhere/app/Activity$25;
.super Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/app/Activity;->requestWindowFeature(J)V
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


# direct methods
.method constructor <init>(Lorg/holoeverywhere/app/Activity;I)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lorg/holoeverywhere/app/Activity$25;->this$0:Lorg/holoeverywhere/app/Activity;

    iput p2, p0, Lorg/holoeverywhere/app/Activity$25;->val$featureId:I

    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic action(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 504
    check-cast p1, Lorg/holoeverywhere/addon/IAddonActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Activity$25;->action(Lorg/holoeverywhere/addon/IAddonActivity;)Z

    move-result v0

    return v0
.end method

.method public action(Lorg/holoeverywhere/addon/IAddonActivity;)Z
    .locals 1
    .param p1, "addon"    # Lorg/holoeverywhere/addon/IAddonActivity;

    .prologue
    .line 507
    iget v0, p0, Lorg/holoeverywhere/app/Activity$25;->val$featureId:I

    invoke-virtual {p1, v0}, Lorg/holoeverywhere/addon/IAddonActivity;->requestWindowFeature(I)Z

    move-result v0

    return v0
.end method

.method public justPost()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lorg/holoeverywhere/app/Activity$25;->this$0:Lorg/holoeverywhere/app/Activity;

    iget v1, p0, Lorg/holoeverywhere/app/Activity$25;->val$featureId:I

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/app/Activity;->requestWindowFeature(I)Z

    .line 513
    return-void
.end method
