.class final Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V
    .locals 0

    .prologue
    .line 3648
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3687
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->clear()V

    .line 3688
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.EntrySet;"
    const/4 v3, 0x0

    .line 3655
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-nez v4, :cond_1

    .line 3665
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, p1

    .line 3658
    check-cast v0, Ljava/util/Map$Entry;

    .line 3659
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3660
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 3663
    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3665
    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v4, v4, Lcom/google/common/collect/CustomConcurrentHashMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3683
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3651
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryIterator;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryIterator;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.EntrySet;"
    const/4 v2, 0x0

    .line 3669
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    .line 3674
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 3672
    check-cast v0, Ljava/util/Map$Entry;

    .line 3673
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3674
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/google/common/collect/CustomConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3679
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method
