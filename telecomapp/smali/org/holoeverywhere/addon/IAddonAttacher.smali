.class public interface abstract Lorg/holoeverywhere/addon/IAddonAttacher;
.super Ljava/lang/Object;
.source "IAddonAttacher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/addon/IAddonAttacher$AttachException;,
        Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lorg/holoeverywhere/addon/IAddonBase",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TV;>(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;)TT;"
        }
    .end annotation
.end method

.method public abstract addon(Ljava/lang/String;)Lorg/holoeverywhere/addon/IAddonBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TV;>(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract addon(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract isAddonAttached(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract lockAttaching()V
.end method

.method public abstract obtainAddonsList()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract performAddonAction(Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback",
            "<TV;>;)Z"
        }
    .end annotation
.end method
