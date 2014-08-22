.class public Lorg/holoeverywhere/util/FinitePool;
.super Ljava/lang/Object;
.source "FinitePool.java"

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


# static fields
.field private static final TAG:Ljava/lang/String; = "FinitePool"


# instance fields
.field private final mInfinite:Z

.field private final mLimit:I

.field private final mManager:Lorg/holoeverywhere/util/PoolableManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/holoeverywhere/util/PoolableManager",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mPoolCount:I

.field private mRoot:Lorg/holoeverywhere/util/Poolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/holoeverywhere/util/PoolableManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/holoeverywhere/util/PoolableManager",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lorg/holoeverywhere/util/FinitePool;, "Lorg/holoeverywhere/util/FinitePool<TT;>;"
    .local p1, "manager":Lorg/holoeverywhere/util/PoolableManager;, "Lorg/holoeverywhere/util/PoolableManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/holoeverywhere/util/FinitePool;->mManager:Lorg/holoeverywhere/util/PoolableManager;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lorg/holoeverywhere/util/FinitePool;->mLimit:I

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/util/FinitePool;->mInfinite:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Lorg/holoeverywhere/util/PoolableManager;I)V
    .locals 2
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/holoeverywhere/util/PoolableManager",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lorg/holoeverywhere/util/FinitePool;, "Lorg/holoeverywhere/util/FinitePool<TT;>;"
    .local p1, "manager":Lorg/holoeverywhere/util/PoolableManager;, "Lorg/holoeverywhere/util/PoolableManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-gtz p2, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The pool limit must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lorg/holoeverywhere/util/FinitePool;->mManager:Lorg/holoeverywhere/util/PoolableManager;

    .line 25
    iput p2, p0, Lorg/holoeverywhere/util/FinitePool;->mLimit:I

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/util/FinitePool;->mInfinite:Z

    .line 27
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
    .line 32
    .local p0, "this":Lorg/holoeverywhere/util/FinitePool;, "Lorg/holoeverywhere/util/FinitePool<TT;>;"
    iget-object v1, p0, Lorg/holoeverywhere/util/FinitePool;->mRoot:Lorg/holoeverywhere/util/Poolable;

    if-eqz v1, :cond_1

    .line 33
    iget-object v0, p0, Lorg/holoeverywhere/util/FinitePool;->mRoot:Lorg/holoeverywhere/util/Poolable;

    .line 34
    .local v0, "element":Lorg/holoeverywhere/util/Poolable;, "TT;"
    invoke-interface {v0}, Lorg/holoeverywhere/util/Poolable;->getNextPoolable()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/util/Poolable;

    iput-object v1, p0, Lorg/holoeverywhere/util/FinitePool;->mRoot:Lorg/holoeverywhere/util/Poolable;

    .line 35
    iget v1, p0, Lorg/holoeverywhere/util/FinitePool;->mPoolCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/holoeverywhere/util/FinitePool;->mPoolCount:I

    .line 39
    :goto_0
    if-eqz v0, :cond_0

    .line 40
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/holoeverywhere/util/Poolable;->setNextPoolable(Ljava/lang/Object;)V

    .line 41
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/holoeverywhere/util/Poolable;->setPooled(Z)V

    .line 42
    iget-object v1, p0, Lorg/holoeverywhere/util/FinitePool;->mManager:Lorg/holoeverywhere/util/PoolableManager;

    invoke-interface {v1, v0}, Lorg/holoeverywhere/util/PoolableManager;->onAcquired(Lorg/holoeverywhere/util/Poolable;)V

    .line 44
    :cond_0
    return-object v0

    .line 37
    .end local v0    # "element":Lorg/holoeverywhere/util/Poolable;, "TT;"
    :cond_1
    iget-object v1, p0, Lorg/holoeverywhere/util/FinitePool;->mManager:Lorg/holoeverywhere/util/PoolableManager;

    invoke-interface {v1}, Lorg/holoeverywhere/util/PoolableManager;->newInstance()Lorg/holoeverywhere/util/Poolable;

    move-result-object v0

    .restart local v0    # "element":Lorg/holoeverywhere/util/Poolable;, "TT;"
    goto :goto_0
.end method

.method public release(Lorg/holoeverywhere/util/Poolable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lorg/holoeverywhere/util/FinitePool;, "Lorg/holoeverywhere/util/FinitePool<TT;>;"
    .local p1, "element":Lorg/holoeverywhere/util/Poolable;, "TT;"
    invoke-interface {p1}, Lorg/holoeverywhere/util/Poolable;->isPooled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    iget-boolean v0, p0, Lorg/holoeverywhere/util/FinitePool;->mInfinite:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/holoeverywhere/util/FinitePool;->mPoolCount:I

    iget v1, p0, Lorg/holoeverywhere/util/FinitePool;->mLimit:I

    if-ge v0, v1, :cond_1

    .line 51
    :cond_0
    iget v0, p0, Lorg/holoeverywhere/util/FinitePool;->mPoolCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/holoeverywhere/util/FinitePool;->mPoolCount:I

    .line 52
    iget-object v0, p0, Lorg/holoeverywhere/util/FinitePool;->mRoot:Lorg/holoeverywhere/util/Poolable;

    invoke-interface {p1, v0}, Lorg/holoeverywhere/util/Poolable;->setNextPoolable(Ljava/lang/Object;)V

    .line 53
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/holoeverywhere/util/Poolable;->setPooled(Z)V

    .line 54
    iput-object p1, p0, Lorg/holoeverywhere/util/FinitePool;->mRoot:Lorg/holoeverywhere/util/Poolable;

    .line 56
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/util/FinitePool;->mManager:Lorg/holoeverywhere/util/PoolableManager;

    invoke-interface {v0, p1}, Lorg/holoeverywhere/util/PoolableManager;->onReleased(Lorg/holoeverywhere/util/Poolable;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_2
    const-string v0, "FinitePool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Element is already in pool: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
