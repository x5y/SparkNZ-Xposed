.class Lcom/google/common/collect/TreeBasedTable$MergingIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "TreeBasedTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeBasedTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MergingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private lastValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/PeekingIterator",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/util/Iterator",
            "<TT;>;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable$MergingIterator;, "Lcom/google/common/collect/TreeBasedTable$MergingIterator<TT;>;"
    .local p1, "iterators":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Iterator<TT;>;>;"
    .local p2, "itemComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 227
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->lastValue:Ljava/lang/Object;

    .line 234
    iput-object p2, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->comparator:Ljava/util/Comparator;

    .line 238
    new-instance v0, Lcom/google/common/collect/TreeBasedTable$MergingIterator$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeBasedTable$MergingIterator$1;-><init>(Lcom/google/common/collect/TreeBasedTable$MergingIterator;)V

    .line 248
    .local v0, "heapComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/google/common/collect/PeekingIterator<TT;>;>;"
    new-instance v3, Ljava/util/PriorityQueue;

    const/4 v4, 0x1

    invoke-static {p1}, Lcom/google/common/collect/Iterables;->size(Ljava/lang/Iterable;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v3, v4, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v3, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->queue:Ljava/util/Queue;

    .line 250
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Iterator;

    .line 251
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    iget-object v3, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->queue:Ljava/util/Queue;

    invoke-static {v2}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/TreeBasedTable$MergingIterator;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeBasedTable$MergingIterator;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->comparator:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lcom/google/common/collect/TreeBasedTable$MergingIterator;, "Lcom/google/common/collect/TreeBasedTable$MergingIterator<TT;>;"
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 259
    iget-object v3, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/PeekingIterator;

    .line 261
    .local v2, "nextIter":Lcom/google/common/collect/PeekingIterator;, "Lcom/google/common/collect/PeekingIterator<TT;>;"
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 262
    .local v1, "next":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->lastValue:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->comparator:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->lastValue:Ljava/lang/Object;

    invoke-interface {v3, v1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 266
    .local v0, "duplicate":Z
    :goto_0
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    iget-object v3, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->queue:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_1
    if-nez v0, :cond_0

    .line 271
    iput-object v1, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->lastValue:Ljava/lang/Object;

    .line 272
    iget-object v3, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->lastValue:Ljava/lang/Object;

    .line 277
    .end local v0    # "duplicate":Z
    .end local v1    # "next":Ljava/lang/Object;, "TT;"
    .end local v2    # "nextIter":Lcom/google/common/collect/PeekingIterator;, "Lcom/google/common/collect/PeekingIterator<TT;>;"
    :goto_1
    return-object v3

    .line 262
    .restart local v1    # "next":Ljava/lang/Object;, "TT;"
    .restart local v2    # "nextIter":Lcom/google/common/collect/PeekingIterator;, "Lcom/google/common/collect/PeekingIterator<TT;>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 276
    .end local v1    # "next":Ljava/lang/Object;, "TT;"
    .end local v2    # "nextIter":Lcom/google/common/collect/PeekingIterator;, "Lcom/google/common/collect/PeekingIterator<TT;>;"
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->lastValue:Ljava/lang/Object;

    .line 277
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$MergingIterator;->endOfData()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1
.end method
