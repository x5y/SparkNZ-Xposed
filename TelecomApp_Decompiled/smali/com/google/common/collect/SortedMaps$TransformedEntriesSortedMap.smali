.class Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap;
.super Lcom/google/common/collect/Maps$TransformedEntriesMap;
.source "SortedMaps.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/SortedMaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransformedEntriesSortedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$TransformedEntriesMap",
        "<TK;TV1;TV2;>;",
        "Ljava/util/SortedMap",
        "<TK;TV2;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;TV1;>;",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap;, "Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap<TK;TV1;TV2;>;"
    .local p1, "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    .local p2, "transformer":Lcom/google/common/collect/Maps$EntryTransformer;, "Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Maps$TransformedEntriesMap;-><init>(Ljava/util/Map;Lcom/google/common/collect/Maps$EntryTransformer;)V

    .line 169
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap;, "Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap<TK;TV1;TV2;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap;->fromMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap;, "Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap<TK;TV1;TV2;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap;->fromMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected fromMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV1;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap;, "Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap;->fromMap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap;, "Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap<TK;TV1;TV2;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap;->fromMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap;->transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    invoke-static {v0, v1}, Lcom/google/common/collect/SortedMaps;->transformEntries(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap;, "Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap<TK;TV1;TV2;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap;->fromMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap;, "Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap<TK;TV1;TV2;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap;->fromMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap;->transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    invoke-static {v0, v1}, Lcom/google/common/collect/SortedMaps;->transformEntries(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap;, "Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap<TK;TV1;TV2;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap;->fromMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/SortedMaps$TransformedEntriesSortedMap;->transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    invoke-static {v0, v1}, Lcom/google/common/collect/SortedMaps;->transformEntries(Ljava/util/SortedMap;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
