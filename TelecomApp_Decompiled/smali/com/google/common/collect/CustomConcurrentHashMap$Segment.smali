.class Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;
    }
.end annotation


# instance fields
.field final cleanupQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final cleanupRunnable:Ljava/lang/Runnable;

.field volatile count:I

.field final evictionQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final expirationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final maxSegmentSize:I

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final recencyQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

.field threshold:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;II)V
    .locals 1
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I

    .prologue
    .line 2013
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1981
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->cleanupQueue:Ljava/util/Queue;

    .line 1996
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2830
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$1;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->cleanupRunnable:Ljava/lang/Runnable;

    .line 2014
    iput p3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->maxSegmentSize:I

    .line 2015
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2017
    invoke-virtual {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->evictsBySize()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->recencyQueue:Ljava/util/Queue;

    .line 2021
    invoke-virtual {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->evictsBySize()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment;)V

    :goto_1
    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->evictionQueue:Ljava/util/Queue;

    .line 2025
    invoke-virtual {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->expires()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment;)V

    :goto_2
    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->expirationQueue:Ljava/util/Queue;

    .line 2028
    return-void

    .line 2017
    :cond_1
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_0

    .line 2021
    :cond_2
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_1

    .line 2025
    :cond_3
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method clear()V
    .locals 4

    .prologue
    .line 2868
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    if-eqz v2, :cond_1

    .line 2869
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2871
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2872
    .local v1, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2873
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2872
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2875
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 2876
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 2877
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2879
    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->modCount:I

    .line 2880
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2882
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2885
    .end local v0    # "i":I
    .end local v1    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    :cond_1
    return-void

    .line 2882
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    throw v2
.end method

.method clearValue(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z
    .locals 5
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    const/4 v3, 0x0

    .line 2677
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2679
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->getFirst(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 2681
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2682
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v4, v4, Lcom/google/common/collect/CustomConcurrentHashMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v4, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2684
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v2

    .line 2685
    .local v2, "v":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    if-ne v2, p3, :cond_0

    .line 2686
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->enqueueCleanup(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2687
    const/4 v3, 0x1

    .line 2695
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v2    # "v":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    :goto_1
    return v3

    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v2    # "v":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    goto :goto_1

    .line 2680
    .end local v2    # "v":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2695
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    goto :goto_1

    .end local v0    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    throw v3
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    const/4 v2, 0x0

    .line 2258
    iget v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    if-eqz v3, :cond_2

    .line 2259
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->getFirst(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 2261
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v3

    if-eq v3, p2, :cond_1

    .line 2260
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2265
    :cond_1
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2266
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_0

    .line 2270
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v3, v3, Lcom/google/common/collect/CustomConcurrentHashMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v3, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2271
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->getLiveValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 2276
    .end local v0    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_2
    return v2
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 2280
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    iget v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    if-eqz v5, :cond_3

    .line 2281
    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2282
    .local v4, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    .line 2283
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 2284
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 2286
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->getLiveValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v1

    .line 2287
    .local v1, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_1

    .line 2285
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_1

    .line 2290
    :cond_1
    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v5, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2291
    const/4 v5, 0x1

    .line 2297
    .end local v0    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v1    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    :goto_2
    return v5

    .line 2283
    .restart local v0    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    .restart local v4    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2297
    .end local v0    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method drainRecencyQueue()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2117
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 2122
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2123
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2125
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->expiresAfterAccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2126
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2129
    :cond_2
    return-void
.end method

.method enqueueCleanup(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2734
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->unset()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    .line 2735
    .local v0, "unset":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    invoke-interface {p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 2736
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->cleanupQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2737
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2738
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2739
    return-void
.end method

.method evictEntries()Z
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2180
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->evictsBySize()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->maxSegmentSize:I

    if-lt v1, v2, :cond_1

    .line 2181
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->drainRecencyQueue()V

    .line 2183
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2184
    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unsetEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2185
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2187
    :cond_0
    const/4 v1, 0x1

    .line 2189
    .end local v0    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method expand()V
    .locals 14
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2445
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    iget-object v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2446
    .local v10, "oldTable":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    .line 2447
    .local v8, "oldCapacity":I
    const/high16 v13, 0x40000000

    if-lt v8, v13, :cond_0

    .line 2511
    :goto_0
    return-void

    .line 2465
    :cond_0
    shl-int/lit8 v13, v8, 0x1

    invoke-virtual {p0, v13}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v6

    .line 2467
    .local v6, "newTable":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v13

    mul-int/lit8 v13, v13, 0x3

    div-int/lit8 v13, v13, 0x4

    iput v13, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->threshold:I

    .line 2468
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v13

    add-int/lit8 v4, v13, -0x1

    .line 2469
    .local v4, "newMask":I
    const/4 v9, 0x0

    .local v9, "oldIndex":I
    :goto_1
    if-ge v9, v8, :cond_6

    .line 2472
    invoke-virtual {v10, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2474
    .local v1, "head":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    if-eqz v1, :cond_1

    .line 2475
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v7

    .line 2476
    .local v7, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v13

    and-int v2, v13, v4

    .line 2479
    .local v2, "headIndex":I
    if-nez v7, :cond_2

    .line 2480
    invoke-virtual {v6, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2469
    .end local v2    # "headIndex":I
    .end local v7    # "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2485
    .restart local v2    # "headIndex":I
    .restart local v7    # "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :cond_2
    move-object v11, v1

    .line 2486
    .local v11, "tail":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    move v12, v2

    .line 2487
    .local v12, "tailIndex":I
    move-object v0, v7

    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_4

    .line 2488
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v13

    and-int v3, v13, v4

    .line 2489
    .local v3, "newIndex":I
    if-eq v3, v12, :cond_3

    .line 2491
    move v12, v3

    .line 2492
    move-object v11, v0

    .line 2487
    :cond_3
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_2

    .line 2495
    .end local v3    # "newIndex":I
    :cond_4
    invoke-virtual {v6, v12, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2498
    move-object v0, v1

    :goto_3
    if-eq v0, v11, :cond_1

    .line 2499
    iget-object v13, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v13, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->isCollected(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2500
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v13

    invoke-virtual {p0, v0, v13}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unsetLiveEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    .line 2498
    :goto_4
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_3

    .line 2502
    :cond_5
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v13

    and-int v3, v13, v4

    .line 2503
    .restart local v3    # "newIndex":I
    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2504
    .local v5, "newNext":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iget-object v13, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v13, v0, v5}, Lcom/google/common/collect/CustomConcurrentHashMap;->copyEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v13

    invoke-virtual {v6, v3, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    .line 2510
    .end local v0    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v1    # "head":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v2    # "headIndex":I
    .end local v3    # "newIndex":I
    .end local v5    # "newNext":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v7    # "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v11    # "tail":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v12    # "tailIndex":I
    :cond_6
    iput-object v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    goto :goto_0
.end method

.method expireEntries()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2154
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->drainRecencyQueue()V

    .line 2156
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2168
    :cond_0
    return-void

    .line 2161
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v3, v3, Lcom/google/common/collect/CustomConcurrentHashMap;->ticker:Lcom/google/common/base/Ticker;

    invoke-interface {v3}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v1

    .line 2163
    .local v1, "now":J
    :cond_2
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/common/collect/CustomConcurrentHashMap;->isExpired(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2164
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unsetEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2165
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 2229
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    :try_start_0
    iget v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    if-eqz v3, :cond_3

    .line 2230
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->getFirst(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 2232
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v3

    if-eq v3, p2, :cond_1

    .line 2231
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2236
    :cond_1
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2237
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_0

    .line 2241
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v3, v3, Lcom/google/common/collect/CustomConcurrentHashMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v3, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2242
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->getLiveValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v2

    .line 2243
    .local v2, "value":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_2

    .line 2244
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->recordRead(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2253
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postReadCleanup()V

    .end local v0    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v2

    .line 2251
    :cond_3
    const/4 v2, 0x0

    .line 2253
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postReadCleanup()V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postReadCleanup()V

    throw v3
.end method

.method getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2208
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->getFirst(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 2210
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 2209
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2214
    :cond_1
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2215
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_0

    .line 2219
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v2, v2, Lcom/google/common/collect/CustomConcurrentHashMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2224
    .end local v0    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :goto_1
    return-object v0

    .restart local v0    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getFirst(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2197
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2198
    .local v0, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v1
.end method

.method getLiveValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 2746
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 2757
    :cond_0
    :goto_0
    return-object v0

    .line 2749
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2750
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_2

    move-object v0, v1

    .line 2751
    goto :goto_0

    .line 2753
    :cond_2
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v2}, Lcom/google/common/collect/CustomConcurrentHashMap;->expires()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->isExpired(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2754
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->tryExpireEntries()V

    move-object v0, v1

    .line 2755
    goto :goto_0
.end method

.method initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2035
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    .local p1, "newTable":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->threshold:I

    .line 2036
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->threshold:I

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->maxSegmentSize:I

    if-ne v0, v1, :cond_0

    .line 2038
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->threshold:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->threshold:I

    .line 2040
    :cond_0
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2041
    return-void
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2031
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method postReadCleanup()V
    .locals 2

    .prologue
    .line 2784
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 2785
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->isInlineCleanup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2788
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->runCleanup()V

    .line 2793
    :cond_0
    :goto_0
    return-void

    .line 2789
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2790
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->cleanupExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method postWriteCleanup()V
    .locals 2

    .prologue
    .line 2813
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->isInlineCleanup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2817
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2818
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->runLockedCleanup()V

    .line 2828
    :cond_0
    :goto_0
    return-void

    .line 2820
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->runUnlockedCleanup()V

    goto :goto_0

    .line 2822
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2826
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->cleanupExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method preWriteCleanup()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2804
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->isInlineCleanup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2806
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->runLockedCleanup()V

    .line 2810
    :goto_0
    return-void

    .line 2808
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->expireEntries()V

    goto :goto_0
.end method

.method processPendingCleanup()V
    .locals 9
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2762
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    iget-object v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2764
    .local v6, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    const/4 v0, 0x0

    .line 2765
    .local v0, "cleanedUp":I
    :cond_0
    :goto_0
    const/16 v7, 0x10

    if-ge v0, v7, :cond_2

    iget-object v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->cleanupQueue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .local v2, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    if-eqz v2, :cond_2

    .line 2766
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v7

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    and-int v4, v7, v8

    .line 2768
    .local v4, "index":I
    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2769
    .local v3, "first":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    move-object v1, v3

    .local v1, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_1
    if-eqz v1, :cond_0

    .line 2770
    if-ne v1, v2, :cond_1

    .line 2771
    iget-object v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v7, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->isUnset(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2772
    invoke-virtual {p0, v3, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->removeFromChain(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v5

    .line 2773
    .local v5, "newFirst":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2774
    add-int/lit8 v0, v0, 0x1

    .line 2775
    goto :goto_0

    .line 2769
    .end local v5    # "newFirst":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :cond_1
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    goto :goto_1

    .line 2780
    .end local v1    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v2    # "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v3    # "first":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v4    # "index":I
    :cond_2
    return-void
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 10
    .param p2, "hash"    # I
    .param p4, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 2371
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2372
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2374
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->preWriteCleanup()V

    .line 2376
    iget v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    add-int/lit8 v5, v9, 0x1

    .line 2377
    .local v5, "newCount":I
    iget v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->threshold:I

    if-le v5, v9, :cond_0

    .line 2378
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->expand()V

    .line 2379
    iget v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    add-int/lit8 v5, v9, 0x1

    .line 2383
    :cond_0
    iget-object v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2384
    .local v7, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    and-int v4, p2, v9

    .line 2385
    .local v4, "index":I
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2388
    .local v3, "first":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    move-object v0, v3

    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_4

    .line 2389
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2390
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v9

    if-ne v9, p2, :cond_3

    if-eqz v1, :cond_3

    iget-object v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v9, v9, Lcom/google/common/collect/CustomConcurrentHashMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v9, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2394
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v8

    .line 2395
    .local v8, "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    invoke-interface {v8}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2397
    .local v2, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_2

    .line 2398
    iget v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->modCount:I

    .line 2404
    invoke-interface {v8}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->notifyValueReclaimed()V

    .line 2405
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->evictEntries()Z

    .line 2406
    iget v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    add-int/lit8 v5, v9, 0x1

    .line 2407
    iput v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    .line 2417
    :cond_1
    invoke-virtual {p0, v0, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->setValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2435
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2436
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v8    # "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    :goto_1
    return-object v2

    .line 2408
    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v8    # "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    :cond_2
    if-eqz p4, :cond_1

    .line 2412
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->recordLockedRead(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2435
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2436
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2388
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v8    # "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    :cond_3
    :try_start_2
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2422
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->evictEntries()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2423
    iget v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    add-int/lit8 v5, v9, 0x1

    .line 2424
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "first":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    check-cast v3, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2428
    .restart local v3    # "first":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :cond_5
    iget v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->modCount:I

    .line 2429
    iget-object v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v9, p1, p2, v3}, Lcom/google/common/collect/CustomConcurrentHashMap;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v6

    .line 2430
    .local v6, "newEntry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0, v6, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->setValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V

    .line 2431
    invoke-virtual {v7, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2432
    iput v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2433
    const/4 v2, 0x0

    .line 2435
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2436
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2435
    .end local v0    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v3    # "first":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v4    # "index":I
    .end local v5    # "newCount":I
    .end local v6    # "newEntry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v7    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2436
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    throw v9
.end method

.method recordExpirationTime(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)V
    .locals 2
    .param p2, "expirationNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2136
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->ticker:Lcom/google/common/base/Ticker;

    invoke-interface {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setExpirationTime(J)V

    .line 2137
    return-void
.end method

.method recordLockedRead(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2081
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2082
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-wide v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->expireAfterAccessNanos:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->recordExpirationTime(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)V

    .line 2084
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2086
    :cond_0
    return-void
.end method

.method recordRead(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2065
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2066
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-wide v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->expireAfterAccessNanos:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->recordExpirationTime(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)V

    .line 2068
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2069
    return-void
.end method

.method recordWrite(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2095
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->drainRecencyQueue()V

    .line 2096
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2097
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v2}, Lcom/google/common/collect/CustomConcurrentHashMap;->expires()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2100
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v2}, Lcom/google/common/collect/CustomConcurrentHashMap;->expiresAfterAccess()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-wide v0, v2, Lcom/google/common/collect/CustomConcurrentHashMap;->expireAfterAccessNanos:J

    .line 2102
    .local v0, "expiration":J
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->recordExpirationTime(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)V

    .line 2103
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2105
    .end local v0    # "expiration":J
    :cond_0
    return-void

    .line 2100
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-wide v0, v2, Lcom/google/common/collect/CustomConcurrentHashMap;->expireAfterWriteNanos:J

    goto :goto_0
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 2514
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2516
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->preWriteCleanup()V

    .line 2518
    iget v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    add-int/lit8 v5, v8, -0x1

    .line 2519
    .local v5, "newCount":I
    iget-object v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2520
    .local v7, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    and-int v4, p2, v8

    .line 2521
    .local v4, "index":I
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2523
    .local v3, "first":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    move-object v0, v3

    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 2524
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2525
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v8

    if-ne v8, p2, :cond_1

    if-eqz v1, :cond_1

    iget-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v8, v8, Lcom/google/common/collect/CustomConcurrentHashMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v8, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2527
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2528
    .local v2, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_0

    .line 2529
    invoke-virtual {p0, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unsetLiveEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2544
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2545
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :goto_2
    return-object v2

    .line 2531
    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_0
    :try_start_1
    iget v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->modCount:I

    .line 2532
    invoke-virtual {p0, v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->removeFromChain(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v6

    .line 2534
    .local v6, "newFirst":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iget v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    add-int/lit8 v5, v8, -0x1

    .line 2535
    invoke-virtual {v7, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2536
    iput v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2544
    .end local v0    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v3    # "first":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v4    # "index":I
    .end local v5    # "newCount":I
    .end local v6    # "newFirst":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v7    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2545
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    throw v8

    .line 2523
    .restart local v0    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v3    # "first":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .restart local v4    # "index":I
    .restart local v5    # "newCount":I
    .restart local v7    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    :cond_1
    :try_start_2
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2542
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_2
    const/4 v2, 0x0

    .line 2544
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2545
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    goto :goto_2
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 10
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    const/4 v8, 0x0

    .line 2550
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2551
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2553
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->preWriteCleanup()V

    .line 2555
    iget v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    add-int/lit8 v5, v9, -0x1

    .line 2556
    .local v5, "newCount":I
    iget-object v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2557
    .local v7, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    and-int v4, p2, v9

    .line 2558
    .local v4, "index":I
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2560
    .local v3, "first":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    move-object v0, v3

    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 2561
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2562
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v9

    if-ne v9, p2, :cond_2

    if-eqz v1, :cond_2

    iget-object v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v9, v9, Lcom/google/common/collect/CustomConcurrentHashMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v9, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2564
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2565
    .local v2, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_1

    .line 2566
    invoke-virtual {p0, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unsetLiveEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2582
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2583
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :goto_1
    return v8

    .line 2567
    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v9, v9, Lcom/google/common/collect/CustomConcurrentHashMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v9, p3, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2568
    iget v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->modCount:I

    .line 2569
    invoke-virtual {p0, v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->removeFromChain(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v6

    .line 2571
    .local v6, "newFirst":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iget v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    add-int/lit8 v5, v8, -0x1

    .line 2572
    invoke-virtual {v7, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2573
    iput v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2574
    const/4 v8, 0x1

    .line 2582
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2583
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2560
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v6    # "newFirst":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :cond_2
    :try_start_2
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2582
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2583
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2582
    .end local v0    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v3    # "first":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v4    # "index":I
    .end local v5    # "newCount":I
    .end local v7    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2583
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    throw v8
.end method

.method removeFromChain(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2598
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    .local p1, "first":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .local p2, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v2, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2599
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v2, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2601
    invoke-interface {p2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    .line 2602
    .local v1, "newFirst":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    move-object v0, p1

    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eq v0, p2, :cond_1

    .line 2603
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->isCollected(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2604
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unsetLiveEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    .line 2602
    :goto_1
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2606
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->copyEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    goto :goto_1

    .line 2609
    :cond_1
    return-object v1
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x0

    .line 2340
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2341
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2343
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->preWriteCleanup()V

    .line 2345
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->getFirst(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 2347
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2348
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v4, v4, Lcom/google/common/collect/CustomConcurrentHashMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v4, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2352
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2353
    .local v2, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_0

    .line 2354
    invoke-virtual {p0, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unsetLiveEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2365
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2366
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    move-object v2, v3

    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v2

    .line 2358
    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->setValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2365
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2366
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2346
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_1
    :try_start_2
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2365
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2366
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    move-object v2, v3

    goto :goto_1

    .line 2365
    .end local v0    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2366
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    throw v3
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x0

    .line 2301
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2305
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->preWriteCleanup()V

    .line 2307
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->getFirst(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 2309
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2310
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v4, v4, Lcom/google/common/collect/CustomConcurrentHashMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v4, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2314
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2315
    .local v2, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_0

    .line 2316
    invoke-virtual {p0, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unsetLiveEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2334
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2335
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :goto_1
    return v3

    .line 2320
    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v4, v4, Lcom/google/common/collect/CustomConcurrentHashMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v4, p3, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2321
    invoke-virtual {p0, v0, p4}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->setValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2322
    const/4 v3, 0x1

    .line 2334
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2335
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2326
    :cond_1
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->recordLockedRead(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2334
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2335
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2308
    .end local v2    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_2
    :try_start_3
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2334
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2335
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2334
    .end local v0    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2335
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    throw v3
.end method

.method runCleanup()V
    .locals 0

    .prologue
    .line 2839
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->runLockedCleanup()V

    .line 2841
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->runUnlockedCleanup()V

    .line 2842
    return-void
.end method

.method runLockedCleanup()V
    .locals 2

    .prologue
    .line 2857
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2859
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->expireEntries()V

    .line 2860
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->processPendingCleanup()V

    .line 2861
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2863
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2865
    return-void

    .line 2863
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method runUnlockedCleanup()V
    .locals 1

    .prologue
    .line 2849
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->processPendingNotifications()V

    .line 2850
    return-void
.end method

.method setValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2049
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->recordWrite(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2050
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap;->newValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    .line 2051
    .local v0, "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    invoke-interface {p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 2052
    return-void
.end method

.method tryExpireEntries()V
    .locals 1

    .prologue
    .line 2143
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2145
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->expireEntries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2147
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2150
    :cond_0
    return-void

    .line 2147
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method unsetEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    .locals 2
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2701
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->getFirst(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 2703
    if-ne v0, p1, :cond_0

    .line 2704
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unsetLiveEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    move-result v1

    .line 2708
    :goto_1
    return v1

    .line 2702
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2708
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method unsetKey(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    .locals 8
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .prologue
    .line 2619
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2621
    :try_start_0
    iget v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    add-int/lit8 v3, v5, -0x1

    .line 2622
    .local v3, "newCount":I
    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2623
    .local v4, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    and-int v2, p2, v5

    .line 2624
    .local v2, "index":I
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2626
    .local v1, "first":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    move-object v0, v1

    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 2627
    if-ne v0, p1, :cond_0

    .line 2628
    iget v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->modCount:I

    .line 2629
    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v7

    invoke-virtual {v5, v6, p2, v7}, Lcom/google/common/collect/CustomConcurrentHashMap;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 2630
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->enqueueCleanup(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2631
    iput v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2632
    const/4 v5, 0x1

    .line 2638
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    :goto_1
    return v5

    .line 2626
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2636
    :cond_1
    const/4 v5, 0x0

    .line 2638
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    goto :goto_1

    .end local v0    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v1    # "first":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v2    # "index":I
    .end local v3    # "newCount":I
    .end local v4    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    throw v5
.end method

.method unsetLiveEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    .locals 5
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 2713
    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v4, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->isUnset(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2729
    :cond_0
    :goto_0
    return v3

    .line 2718
    :cond_1
    iget v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    add-int/lit8 v1, v4, -0x1

    .line 2719
    .local v1, "newCount":I
    iget v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->modCount:I

    .line 2720
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v2

    .line 2721
    .local v2, "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->isComputingReference()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2725
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 2726
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v3, v0, p2, v2}, Lcom/google/common/collect/CustomConcurrentHashMap;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 2727
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->enqueueCleanup(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2728
    iput v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    .line 2729
    const/4 v3, 0x1

    goto :goto_0
.end method

.method unsetValue(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z
    .locals 6
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    const/4 v4, 0x0

    .line 2650
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2652
    :try_start_0
    iget v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    add-int/lit8 v2, v5, -0x1

    .line 2653
    .local v2, "newCount":I
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->getFirst(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 2655
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2656
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v5

    if-ne v5, p2, :cond_1

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v5, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2658
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v3

    .line 2659
    .local v3, "v":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    if-ne v3, p3, :cond_0

    .line 2660
    iget v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->modCount:I

    .line 2661
    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v4, p1, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 2662
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->enqueueCleanup(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2663
    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2664
    const/4 v4, 0x1

    .line 2672
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    :goto_1
    return v4

    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v3    # "v":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    goto :goto_1

    .line 2654
    .end local v3    # "v":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2672
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    goto :goto_1

    .end local v0    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v2    # "newCount":I
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    throw v4
.end method
