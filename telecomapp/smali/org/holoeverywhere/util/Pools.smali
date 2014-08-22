.class public Lorg/holoeverywhere/util/Pools;
.super Ljava/lang/Object;
.source "Pools.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static finitePool(Lorg/holoeverywhere/util/PoolableManager;I)Lorg/holoeverywhere/util/Pool;
    .locals 1
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/holoeverywhere/util/Poolable",
            "<TT;>;>(",
            "Lorg/holoeverywhere/util/PoolableManager",
            "<TT;>;I)",
            "Lorg/holoeverywhere/util/Pool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7
    .local p0, "manager":Lorg/holoeverywhere/util/PoolableManager;, "Lorg/holoeverywhere/util/PoolableManager<TT;>;"
    new-instance v0, Lorg/holoeverywhere/util/FinitePool;

    invoke-direct {v0, p0, p1}, Lorg/holoeverywhere/util/FinitePool;-><init>(Lorg/holoeverywhere/util/PoolableManager;I)V

    return-object v0
.end method

.method public static simplePool(Lorg/holoeverywhere/util/PoolableManager;)Lorg/holoeverywhere/util/Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/holoeverywhere/util/Poolable",
            "<TT;>;>(",
            "Lorg/holoeverywhere/util/PoolableManager",
            "<TT;>;)",
            "Lorg/holoeverywhere/util/Pool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "manager":Lorg/holoeverywhere/util/PoolableManager;, "Lorg/holoeverywhere/util/PoolableManager<TT;>;"
    new-instance v0, Lorg/holoeverywhere/util/FinitePool;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/util/FinitePool;-><init>(Lorg/holoeverywhere/util/PoolableManager;)V

    return-object v0
.end method

.method public static synchronizedPool(Lorg/holoeverywhere/util/Pool;)Lorg/holoeverywhere/util/Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/holoeverywhere/util/Poolable",
            "<TT;>;>(",
            "Lorg/holoeverywhere/util/Pool",
            "<TT;>;)",
            "Lorg/holoeverywhere/util/Pool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "pool":Lorg/holoeverywhere/util/Pool;, "Lorg/holoeverywhere/util/Pool<TT;>;"
    new-instance v0, Lorg/holoeverywhere/util/SynchronizedPool;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/util/SynchronizedPool;-><init>(Lorg/holoeverywhere/util/Pool;)V

    return-object v0
.end method

.method public static synchronizedPool(Lorg/holoeverywhere/util/Pool;Ljava/lang/Object;)Lorg/holoeverywhere/util/Pool;
    .locals 1
    .param p1, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/holoeverywhere/util/Poolable",
            "<TT;>;>(",
            "Lorg/holoeverywhere/util/Pool",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/holoeverywhere/util/Pool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "pool":Lorg/holoeverywhere/util/Pool;, "Lorg/holoeverywhere/util/Pool<TT;>;"
    new-instance v0, Lorg/holoeverywhere/util/SynchronizedPool;

    invoke-direct {v0, p0, p1}, Lorg/holoeverywhere/util/SynchronizedPool;-><init>(Lorg/holoeverywhere/util/Pool;Ljava/lang/Object;)V

    return-object v0
.end method
