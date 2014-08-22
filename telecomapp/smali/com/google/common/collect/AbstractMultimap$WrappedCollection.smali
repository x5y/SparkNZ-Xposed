.class Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
.super Ljava/util/AbstractCollection;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/AbstractMultimap",
            "<TK;TV;>.WrappedCollection;"
        }
    .end annotation
.end field

.field final ancestorDelegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field delegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V
    .locals 1
    .param p1    # Lcom/google/common/collect/AbstractMultimap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV;>;",
            "Lcom/google/common/collect/AbstractMultimap",
            "<TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "delegate":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .local p4, "ancestor":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 406
    iput-object p2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    .line 407
    iput-object p3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 408
    iput-object p4, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    .line 409
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestorDelegate:Ljava/util/Collection;

    .line 411
    return-void

    .line 409
    :cond_0
    invoke-virtual {p4}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->getDelegate()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 547
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 548
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    .line 549
    .local v1, "wasEmpty":Z
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 550
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 551
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    # operator++ for: Lcom/google/common/collect/AbstractMultimap;->totalSize:I
    invoke-static {v2}, Lcom/google/common/collect/AbstractMultimap;->access$208(Lcom/google/common/collect/AbstractMultimap;)I

    .line 552
    if-eqz v1, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->addToMap()V

    .line 556
    :cond_0
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 567
    const/4 v0, 0x0

    .line 578
    :cond_0
    :goto_0
    return v0

    .line 569
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v2

    .line 570
    .local v2, "oldSize":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 571
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 572
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    .line 573
    .local v1, "newSize":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    sub-int v4, v1, v2

    # += operator for: Lcom/google/common/collect/AbstractMultimap;->totalSize:I
    invoke-static {v3, v4}, Lcom/google/common/collect/AbstractMultimap;->access$212(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 574
    if-nez v2, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->addToMap()V

    goto :goto_0
.end method

.method addToMap()V
    .locals 3

    .prologue
    .line 458
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->addToMap()V

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    # getter for: Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 592
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v0

    .line 593
    .local v0, "oldSize":I
    if-nez v0, :cond_0

    .line 599
    :goto_0
    return-void

    .line 596
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 597
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    # -= operator for: Lcom/google/common/collect/AbstractMultimap;->totalSize:I
    invoke-static {v1, v0}, Lcom/google/common/collect/AbstractMultimap;->access$220(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 598
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->removeIfEmpty()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 582
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 583
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 587
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 588
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 471
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    if-ne p1, p0, :cond_0

    .line 472
    const/4 v0, 0x1

    .line 475
    :goto_0
    return v0

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 475
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getAncestor()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/AbstractMultimap",
            "<TK;TV;>.WrappedCollection;"
        }
    .end annotation

    .prologue
    .line 560
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    return-object v0
.end method

.method getDelegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    return-object v0
.end method

.method getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 479
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 480
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 494
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    return-object v0
.end method

.method refreshIfEmpty()V
    .locals 3

    .prologue
    .line 421
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v1}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 423
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v1}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->getDelegate()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestorDelegate:Ljava/util/Collection;

    if-eq v1, v2, :cond_1

    .line 424
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    # getter for: Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 428
    .local v0, "newDelegate":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_1

    .line 429
    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 432
    .end local v0    # "newDelegate":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 602
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 603
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 604
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 605
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    # operator-- for: Lcom/google/common/collect/AbstractMultimap;->totalSize:I
    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->access$210(Lcom/google/common/collect/AbstractMultimap;)I

    .line 606
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->removeIfEmpty()V

    .line 608
    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 612
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 613
    const/4 v0, 0x0

    .line 622
    :cond_0
    :goto_0
    return v0

    .line 615
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v2

    .line 616
    .local v2, "oldSize":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 617
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 618
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    .line 619
    .local v1, "newSize":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    sub-int v4, v1, v2

    # += operator for: Lcom/google/common/collect/AbstractMultimap;->totalSize:I
    invoke-static {v3, v4}, Lcom/google/common/collect/AbstractMultimap;->access$212(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 620
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->removeIfEmpty()V

    goto :goto_0
.end method

.method removeIfEmpty()V
    .locals 2

    .prologue
    .line 439
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->removeIfEmpty()V

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    # getter for: Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 626
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v2

    .line 628
    .local v2, "oldSize":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 629
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 630
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    .line 631
    .local v1, "newSize":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    sub-int v4, v1, v2

    # += operator for: Lcom/google/common/collect/AbstractMultimap;->totalSize:I
    invoke-static {v3, v4}, Lcom/google/common/collect/AbstractMultimap;->access$212(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 632
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->removeIfEmpty()V

    .line 634
    .end local v1    # "newSize":I
    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 466
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 467
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 485
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
