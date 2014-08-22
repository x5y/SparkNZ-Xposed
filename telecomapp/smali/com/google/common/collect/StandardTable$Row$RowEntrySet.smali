.class Lcom/google/common/collect/StandardTable$Row$RowEntrySet;
.super Ljava/util/AbstractSet;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable$Row;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/StandardTable$Row;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable$Row;)V
    .locals 0

    .prologue
    .line 369
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row$RowEntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row.RowEntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable$Row;Lcom/google/common/collect/StandardTable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/StandardTable$Row;
    .param p2, "x1"    # Lcom/google/common/collect/StandardTable$1;

    .prologue
    .line 369
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row$RowEntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row.RowEntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;-><init>(Lcom/google/common/collect/StandardTable$Row;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 371
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row$RowEntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row.RowEntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 375
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row$RowEntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row.RowEntrySet;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 376
    check-cast v0, Ljava/util/Map$Entry;

    .line 377
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v2, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    iget-object v2, v2, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    # invokes: Lcom/google/common/collect/StandardTable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/collect/StandardTable;->access$300(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 379
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row$RowEntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row.RowEntrySet;"
    iget-object v2, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    iget-object v2, v2, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v2, v2, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    iget-object v3, v3, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 397
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-nez v1, :cond_0

    .line 398
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyModifiableIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 401
    :goto_0
    return-object v2

    .line 400
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 401
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TC;TV;>;>;"
    new-instance v2, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;-><init>(Lcom/google/common/collect/StandardTable$Row$RowEntrySet;Ljava/util/Iterator;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 383
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row$RowEntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row.RowEntrySet;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 384
    check-cast v0, Ljava/util/Map$Entry;

    .line 385
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v2, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    iget-object v2, v2, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    # invokes: Lcom/google/common/collect/StandardTable;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/collect/StandardTable;->access$400(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 387
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 391
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row$RowEntrySet;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row.RowEntrySet;"
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet;->this$1:Lcom/google/common/collect/StandardTable$Row;

    iget-object v2, v2, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 392
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    goto :goto_0
.end method
