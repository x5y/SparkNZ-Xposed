.class public Lorg/holoeverywhere/util/WeaklyMap;
.super Ljava/util/AbstractMap;
.source "WeaklyMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;,
        Lorg/holoeverywhere/util/WeaklyMap$WeaklyEntry;
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
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final mMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<TK;",
            "Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap;, "Lorg/holoeverywhere/util/WeaklyMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 59
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/util/WeaklyMap;->mMap:Ljava/util/WeakHashMap;

    .line 60
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap;, "Lorg/holoeverywhere/util/WeaklyMap<TK;TV;>;"
    iget-object v0, p0, Lorg/holoeverywhere/util/WeaklyMap;->mMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 65
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 69
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap;, "Lorg/holoeverywhere/util/WeaklyMap<TK;TV;>;"
    iget-object v0, p0, Lorg/holoeverywhere/util/WeaklyMap;->mMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 74
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap;, "Lorg/holoeverywhere/util/WeaklyMap<TK;TV;>;"
    iget-object v0, p0, Lorg/holoeverywhere/util/WeaklyMap;->mMap:Ljava/util/WeakHashMap;

    new-instance v1, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;

    invoke-direct {v1, p1}, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
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
    .line 79
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap;, "Lorg/holoeverywhere/util/WeaklyMap<TK;TV;>;"
    iget-object v1, p0, Lorg/holoeverywhere/util/WeaklyMap;->mMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 80
    .local v0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference<TV;>;>;>;"
    new-instance v1, Lorg/holoeverywhere/util/WeaklyMap$1;

    invoke-direct {v1, p0, v0}, Lorg/holoeverywhere/util/WeaklyMap$1;-><init>(Lorg/holoeverywhere/util/WeaklyMap;Ljava/util/Set;)V

    return-object v1
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
    .line 112
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap;, "Lorg/holoeverywhere/util/WeaklyMap<TK;TV;>;"
    iget-object v1, p0, Lorg/holoeverywhere/util/WeaklyMap;->mMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;

    .line 113
    .local v0, "ref":Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;, "Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference<TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap;, "Lorg/holoeverywhere/util/WeaklyMap<TK;TV;>;"
    iget-object v0, p0, Lorg/holoeverywhere/util/WeaklyMap;->mMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    return v0
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
    .line 123
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap;, "Lorg/holoeverywhere/util/WeaklyMap<TK;TV;>;"
    iget-object v0, p0, Lorg/holoeverywhere/util/WeaklyMap;->mMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap;, "Lorg/holoeverywhere/util/WeaklyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/holoeverywhere/util/WeaklyMap;->mMap:Ljava/util/WeakHashMap;

    new-instance v2, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;

    invoke-direct {v2, p2}, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;

    .line 129
    .local v0, "ref":Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;, "Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference<TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap;, "Lorg/holoeverywhere/util/WeaklyMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
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

    .line 135
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    iget-object v2, p0, Lorg/holoeverywhere/util/WeaklyMap;->mMap:Ljava/util/WeakHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 137
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
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
    .line 141
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap;, "Lorg/holoeverywhere/util/WeaklyMap<TK;TV;>;"
    iget-object v1, p0, Lorg/holoeverywhere/util/WeaklyMap;->mMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;

    .line 142
    .local v0, "ref":Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;, "Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference<TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 147
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap;, "Lorg/holoeverywhere/util/WeaklyMap<TK;TV;>;"
    iget-object v0, p0, Lorg/holoeverywhere/util/WeaklyMap;->mMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap;, "Lorg/holoeverywhere/util/WeaklyMap<TK;TV;>;"
    iget-object v1, p0, Lorg/holoeverywhere/util/WeaklyMap;->mMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 153
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference<TV;>;>;"
    new-instance v1, Lorg/holoeverywhere/util/WeaklyMap$2;

    invoke-direct {v1, p0, v0}, Lorg/holoeverywhere/util/WeaklyMap$2;-><init>(Lorg/holoeverywhere/util/WeaklyMap;Ljava/util/Collection;)V

    return-object v1
.end method
