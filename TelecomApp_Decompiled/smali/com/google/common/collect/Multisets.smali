.class public final Lcom/google/common/collect/Multisets;
.super Ljava/lang/Object;
.source "Multisets.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multisets$MultisetIteratorImpl;,
        Lcom/google/common/collect/Multisets$ElementSetImpl;,
        Lcom/google/common/collect/Multisets$AbstractEntry;,
        Lcom/google/common/collect/Multisets$SetMultiset;,
        Lcom/google/common/collect/Multisets$UnmodifiableMultiset;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addAllImpl(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "self":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 493
    const/4 v3, 0x0

    .line 503
    :goto_0
    return v3

    .line 495
    :cond_0
    instance-of v3, p1, Lcom/google/common/collect/Multiset;

    if-eqz v3, :cond_1

    .line 496
    invoke-static {p1}, Lcom/google/common/collect/Multisets;->cast(Ljava/lang/Iterable;)Lcom/google/common/collect/Multiset;

    move-result-object v2

    .line 497
    .local v2, "that":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<+TE;>;"
    invoke-interface {v2}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 498
    .local v0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    invoke-interface {p0, v3, v4}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    goto :goto_1

    .line 501
    .end local v0    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "that":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<+TE;>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 503
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static cast(Ljava/lang/Iterable;)Lcom/google/common/collect/Multiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 711
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    check-cast p0, Lcom/google/common/collect/Multiset;

    .end local p0    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    return-object p0
.end method

.method static checkNonnegative(ILjava/lang/String;)V
    .locals 5
    .param p0, "count"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 704
    if-ltz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "%s cannot be negative: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 705
    return-void

    :cond_0
    move v0, v2

    .line 704
    goto :goto_0
.end method

.method static elementSetImpl(Lcom/google/common/collect/Multiset;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, "self":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/Multisets$ElementSetImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multisets$ElementSetImpl;-><init>(Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method

.method static equalsImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 462
    if-ne p1, p0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v3

    .line 465
    :cond_1
    instance-of v5, p1, Lcom/google/common/collect/Multiset;

    if-eqz v5, :cond_5

    move-object v2, p1

    .line 466
    check-cast v2, Lcom/google/common/collect/Multiset;

    .line 473
    .local v2, "that":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->size()I

    move-result v5

    invoke-interface {v2}, Lcom/google/common/collect/Multiset;->size()I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-interface {v2}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    :cond_2
    move v3, v4

    .line 475
    goto :goto_0

    .line 477
    :cond_3
    invoke-interface {v2}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 478
    .local v0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v5}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v6

    if-eq v5, v6, :cond_4

    move v3, v4

    .line 479
    goto :goto_0

    .end local v0    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "that":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    :cond_5
    move v3, v4

    .line 484
    goto :goto_0
.end method

.method static forSet(Ljava/util/Set;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v0, Lcom/google/common/collect/Multisets$SetMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multisets$SetMultiset;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;I)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "e":Ljava/lang/Object;, "TE;"
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 163
    new-instance v0, Lcom/google/common/collect/Multisets$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$1;-><init>(Ljava/lang/Object;I)V

    return-object v0

    .line 162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static inferDistinctElements(Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    instance-of v0, p0, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 339
    check-cast p0, Lcom/google/common/collect/Multiset;

    .end local p0    # "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 341
    :goto_0
    return v0

    .restart local p0    # "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method

.method public static intersection(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Lcom/google/common/collect/Multiset",
            "<*>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "multiset1":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "multiset2":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v0, Lcom/google/common/collect/Multisets$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$2;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method

.method static iteratorImpl(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;)",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 639
    .local p0, "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;-><init>(Lcom/google/common/collect/Multiset;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static removeAllImpl(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 511
    .local p0, "self":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    .local p1, "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v1, p1, Lcom/google/common/collect/Multiset;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/common/collect/Multiset;

    .end local p1    # "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    .line 514
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local p1    # "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_0
    move-object v0, p1

    .line 511
    goto :goto_0
.end method

.method static retainAllImpl(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 522
    .local p0, "self":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    .local p1, "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v1, p1, Lcom/google/common/collect/Multiset;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/common/collect/Multiset;

    .end local p1    # "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    .line 525
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local p1    # "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_0
    move-object v0, p1

    .line 522
    goto :goto_0
.end method

.method static setCountImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;I)I
    .locals 3
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;TE;I)I"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, "self":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v2, "count"

    invoke-static {p2, v2}, Lcom/google/common/collect/Multisets;->checkNonnegative(ILjava/lang/String;)V

    .line 534
    invoke-interface {p0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 536
    .local v1, "oldCount":I
    sub-int v0, p2, v1

    .line 537
    .local v0, "delta":I
    if-lez v0, :cond_1

    .line 538
    invoke-interface {p0, p1, v0}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    .line 543
    :cond_0
    :goto_0
    return v1

    .line 539
    :cond_1
    if-gez v0, :cond_0

    .line 540
    neg-int v2, v0

    invoke-interface {p0, p1, v2}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    goto :goto_0
.end method

.method static setCountImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;II)Z
    .locals 1
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;TE;II)Z"
        }
    .end annotation

    .prologue
    .line 551
    .local p0, "self":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/google/common/collect/Multisets;->checkNonnegative(ILjava/lang/String;)V

    .line 552
    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/google/common/collect/Multisets;->checkNonnegative(ILjava/lang/String;)V

    .line 554
    invoke-interface {p0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 555
    invoke-interface {p0, p1, p3}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    .line 556
    const/4 v0, 0x1

    .line 558
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static sizeImpl(Lcom/google/common/collect/Multiset;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 696
    .local p0, "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    const-wide/16 v2, 0x0

    .line 697
    .local v2, "size":J
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 698
    .local v0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 700
    .end local v0    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    :cond_0
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v4

    return v4
.end method

.method public static unmodifiableMultiset(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<+TE;>;"
    new-instance v1, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;-><init>(Lcom/google/common/collect/Multiset;)V

    return-object v1
.end method
