.class public interface abstract Lorg/holoeverywhere/util/PoolableManager;
.super Ljava/lang/Object;
.source "PoolableManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/holoeverywhere/util/Poolable",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract newInstance()Lorg/holoeverywhere/util/Poolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract onAcquired(Lorg/holoeverywhere/util/Poolable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onReleased(Lorg/holoeverywhere/util/Poolable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
