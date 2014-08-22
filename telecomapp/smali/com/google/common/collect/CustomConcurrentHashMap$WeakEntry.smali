.class Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;
.super Lcom/google/common/base/FinalizableWeakReference;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/FinalizableWeakReference",
        "<TK;>;",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final map:Lcom/google/common/collect/CustomConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final next:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile valueReference:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .param p3, "hash"    # I
    .param p4    # Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1343
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry<TK;TV;>;"
    .local p1, "map":Lcom/google/common/collect/CustomConcurrentHashMap;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$QueueHolder;->queue:Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-direct {p0, p2, v0}, Lcom/google/common/base/FinalizableWeakReference;-><init>(Ljava/lang/Object;Lcom/google/common/base/FinalizableReferenceQueue;)V

    .line 1416
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->unset()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;->valueReference:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    .line 1344
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;->map:Lcom/google/common/collect/CustomConcurrentHashMap;

    .line 1345
    iput p3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;->hash:I

    .line 1346
    iput-object p4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;->next:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1347
    return-void
.end method


# virtual methods
.method public finalizeReferent()V
    .locals 0

    .prologue
    .line 1356
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;->notifyKeyReclaimed()V

    .line 1357
    return-void
.end method

.method public getExpirationTime()J
    .locals 1

    .prologue
    .line 1367
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHash()I
    .locals 1

    .prologue
    .line 1434
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1351
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1438
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;->next:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1395
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNextExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1376
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1404
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1385
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1420
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;->valueReference:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    return-object v0
.end method

.method public notifyKeyReclaimed()V
    .locals 1

    .prologue
    .line 1361
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;->map:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->reclaimKey(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1362
    return-void
.end method

.method public notifyValueReclaimed(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1430
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry<TK;TV;>;"
    .local p1, "v":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;->map:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->reclaimValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 1431
    return-void
.end method

.method public setExpirationTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1371
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1399
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1380
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1408
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry<TK;TV;>;"
    .local p1, "previous":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1389
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry<TK;TV;>;"
    .local p1, "previous":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1424
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry<TK;TV;>;"
    .local p1, "valueReference":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;->valueReference:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    .line 1425
    .local v0, "previous":Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakEntry;->valueReference:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    .line 1426
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->clear()V

    .line 1427
    return-void
.end method
