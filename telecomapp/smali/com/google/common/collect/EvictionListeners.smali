.class public final Lcom/google/common/collect/EvictionListeners;
.super Ljava/lang/Object;
.source "EvictionListeners.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asynchronous(Lcom/google/common/collect/MapEvictionListener;Ljava/util/concurrent/Executor;)Lcom/google/common/collect/MapEvictionListener;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapEvictionListener",
            "<TK;TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/collect/MapEvictionListener",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "listener":Lcom/google/common/collect/MapEvictionListener;, "Lcom/google/common/collect/MapEvictionListener<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/EvictionListeners$1;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/EvictionListeners$1;-><init>(Ljava/util/concurrent/Executor;Lcom/google/common/collect/MapEvictionListener;)V

    return-object v0
.end method
