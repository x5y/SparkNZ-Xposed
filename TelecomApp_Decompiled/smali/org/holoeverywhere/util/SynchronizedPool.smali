.class public Lorg/holoeverywhere/util/SynchronizedPool;
.super Ljava/lang/Object;
.source "SynchronizedPool.java"

# interfaces
.implements Lorg/holoeverywhere/util/Pool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/holoeverywhere/util/Poolable",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/holoeverywhere/util/Pool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mPool:Lorg/holoeverywhere/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/holoeverywhere/util/Pool",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/holoeverywhere/util/Pool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/holoeverywhere/util/Pool",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 8
    .local p0, "this":Lorg/holoeverywhere/util/SynchronizedPool;, "Lorg/holoeverywhere/util/SynchronizedPool<TT;>;"
    .local p1, "pool":Lorg/holoeverywhere/util/Pool;, "Lorg/holoeverywhere/util/Pool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/holoeverywhere/util/SynchronizedPool;->mPool:Lorg/holoeverywhere/util/Pool;

    .line 10
    iput-object p0, p0, Lorg/holoeverywhere/util/SynchronizedPool;->mLock:Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public constructor <init>(Lorg/holoeverywhere/util/Pool;Ljava/lang/Object;)V
    .locals 0
    .param p2, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/holoeverywhere/util/Pool",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lorg/holoeverywhere/util/SynchronizedPool;, "Lorg/holoeverywhere/util/SynchronizedPool<TT;>;"
    .local p1, "pool":Lorg/holoeverywhere/util/Pool;, "Lorg/holoeverywhere/util/Pool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/holoeverywhere/util/SynchronizedPool;->mPool:Lorg/holoeverywhere/util/Pool;

    .line 15
    iput-object p2, p0, Lorg/holoeverywhere/util/SynchronizedPool;->mLock:Ljava/lang/Object;

    .line 16
    return-void
.end method


# virtual methods
.method public acquire()Lorg/holoeverywhere/util/Poolable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lorg/holoeverywhere/util/SynchronizedPool;, "Lorg/holoeverywhere/util/SynchronizedPool<TT;>;"
    iget-object v1, p0, Lorg/holoeverywhere/util/SynchronizedPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    iget-object v0, p0, Lorg/holoeverywhere/util/SynchronizedPool;->mPool:Lorg/holoeverywhere/util/Pool;

    invoke-interface {v0}, Lorg/holoeverywhere/util/Pool;->acquire()Lorg/holoeverywhere/util/Poolable;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release(Lorg/holoeverywhere/util/Poolable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lorg/holoeverywhere/util/SynchronizedPool;, "Lorg/holoeverywhere/util/SynchronizedPool<TT;>;"
    .local p1, "element":Lorg/holoeverywhere/util/Poolable;, "TT;"
    iget-object v1, p0, Lorg/holoeverywhere/util/SynchronizedPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 28
    :try_start_0
    iget-object v0, p0, Lorg/holoeverywhere/util/SynchronizedPool;->mPool:Lorg/holoeverywhere/util/Pool;

    invoke-interface {v0, p1}, Lorg/holoeverywhere/util/Pool;->release(Lorg/holoeverywhere/util/Poolable;)V

    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
