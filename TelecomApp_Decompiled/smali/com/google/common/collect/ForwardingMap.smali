.class public abstract Lcom/google/common/collect/ForwardingMap;
.super Lcom/google/common/collect/ForwardingObject;
.source "ForwardingMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingObject;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 87
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 91
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 96
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
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
    .line 126
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 130
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

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
    .line 116
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 112
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected standardClear()V
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 183
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method protected standardContainsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->containsKeyImpl(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected standardContainsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->containsValueImpl(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected standardEntrySet(Lcom/google/common/base/Supplier;)Ljava/util/Set;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    .local p1, "entryIteratorSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->entrySetImpl(Ljava/util/Map;Lcom/google/common/base/Supplier;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected standardEquals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->equalsImpl(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected standardHashCode()I
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method protected standardIsEmpty()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected standardKeySet()Ljava/util/Set;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-static {p0}, Lcom/google/common/collect/Maps;->keySetImpl(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected standardPutAll(Ljava/util/Map;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->putAllImpl(Ljava/util/Map;Ljava/util/Map;)V

    .line 147
    return-void
.end method

.method protected standardRemove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 163
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 165
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 167
    .local v2, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 171
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected standardToString()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-static {p0}, Lcom/google/common/collect/Maps;->toStringImpl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected standardValues()Ljava/util/Collection;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-static {p0}, Lcom/google/common/collect/Maps;->valuesImpl(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/google/common/collect/ForwardingMap;, "Lcom/google/common/collect/ForwardingMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
