.class public final Lcom/google/common/collect/MapMaker;
.super Lcom/google/common/collect/GenericMapMaker;
.source "MapMaker.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMaker$ComputingMapAdapter;,
        Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;,
        Lcom/google/common/collect/MapMaker$NullConcurrentMap;,
        Lcom/google/common/collect/MapMaker$Cache;,
        Lcom/google/common/collect/MapMaker$NullListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/GenericMapMaker",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT_CLEANUP_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x4

.field private static final DEFAULT_EXPIRATION_NANOS:I = 0x0

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final DEFAULT_TICKER:Lcom/google/common/base/Ticker;

.field static final UNSET_INT:I = -0x1


# instance fields
.field cleanupExecutor:Ljava/util/concurrent/Executor;

.field concurrencyLevel:I

.field expireAfterAccessNanos:J

.field expireAfterWriteNanos:J

.field initialCapacity:I

.field keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keyStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

.field maximumSize:I

.field ticker:Lcom/google/common/base/Ticker;

.field useCustomMap:Z

.field useNullMap:Z

.field valueEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field valueStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/google/common/collect/MapMaker$1;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMaker;->DEFAULT_CLEANUP_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 123
    new-instance v0, Lcom/google/common/collect/MapMaker$2;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker$2;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMaker;->DEFAULT_TICKER:Lcom/google/common/base/Ticker;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 163
    invoke-direct {p0}, Lcom/google/common/collect/GenericMapMaker;-><init>()V

    .line 139
    iput v0, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    .line 140
    iput v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 141
    iput v0, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    .line 146
    iput-wide v1, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    .line 147
    iput-wide v1, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    .line 163
    return-void
.end method

.method private checkExpiration(JLjava/util/concurrent/TimeUnit;)V
    .locals 9
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 441
    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "expireAfterWrite was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 444
    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "expireAfterAccess was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 447
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "duration cannot be negative: %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 449
    return-void

    :cond_0
    move v0, v2

    .line 441
    goto :goto_0

    :cond_1
    move v0, v2

    .line 444
    goto :goto_1

    :cond_2
    move v0, v2

    .line 447
    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic concurrencyLevel(I)Lcom/google/common/collect/GenericMapMaker;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker;->concurrencyLevel(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public concurrencyLevel(I)Lcom/google/common/collect/MapMaker;
    .locals 6
    .param p1, "concurrencyLevel"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.concurrent.ConcurrentHashMap concurrencyLevel"
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 271
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "concurrency level was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 273
    if-lez p1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 274
    iput p1, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 275
    return-object p0

    :cond_0
    move v0, v2

    .line 271
    goto :goto_0

    :cond_1
    move v1, v2

    .line 273
    goto :goto_1
.end method

.method public evictionListener(Lcom/google/common/collect/MapEvictionListener;)Lcom/google/common/collect/GenericMapMaker;
    .locals 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapEvictionListener",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/GenericMapMaker",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p1, "listener":Lcom/google/common/collect/MapEvictionListener;, "Lcom/google/common/collect/MapEvictionListener<TK;TV;>;"
    const/4 v2, 0x1

    .line 530
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->evictionListener:Lcom/google/common/collect/MapEvictionListener;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 534
    move-object v0, p0

    .line 535
    .local v0, "me":Lcom/google/common/collect/GenericMapMaker;, "Lcom/google/common/collect/GenericMapMaker<TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/MapEvictionListener;

    iput-object v1, v0, Lcom/google/common/collect/GenericMapMaker;->evictionListener:Lcom/google/common/collect/MapEvictionListener;

    .line 536
    iput-boolean v2, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 537
    return-object v0

    .line 530
    .end local v0    # "me":Lcom/google/common/collect/GenericMapMaker;, "Lcom/google/common/collect/GenericMapMaker<TK;TV;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic expiration(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/GenericMapMaker;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->expiration(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public expiration(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .locals 1
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 410
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/GenericMapMaker;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .locals 5
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 476
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->checkExpiration(JLjava/util/concurrent/TimeUnit;)V

    .line 477
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    .line 478
    iget-boolean v2, p0, Lcom/google/common/collect/MapMaker;->useNullMap:Z

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/common/collect/MapMaker;->useNullMap:Z

    .line 479
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 480
    return-object p0

    .line 478
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/GenericMapMaker;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .locals 5
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 433
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->checkExpiration(JLjava/util/concurrent/TimeUnit;)V

    .line 434
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    .line 435
    iget-boolean v2, p0, Lcom/google/common/collect/MapMaker;->useNullMap:Z

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/common/collect/MapMaker;->useNullMap:Z

    .line 436
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 437
    return-object p0

    .line 435
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCleanupExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->cleanupExecutor:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/google/common/collect/MapMaker;->DEFAULT_CLEANUP_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method getConcurrencyLevel()I
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    goto :goto_0
.end method

.method getEvictionListener()Lcom/google/common/collect/MapEvictionListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MapEvictionListener",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->evictionListener:Lcom/google/common/collect/MapEvictionListener;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/collect/MapMaker$NullListener;->INSTANCE:Lcom/google/common/collect/MapMaker$NullListener;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->evictionListener:Lcom/google/common/collect/MapEvictionListener;

    goto :goto_0
.end method

.method getExpireAfterAccessNanos()J
    .locals 4

    .prologue
    .line 484
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    goto :goto_0
.end method

.method getExpireAfterWriteNanos()J
    .locals 4

    .prologue
    .line 452
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    goto :goto_0
.end method

.method getInitialCapacity()I
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    goto :goto_0
.end method

.method getKeyEquivalence()Lcom/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getKeyStrength()Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method getKeyStrength()Lcom/google/common/collect/CustomConcurrentHashMap$Strength;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->STRONG:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    return-object v0
.end method

.method getTicker()Lcom/google/common/base/Ticker;
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->ticker:Lcom/google/common/base/Ticker;

    sget-object v1, Lcom/google/common/collect/MapMaker;->DEFAULT_TICKER:Lcom/google/common/base/Ticker;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Ticker;

    return-object v0
.end method

.method getValueEquivalence()Lcom/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getValueStrength()Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->defaultEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method getValueStrength()Lcom/google/common/collect/CustomConcurrentHashMap$Strength;
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->STRONG:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    return-object v0
.end method

.method public bridge synthetic initialCapacity(I)Lcom/google/common/collect/GenericMapMaker;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker;->initialCapacity(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public initialCapacity(I)Lcom/google/common/collect/MapMaker;
    .locals 6
    .param p1, "initialCapacity"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    iget v0, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "initial capacity was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 206
    if-ltz p1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 207
    iput p1, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    .line 208
    return-object p0

    :cond_0
    move v0, v2

    .line 204
    goto :goto_0

    :cond_1
    move v1, v2

    .line 206
    goto :goto_1
.end method

.method makeCache(Lcom/google/common/base/Function;)Lcom/google/common/collect/MapMaker$Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)",
            "Lcom/google/common/collect/MapMaker$Cache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 604
    .local p1, "computingFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;+TV;>;"
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->useNullMap:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/ComputingConcurrentHashMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V

    goto :goto_0
.end method

.method public makeComputingMap(Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 654
    .local p1, "computingFunction":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;+TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker;->makeCache(Lcom/google/common/base/Function;)Lcom/google/common/collect/MapMaker$Cache;

    move-result-object v0

    .line 655
    .local v0, "cache":Lcom/google/common/collect/MapMaker$Cache;, "Lcom/google/common/collect/MapMaker$Cache<TK;TV;>;"
    new-instance v1, Lcom/google/common/collect/MapMaker$ComputingMapAdapter;

    invoke-direct {v1, v0}, Lcom/google/common/collect/MapMaker$ComputingMapAdapter;-><init>(Lcom/google/common/collect/MapMaker$Cache;)V

    return-object v1
.end method

.method public makeMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getInitialCapacity()I

    move-result v1

    const/high16 v2, 0x3f400000

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->getConcurrencyLevel()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 561
    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->useNullMap:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMaker$NullConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    goto :goto_0
.end method

.method public bridge synthetic maximumSize(I)Lcom/google/common/collect/GenericMapMaker;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker;->maximumSize(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public maximumSize(I)Lcom/google/common/collect/MapMaker;
    .locals 6
    .param p1, "size"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 237
    iget v0, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "maximum size was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 239
    if-ltz p1, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "maximum size must not be negative"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 240
    iput p1, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    .line 241
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 242
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->useNullMap:Z

    iget v3, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    if-nez v3, :cond_2

    :goto_2
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/common/collect/MapMaker;->useNullMap:Z

    .line 243
    return-object p0

    :cond_0
    move v0, v2

    .line 237
    goto :goto_0

    :cond_1
    move v0, v2

    .line 239
    goto :goto_1

    :cond_2
    move v1, v2

    .line 242
    goto :goto_2
.end method

.method privateKeyEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/collect/MapMaker;"
        }
    .end annotation

    .prologue
    .local p1, "equivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 167
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "key equivalence was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 170
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 171
    return-object p0

    :cond_0
    move v0, v2

    .line 167
    goto :goto_0
.end method

.method privateValueEquivalence(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/collect/MapMaker;"
        }
    .end annotation

    .prologue
    .local p1, "equivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 180
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "value equivalence was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 183
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 184
    return-object p0

    :cond_0
    move v0, v2

    .line 180
    goto :goto_0
.end method

.method setKeyStrength(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 6
    .param p1, "strength"    # Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 324
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Key strength was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 326
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    .line 327
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->STRONG:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    if-eq p1, v0, :cond_0

    .line 329
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 331
    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 324
    goto :goto_0
.end method

.method setValueStrength(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 6
    .param p1, "strength"    # Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 387
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Value strength was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 389
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    .line 390
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->STRONG:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    if-eq p1, v0, :cond_0

    .line 392
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 394
    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 387
    goto :goto_0
.end method

.method public bridge synthetic softKeys()Lcom/google/common/collect/GenericMapMaker;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->softKeys()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public softKeys()Lcom/google/common/collect/MapMaker;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.SoftReference"
    .end annotation

    .prologue
    .line 320
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->SOFT:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMaker;->setKeyStrength(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic softValues()Lcom/google/common/collect/GenericMapMaker;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->softValues()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public softValues()Lcom/google/common/collect/MapMaker;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.SoftReference"
    .end annotation

    .prologue
    .line 383
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->SOFT:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMaker;->setValueStrength(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v3, -0x1

    .line 664
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 665
    .local v0, "s":Lcom/google/common/base/Objects$ToStringHelper;
    iget v1, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    if-eq v1, v3, :cond_0

    .line 666
    const-string v1, "initialCapacity"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->initialCapacity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 668
    :cond_0
    iget v1, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    if-eq v1, v3, :cond_1

    .line 669
    const-string v1, "concurrencyLevel"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->concurrencyLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 671
    :cond_1
    iget v1, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    if-eq v1, v3, :cond_2

    .line 672
    const-string v1, "maximumSize"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->maximumSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 674
    :cond_2
    iget-wide v1, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_3

    .line 675
    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->expireAfterWriteNanos:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 677
    :cond_3
    iget-wide v1, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    .line 678
    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->expireAfterAccessNanos:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 680
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    if-eqz v1, :cond_5

    .line 681
    const-string v1, "keyStrength"

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 683
    :cond_5
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    if-eqz v1, :cond_6

    .line 684
    const-string v1, "valueStrength"

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 686
    :cond_6
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->keyEquivalence:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_7

    .line 687
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 689
    :cond_7
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->valueEquivalence:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_8

    .line 690
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 692
    :cond_8
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->evictionListener:Lcom/google/common/collect/MapEvictionListener;

    if-eqz v1, :cond_9

    .line 693
    const-string v1, "evictionListener"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 695
    :cond_9
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->cleanupExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_a

    .line 696
    const-string v1, "cleanupExecutor"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    .line 698
    :cond_a
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic weakKeys()Lcom/google/common/collect/GenericMapMaker;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->weakKeys()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public weakKeys()Lcom/google/common/collect/MapMaker;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .prologue
    .line 300
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->WEAK:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMaker;->setKeyStrength(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic weakValues()Lcom/google/common/collect/GenericMapMaker;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->weakValues()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public weakValues()Lcom/google/common/collect/MapMaker;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .prologue
    .line 359
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$Strength;->WEAK:Lcom/google/common/collect/CustomConcurrentHashMap$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMaker;->setValueStrength(Lcom/google/common/collect/CustomConcurrentHashMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method
