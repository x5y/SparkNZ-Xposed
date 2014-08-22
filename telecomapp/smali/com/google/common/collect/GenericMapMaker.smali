.class public abstract Lcom/google/common/collect/GenericMapMaker;
.super Ljava/lang/Object;
.source "GenericMapMaker.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field evictionListener:Lcom/google/common/collect/MapEvictionListener;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapEvictionListener",
            "<TK0;TV0;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    .local p0, "this":Lcom/google/common/collect/GenericMapMaker;, "Lcom/google/common/collect/GenericMapMaker<TK0;TV0;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract concurrencyLevel(I)Lcom/google/common/collect/GenericMapMaker;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.concurrent.ConcurrentHashMap concurrencyLevel"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method

.method public abstract expiration(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/GenericMapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method

.method public abstract expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/GenericMapMaker;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method

.method public abstract expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/GenericMapMaker;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method

.method public abstract initialCapacity(I)Lcom/google/common/collect/GenericMapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method

.method public abstract makeComputingMap(Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>(",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract makeMap()Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract maximumSize(I)Lcom/google/common/collect/GenericMapMaker;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method

.method public abstract softKeys()Lcom/google/common/collect/GenericMapMaker;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.SoftReference"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method

.method public abstract softValues()Lcom/google/common/collect/GenericMapMaker;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.SoftReference"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method

.method public abstract weakKeys()Lcom/google/common/collect/GenericMapMaker;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method

.method public abstract weakValues()Lcom/google/common/collect/GenericMapMaker;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method
