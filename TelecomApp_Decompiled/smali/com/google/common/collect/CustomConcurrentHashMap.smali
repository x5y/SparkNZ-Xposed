.class Lcom/google/common/collect/CustomConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy;,
        Lcom/google/common/collect/CustomConcurrentHashMap$AbstractSerializationProxy;,
        Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Values;,
        Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;,
        Lcom/google/common/collect/CustomConcurrentHashMap$EntryIterator;,
        Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$ValueIterator;,
        Lcom/google/common/collect/CustomConcurrentHashMap$KeyIterator;,
        Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Segment;,
        Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference;,
        Lcom/google/common/collect/CustomConcurrentHashMap$SoftValueReference;,
        Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference;,
        Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEvictableEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$WeakEvictableEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$WeakExpirableEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEvictableEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$SoftEvictableEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$SoftExpirableEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEvictableEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$StrongEvictableEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$StrongExpirableEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$QueueHolder;,
        Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;,
        Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Strength;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CLEANUP_MAX:I = 0x10

.field static final DISCARDING_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<+",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<**>;>;"
        }
    .end annotation
.end field

.field static final DRAIN_THRESHOLD:I = 0x3f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final UNSET:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field final cleanupExecutor:Ljava/util/concurrent/Executor;

.field final concurrencyLevel:I

.field final transient entryFactory:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
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

.field final evictionNotificationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
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

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final keyStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

.field final maximumSize:I

.field final transient segmentMask:I

.field final transient segmentShift:I

.field final transient segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.Segment;"
        }
    .end annotation
.end field

.field final ticker:Lcom/google/common/base/Ticker;

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

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 615
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$1;

    invoke-direct {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap;->UNSET:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    .line 804
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$2;

    invoke-direct {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$2;-><init>()V

    sput-object v0, Lcom/google/common/collect/CustomConcurrentHashMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/MapMaker;)V
    .locals 11
    .param p1, "builder"    # Lcom/google/common/collect/MapMaker;

    .prologue
    .line 201
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 202
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getConcurrencyLevel()I

    move-result v8

    const/high16 v9, 0x10000

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->concurrencyLevel:I

    .line 204
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getKeyStrength()Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->keyStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    .line 205
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getValueStrength()Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->valueStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    .line 207
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getKeyEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 208
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getValueEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 210
    iget v8, p1, Lcom/google/common/collect/MapMaker;->maximumSize:I

    iput v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->maximumSize:I

    .line 211
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getExpireAfterAccessNanos()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->expireAfterAccessNanos:J

    .line 212
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getExpireAfterWriteNanos()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->expireAfterWriteNanos:J

    .line 214
    iget-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->keyStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->expires()Z

    move-result v9

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->evictsBySize()Z

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->getFactory(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;ZZ)Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->entryFactory:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    .line 216
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getCleanupExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->cleanupExecutor:Ljava/util/concurrent/Executor;

    .line 217
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getTicker()Lcom/google/common/base/Ticker;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->ticker:Lcom/google/common/base/Ticker;

    .line 219
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getEvictionListener()Lcom/google/common/collect/MapEvictionListener;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->evictionListener:Lcom/google/common/collect/MapEvictionListener;

    .line 220
    iget-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->evictionListener:Lcom/google/common/collect/MapEvictionListener;

    sget-object v9, Lcom/google/common/collect/MapMaker$NullListener;->INSTANCE:Lcom/google/common/collect/MapMaker$NullListener;

    if-ne v8, v9, :cond_2

    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->discardingQueue()Ljava/util/Queue;

    move-result-object v8

    :goto_0
    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->evictionNotificationQueue:Ljava/util/Queue;

    .line 224
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->getInitialCapacity()I

    move-result v8

    const/high16 v9, 0x40000000

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 226
    .local v1, "initialCapacity":I
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->evictsBySize()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 227
    iget v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->maximumSize:I

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 233
    :cond_0
    const/4 v6, 0x0

    .line 234
    .local v6, "segmentShift":I
    const/4 v5, 0x1

    .line 236
    .local v5, "segmentCount":I
    :goto_1
    iget v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->concurrencyLevel:I

    if-ge v5, v8, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->evictsBySize()Z

    move-result v8

    if-eqz v8, :cond_1

    mul-int/lit8 v8, v5, 0x2

    iget v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->maximumSize:I

    if-gt v8, v9, :cond_3

    .line 237
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 238
    shl-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 220
    .end local v1    # "initialCapacity":I
    .end local v5    # "segmentCount":I
    .end local v6    # "segmentShift":I
    :cond_2
    new-instance v8, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_0

    .line 240
    .restart local v1    # "initialCapacity":I
    .restart local v5    # "segmentCount":I
    .restart local v6    # "segmentShift":I
    :cond_3
    rsub-int/lit8 v8, v6, 0x20

    iput v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segmentShift:I

    .line 241
    add-int/lit8 v8, v5, -0x1

    iput v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segmentMask:I

    .line 243
    invoke-virtual {p0, v5}, Lcom/google/common/collect/CustomConcurrentHashMap;->newSegmentArray(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v8

    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    .line 245
    div-int v4, v1, v5

    .line 246
    .local v4, "segmentCapacity":I
    mul-int v8, v4, v5

    if-ge v8, v1, :cond_4

    .line 247
    add-int/lit8 v4, v4, 0x1

    .line 250
    :cond_4
    const/4 v7, 0x1

    .line 251
    .local v7, "segmentSize":I
    :goto_2
    if-ge v7, v4, :cond_5

    .line 252
    shl-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 255
    :cond_5
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->evictsBySize()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 257
    iget v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->maximumSize:I

    div-int/2addr v8, v5

    add-int/lit8 v2, v8, 0x1

    .line 258
    .local v2, "maximumSegmentSize":I
    iget v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->maximumSize:I

    rem-int v3, v8, v5

    .line 259
    .local v3, "remainder":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    array-length v8, v8

    if-ge v0, v8, :cond_8

    .line 260
    if-ne v0, v3, :cond_6

    .line 261
    add-int/lit8 v2, v2, -0x1

    .line 263
    :cond_6
    iget-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-virtual {p0, v7, v2}, Lcom/google/common/collect/CustomConcurrentHashMap;->createSegment(II)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v9

    aput-object v9, v8, v0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 266
    .end local v0    # "i":I
    .end local v2    # "maximumSegmentSize":I
    .end local v3    # "remainder":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    array-length v8, v8

    if-ge v0, v8, :cond_8

    .line 267
    iget-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    const/4 v9, -0x1

    invoke-virtual {p0, v7, v9}, Lcom/google/common/collect/CustomConcurrentHashMap;->createSegment(II)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v9

    aput-object v9, v8, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 271
    :cond_8
    return-void
.end method

.method static connectEvictables(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1853
    .local p0, "previous":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setNextEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1854
    invoke-interface {p1, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setPreviousEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1855
    return-void
.end method

.method static connectExpirables(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1810
    .local p0, "previous":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setNextExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1811
    invoke-interface {p1, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setPreviousExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1812
    return-void
.end method

.method static discardingQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 838
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-object v0
.end method

.method static nullEntry()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 801
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;->INSTANCE:Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;

    return-object v0
.end method

.method static nullifyEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1859
    .local p0, "nulled":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->nullEntry()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 1860
    .local v0, "nullEntry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setNextEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1861
    invoke-interface {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setPreviousEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1862
    return-void
.end method

.method static nullifyExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1816
    .local p0, "nulled":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->nullEntry()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 1817
    .local v0, "nullEntry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setNextExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1818
    invoke-interface {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setPreviousExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1819
    return-void
.end method

.method private static rehash(I)I
    .locals 2
    .param p0, "h"    # I

    .prologue
    .line 1705
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 1706
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 1707
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 1708
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 1709
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 1710
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method static unset()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 646
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap;->UNSET:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 3398
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    .local v0, "arr$":[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 3399
    .local v3, "segment":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    invoke-virtual {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->clear()V

    .line 3398
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3401
    .end local v3    # "segment":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 3324
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3325
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 3330
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3332
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    .line 3333
    .local v2, "segments":[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "[Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 3336
    aget-object v3, v2, v1

    iget v0, v3, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    .line 3337
    .local v0, "c":I
    aget-object v3, v2, v1

    invoke-virtual {v3, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3338
    const/4 v3, 0x1

    .line 3341
    .end local v0    # "c":I
    :goto_1
    return v3

    .line 3333
    .restart local v0    # "c":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3341
    .end local v0    # "c":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method copyEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
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
    .line 1722
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p1, "original":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .local p2, "newNext":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    .line 1723
    .local v1, "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->entryFactory:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    invoke-virtual {v2, p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->copyEntry(Lcom/google/common/collect/CustomConcurrentHashMap;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 1725
    .local v0, "newEntry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {v1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->copyFor(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 1726
    return-object v0
.end method

.method createSegment(II)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.Segment;"
        }
    .end annotation

    .prologue
    .line 1888
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;II)V

    return-object v0
.end method

.method enqueueNotification(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V
    .locals 3
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1825
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->evictionNotificationQueue:Ljava/util/Queue;

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    if-ne v1, v2, :cond_0

    .line 1832
    :goto_0
    return-void

    .line 1829
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 1830
    .local v0, "notifyEntry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->copyFor(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 1831
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->evictionNotificationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3420
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->entrySet:Ljava/util/Set;

    .line 3421
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    return-object v0

    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method evictsBySize()Z
    .locals 2

    .prologue
    .line 274
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->maximumSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method expires()Z
    .locals 1

    .prologue
    .line 278
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->expiresAfterWrite()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method expiresAfterAccess()Z
    .locals 4

    .prologue
    .line 286
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->expireAfterAccessNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method expiresAfterWrite()Z
    .locals 4

    .prologue
    .line 282
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->expireAfterWriteNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 3310
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3311
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method getEntry(Ljava/lang/Object;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3319
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3320
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    return-object v1
.end method

.method hash(Ljava/lang/Object;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1735
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1736
    .local v0, "h":I
    invoke-static {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->rehash(I)I

    move-result v1

    return v1
.end method

.method isCollected(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1787
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1794
    :cond_0
    :goto_0
    return v1

    .line 1790
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    .line 1791
    .local v0, "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->isComputingReference()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 1792
    goto :goto_0

    .line 1794
    :cond_2
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 7

    .prologue
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 3267
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    .line 3277
    .local v3, "segments":[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "[Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    array-length v5, v3

    new-array v1, v5, [I

    .line 3278
    .local v1, "mc":[I
    const/4 v2, 0x0

    .line 3279
    .local v2, "mcsum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 3280
    aget-object v5, v3, v0

    iget v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    if-eqz v5, :cond_1

    .line 3297
    :cond_0
    :goto_1
    return v4

    .line 3283
    :cond_1
    aget-object v5, v3, v0

    iget v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->modCount:I

    aput v5, v1, v0

    add-int/2addr v2, v5

    .line 3279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3289
    :cond_2
    if-eqz v2, :cond_3

    .line 3290
    const/4 v0, 0x0

    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 3291
    aget-object v5, v3, v0

    iget v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    if-nez v5, :cond_0

    aget v5, v1, v0

    aget-object v6, v3, v0

    iget v6, v6, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->modCount:I

    if-ne v5, v6, :cond_0

    .line 3290
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3297
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method isExpired(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1771
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->ticker:Lcom/google/common/base/Ticker;

    invoke-interface {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->isExpired(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)Z

    move-result v0

    return v0
.end method

.method isExpired(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)Z
    .locals 4
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;J)Z"
        }
    .end annotation

    .prologue
    .line 1779
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getExpirationTime()J

    move-result-wide v0

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInlineCleanup()Z
    .locals 2

    .prologue
    .line 290
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->cleanupExecutor:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/google/common/collect/MapMaker;->DEFAULT_CLEANUP_EXECUTOR:Ljava/util/concurrent/Executor;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLive(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1764
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->getLiveValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUnset(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1798
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->isUnset(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z

    move-result v0

    return v0
.end method

.method isUnset(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1802
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p1, "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap;->UNSET:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3406
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->keySet:Ljava/util/Set;

    .line 3407
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :goto_0
    return-object v0

    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_0
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method newEntry(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .param p2, "hash"    # I
    .param p3    # Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
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
    .line 1716
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->entryFactory:Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;->newEntry(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method final newSegmentArray(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .locals 1
    .param p1, "ssize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.Segment;"
        }
    .end annotation

    .prologue
    .line 1871
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    const-class v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    check-cast v0, [Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    return-object v0
.end method

.method newValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;TV;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1731
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->valueStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->referenceValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    return-object v0
.end method

.method processPendingNotifications()V
    .locals 4

    .prologue
    .line 1843
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->evictionNotificationQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .local v0, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 1844
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->evictionListener:Lcom/google/common/collect/MapEvictionListener;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/common/collect/MapEvictionListener;->onEviction(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1847
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3345
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3346
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3355
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 3356
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/CustomConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3358
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3350
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3351
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method reclaimKey(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1750
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v0

    .line 1751
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unsetKey(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    .line 1752
    return-void
.end method

.method reclaimValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1741
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .local p2, "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v0

    .line 1742
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    .line 1743
    .local v1, "segment":Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unsetValue(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z

    .line 1744
    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->isHeldByCurrentThread()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1745
    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->postWriteCleanup()V

    .line 1747
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 3361
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3362
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 3371
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3372
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3393
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3394
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 3381
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3382
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
    .locals 3
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.Segment;"
        }
    .end annotation

    .prologue
    .line 1884
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 3301
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    .line 3302
    .local v1, "segments":[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;, "[Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment;"
    const-wide/16 v2, 0x0

    .line 3303
    .local v2, "sum":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 3304
    aget-object v4, v1, v0

    iget v4, v4, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->count:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 3303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3306
    :cond_0
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v4

    return v4
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3413
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->values:Ljava/util/Collection;

    .line 3414
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Values;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Values;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 13

    .prologue
    .line 3696
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->keyStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->valueStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    iget-wide v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->expireAfterWriteNanos:J

    iget-wide v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->expireAfterAccessNanos:J

    iget v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->maximumSize:I

    iget v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->concurrencyLevel:I

    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap;->evictionListener:Lcom/google/common/collect/MapEvictionListener;

    move-object v12, p0

    invoke-direct/range {v0 .. v12}, Lcom/google/common/collect/CustomConcurrentHashMap$SerializationProxy;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;Lcom/google/common/collect/CustomConcurrentHashMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/MapEvictionListener;Ljava/util/concurrent/ConcurrentMap;)V

    return-object v0
.end method
