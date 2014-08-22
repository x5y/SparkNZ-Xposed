.class Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;
.super Ljava/util/AbstractQueue;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EvictionQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractQueue",
        "<",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment;)V
    .locals 1

    .prologue
    .line 2903
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment.EvictionQueue;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->this$1:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 2906
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$1;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 3053
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment.EvictionQueue;"
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3054
    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eq v0, v2, :cond_0

    .line 3055
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    .line 3056
    .local v1, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-static {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->nullifyEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3057
    move-object v0, v1

    .line 3058
    goto :goto_0

    .line 3060
    .end local v1    # "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v2, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setNextEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3061
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v2, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setPreviousEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3062
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3032
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment.EvictionQueue;"
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 3033
    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    sget-object v2, Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;->INSTANCE:Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 3038
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment.EvictionQueue;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3066
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment.EvictionQueue;"
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$2;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->peek()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$2;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    return-object v0
.end method

.method public offer(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 2990
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment.EvictionQueue;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getPreviousEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->connectEvictables(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2994
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getPreviousEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->connectEvictables(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2995
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-static {p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->connectEvictables(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2997
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2903
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment.EvictionQueue;"
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->offer(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v0

    return v0
.end method

.method public peek()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3002
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment.EvictionQueue;"
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3003
    .local v0, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :cond_0
    return-object v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2903
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment.EvictionQueue;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->peek()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3008
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment.EvictionQueue;"
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3009
    .local v0, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    .line 3010
    const/4 v0, 0x0

    .line 3014
    .end local v0    # "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    return-object v0

    .line 3013
    .restart local v0    # "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2903
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment.EvictionQueue;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->poll()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3020
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment.EvictionQueue;"
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 3021
    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getPreviousEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v2

    .line 3022
    .local v2, "previous":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    .line 3023
    .local v1, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-static {v2, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->connectEvictables(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3024
    invoke-static {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->nullifyEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 3026
    sget-object v3, Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;->INSTANCE:Lcom/google/common/collect/CustomConcurrentHashMap$NullEntry;

    if-eq v1, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 3043
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Segment.EvictionQueue;"
    const/4 v1, 0x0

    .line 3044
    .local v1, "size":I
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .local v0, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eq v0, v2, :cond_0

    .line 3046
    add-int/lit8 v1, v1, 0x1

    .line 3045
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 3048
    :cond_0
    return v1
.end method
