.class Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;
.super Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;
.source "ComputingConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ComputingConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComputingSerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field transient cache:Lcom/google/common/collect/MapMaker$Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMaker$Cache",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final computingFunction:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;Lcom/google/common/collect/CustomConcurrentHashMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/MapEvictionListener;Ljava/util/concurrent/ConcurrentMap;Lcom/google/common/base/Function;)V
    .locals 0
    .param p1, "keyStrength"    # Lcom/google/common/collect/CustomConcurrentHashMap$Strength;
    .param p2, "valueStrength"    # Lcom/google/common/collect/CustomConcurrentHashMap$Strength;
    .param p5, "expireAfterWriteNanos"    # J
    .param p7, "expireAfterAccessNanos"    # J
    .param p9, "maximumSize"    # I
    .param p10, "concurrencyLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Strength;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Strength;",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;JJII",
            "Lcom/google/common/collect/MapEvictionListener",
            "<-TK;-TV;>;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy<TK;TV;>;"
    .local p3, "keyEquivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p4, "valueEquivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p11, "evictionListener":Lcom/google/common/collect/MapEvictionListener;, "Lcom/google/common/collect/MapEvictionListener<-TK;-TV;>;"
    .local p12, "delegate":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TK;TV;>;"
    .local p13, "computingFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;+TV;>;"
    invoke-direct/range {p0 .. p12}, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;Lcom/google/common/collect/CustomConcurrentHashMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/MapEvictionListener;Ljava/util/concurrent/ConcurrentMap;)V

    .line 383
    iput-object p13, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->computingFunction:Lcom/google/common/base/Function;

    .line 384
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 396
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->readMapMaker(Ljava/io/ObjectInputStream;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    .line 397
    .local v0, "mapMaker":Lcom/google/common/collect/MapMaker;
    iget-object v1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->computingFunction:Lcom/google/common/base/Function;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->makeCache(Lcom/google/common/base/Function;)Lcom/google/common/collect/MapMaker$Cache;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->cache:Lcom/google/common/collect/MapMaker$Cache;

    .line 398
    iget-object v1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->cache:Lcom/google/common/collect/MapMaker$Cache;

    invoke-interface {v1}, Lcom/google/common/collect/MapMaker$Cache;->asMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    .line 399
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->readEntries(Ljava/io/ObjectInputStream;)V

    .line 400
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 389
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->writeMapTo(Ljava/io/ObjectOutputStream;)V

    .line 390
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy<TK;TV;>;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->cache:Lcom/google/common/collect/MapMaker$Cache;

    invoke-interface {v0, p1}, Lcom/google/common/collect/MapMaker$Cache;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public asMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 403
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->cache:Lcom/google/common/collect/MapMaker$Cache;

    return-object v0
.end method
