.class Lcom/google/common/collect/MapMaker$ComputingMapAdapter;
.super Lcom/google/common/collect/ForwardingConcurrentMap;
.source "MapMaker.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComputingMapAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final cache:Lcom/google/common/collect/MapMaker$Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMaker$Cache",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker$Cache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$Cache",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 838
    .local p0, "this":Lcom/google/common/collect/MapMaker$ComputingMapAdapter;, "Lcom/google/common/collect/MapMaker$ComputingMapAdapter<TK;TV;>;"
    .local p1, "cache":Lcom/google/common/collect/MapMaker$Cache;, "Lcom/google/common/collect/MapMaker$Cache<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingConcurrentMap;-><init>()V

    .line 839
    iput-object p1, p0, Lcom/google/common/collect/MapMaker$ComputingMapAdapter;->cache:Lcom/google/common/collect/MapMaker$Cache;

    .line 840
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 832
    .local p0, "this":Lcom/google/common/collect/MapMaker$ComputingMapAdapter;, "Lcom/google/common/collect/MapMaker$ComputingMapAdapter<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$ComputingMapAdapter;->delegate()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Map;
    .locals 1

    .prologue
    .line 832
    .local p0, "this":Lcom/google/common/collect/MapMaker$ComputingMapAdapter;, "Lcom/google/common/collect/MapMaker$ComputingMapAdapter<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$ComputingMapAdapter;->delegate()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 843
    .local p0, "this":Lcom/google/common/collect/MapMaker$ComputingMapAdapter;, "Lcom/google/common/collect/MapMaker$ComputingMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$ComputingMapAdapter;->cache:Lcom/google/common/collect/MapMaker$Cache;

    invoke-interface {v0}, Lcom/google/common/collect/MapMaker$Cache;->asMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 848
    .local p0, "this":Lcom/google/common/collect/MapMaker$ComputingMapAdapter;, "Lcom/google/common/collect/MapMaker$ComputingMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$ComputingMapAdapter;->cache:Lcom/google/common/collect/MapMaker$Cache;

    invoke-interface {v0, p1}, Lcom/google/common/collect/MapMaker$Cache;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
