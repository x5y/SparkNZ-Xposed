.class abstract Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;
.super Lcom/google/common/collect/ForwardingConcurrentMap;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractSerializationProxy"
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
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field final concurrencyLevel:I

.field transient delegate:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final evictionListener:Lcom/google/common/collect/MapEvictionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapEvictionListener",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final keyStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

.field final maximumSize:I

.field final valueEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final valueStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;


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
    .line 3730
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;, "Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy<TK;TV;>;"
    .local p3, "keyEquivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p4, "valueEquivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p11, "evictionListener":Lcom/google/common/collect/MapEvictionListener;, "Lcom/google/common/collect/MapEvictionListener<-TK;-TV;>;"
    .local p12, "delegate":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingConcurrentMap;-><init>()V

    .line 3731
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->keyStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    .line 3732
    iput-object p2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->valueStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    .line 3733
    iput-object p3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 3734
    iput-object p4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 3735
    iput-wide p5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->expireAfterWriteNanos:J

    .line 3736
    iput-wide p7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->expireAfterAccessNanos:J

    .line 3737
    iput p9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->maximumSize:I

    .line 3738
    iput p10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->concurrencyLevel:I

    .line 3739
    iput-object p11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->evictionListener:Lcom/google/common/collect/MapEvictionListener;

    .line 3740
    iput-object p12, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    .line 3741
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3707
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;, "Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->delegate()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Map;
    .locals 1

    .prologue
    .line 3707
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;, "Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->delegate()Ljava/util/concurrent/ConcurrentMap;

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
    .line 3745
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;, "Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method readEntries(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 3784
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;, "Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy<TK;TV;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 3785
    .local v0, "key":Ljava/lang/Object;, "TK;"
    if-nez v0, :cond_0

    .line 3791
    return-void

    .line 3788
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 3789
    .local v1, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method readMapMaker(Ljava/io/ObjectInputStream;)Lcom/google/common/collect/MapMaker;
    .locals 7
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;, "Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy<TK;TV;>;"
    const-wide/16 v5, 0x0

    .line 3758
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 3759
    .local v1, "size":I
    new-instance v2, Lcom/google/common/collect/MapMaker;

    invoke-direct {v2}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/common/collect/MapMaker;->initialCapacity(I)Lcom/google/common/collect/MapMaker;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->keyStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/MapMaker;->setKeyStrength(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->valueStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/MapMaker;->setValueStrength(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/MapMaker;->privateKeyEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/MapMaker;->privateValueEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;

    move-result-object v2

    iget v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->concurrencyLevel:I

    invoke-virtual {v2, v3}, Lcom/google/common/collect/MapMaker;->concurrencyLevel(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    .line 3766
    .local v0, "mapMaker":Lcom/google/common/collect/MapMaker;
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->evictionListener:Lcom/google/common/collect/MapEvictionListener;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/MapMaker;->evictionListener(Lcom/google/common/collect/MapEvictionListener;)Lcom/google/common/collect/GenericMapMaker;

    .line 3767
    iget-wide v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->expireAfterWriteNanos:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_0

    .line 3768
    iget-wide v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->expireAfterWriteNanos:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/common/collect/MapMaker;->expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    .line 3770
    :cond_0
    iget-wide v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->expireAfterAccessNanos:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_1

    .line 3771
    iget-wide v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->expireAfterAccessNanos:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/common/collect/MapMaker;->expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    .line 3774
    :cond_1
    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->maximumSize:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 3775
    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->maximumSize:I

    invoke-virtual {v0, v2}, Lcom/google/common/collect/MapMaker;->maximumSize(I)Lcom/google/common/collect/MapMaker;

    .line 3777
    :cond_2
    return-object v0
.end method

.method writeMapTo(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3749
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;, "Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy<TK;TV;>;"
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 3750
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3751
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3752
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 3754
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3755
    return-void
.end method
