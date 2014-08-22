.class Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy;
.super Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxy"
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


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;Lcom/google/common/collect/CustomConcurrentHashMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/MapEvictionListener;Ljava/util/concurrent/ConcurrentMap;)V
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
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3813
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy;, "Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy<TK;TV;>;"
    .local p3, "keyEquivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p4, "valueEquivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p11, "evictionListener":Lcom/google/common/collect/MapEvictionListener;, "Lcom/google/common/collect/MapEvictionListener<-TK;-TV;>;"
    .local p12, "delegate":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TK;TV;>;"
    invoke-direct/range {p0 .. p12}, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;Lcom/google/common/collect/CustomConcurrentHashMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/MapEvictionListener;Ljava/util/concurrent/ConcurrentMap;)V

    .line 3816
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
    .line 3826
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy;, "Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3827
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy;->readMapMaker(Ljava/io/ObjectInputStream;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    .line 3828
    .local v0, "mapMaker":Lcom/google/common/collect/MapMaker;
    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    .line 3829
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy;->readEntries(Ljava/io/ObjectInputStream;)V

    .line 3830
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3833
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy;, "Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
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
    .line 3819
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy;, "Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 3820
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy;->writeMapTo(Ljava/io/ObjectOutputStream;)V

    .line 3821
    return-void
.end method
