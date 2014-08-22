.class public abstract Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;
.super Ljava/lang/Object;
.source "IAddonAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/addon/IAddonAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AddonCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;, "Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;, "Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback<TV;>;"
    .local p1, "addon":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;->justAction(Ljava/lang/Object;)V

    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public justAction(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;, "Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback<TV;>;"
    .local p1, "addon":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public justPost()V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;, "Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback<TV;>;"
    return-void
.end method

.method public post()Z
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;, "Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback<TV;>;"
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;->justPost()V

    .line 23
    const/4 v0, 0x0

    return v0
.end method
