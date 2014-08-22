.class Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;
.super Ljava/lang/Object;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ComputingConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComputingValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field computedReference:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "ComputingValueReference.this"
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/ComputingConcurrentHashMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ComputingConcurrentHashMap;)V
    .locals 1

    .prologue
    .line 264
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingValueReference;"
    iput-object p1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->this$0:Lcom/google/common/collect/ComputingConcurrentHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->unset()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->computedReference:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ComputingConcurrentHashMap;Lcom/google/common/collect/ComputingConcurrentHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/ComputingConcurrentHashMap;
    .param p2, "x1"    # Lcom/google/common/collect/ComputingConcurrentHashMap$1;

    .prologue
    .line 264
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingValueReference;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;-><init>(Lcom/google/common/collect/ComputingConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 305
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingValueReference;"
    new-instance v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 308
    return-void
.end method

.method compute(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TV;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingValueReference;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v4, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->this$0:Lcom/google/common/collect/ComputingConcurrentHashMap;

    iget-object v4, v4, Lcom/google/common/collect/ComputingConcurrentHashMap;->computingFunction:Lcom/google/common/base/Function;

    invoke-interface {v4, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/common/collect/ComputationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 328
    .local v3, "value":Ljava/lang/Object;, "TV;"
    if-nez v3, :cond_0

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->this$0:Lcom/google/common/collect/ComputingConcurrentHashMap;

    iget-object v5, v5, Lcom/google/common/collect/ComputingConcurrentHashMap;->computingFunction:Lcom/google/common/base/Function;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned null for key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "message":Ljava/lang/String;
    new-instance v4, Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference;

    invoke-direct {v4, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 332
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 317
    .end local v1    # "message":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Lcom/google/common/collect/ComputationException;
    new-instance v4, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;

    invoke-virtual {v0}, Lcom/google/common/collect/ComputationException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 322
    throw v0

    .line 323
    .end local v0    # "e":Lcom/google/common/collect/ComputationException;
    :catch_1
    move-exception v2

    .line 324
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v4, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;

    invoke-direct {v4, v2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputationExceptionReference;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 325
    new-instance v4, Lcom/google/common/collect/ComputationException;

    invoke-direct {v4, v2}, Lcom/google/common/collect/ComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 336
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    new-instance v4, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;

    invoke-direct {v4, v3}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 338
    iget-object v4, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->this$0:Lcom/google/common/collect/ComputingConcurrentHashMap;

    invoke-virtual {v4, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap;->segmentFor(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p1, p2, v3, v5}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    .line 339
    return-object v3
.end method

.method public copyFor(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingValueReference;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingValueReference;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public isComputingReference()Z
    .locals 1

    .prologue
    .line 282
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingValueReference;"
    const/4 v0, 0x1

    return v0
.end method

.method public notifyValueReclaimed()V
    .locals 0

    .prologue
    .line 311
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingValueReference;"
    return-void
.end method

.method setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingValueReference;"
    .local p1, "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    monitor-enter p0

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->computedReference:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap;->UNSET:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    if-ne v0, v1, :cond_0

    .line 345
    iput-object p1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->computedReference:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    .line 346
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 348
    :cond_0
    monitor-exit p0

    .line 349
    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingValueReference;"
    iget-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->computedReference:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap;->UNSET:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    if-ne v0, v1, :cond_1

    .line 292
    monitor-enter p0

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->computedReference:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    sget-object v1, Lcom/google/common/collect/CustomConcurrentHashMap;->UNSET:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    if-ne v0, v1, :cond_0

    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 296
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->computedReference:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->waitForValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 296
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
