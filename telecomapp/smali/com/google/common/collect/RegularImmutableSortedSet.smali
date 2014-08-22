.class final Lcom/google/common/collect/RegularImmutableSortedSet;
.super Lcom/google/common/collect/ImmutableSortedSet;
.source "RegularImmutableSortedSet.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient elements:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "elements":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 48
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    .line 49
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private binarySearch(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 130
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    .line 132
    .local v0, "unsafeComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    return v1
.end method

.method private createSubset(II)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .param p1, "newFromIndex"    # I
    .param p2, "newToIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    if-ge p1, p2, :cond_0

    .line 212
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 215
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    goto :goto_0
.end method

.method private findSubsetIndex(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->binarySearch(Ljava/lang/Object;)I

    move-result v0

    .line 207
    .local v0, "index":I
    if-ltz v0, :cond_0

    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_0
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    const/4 v1, 0x0

    .line 66
    if-nez p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->binarySearch(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "targets":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/google/common/collect/RegularImmutableSortedSet;->hasSameComparator(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    if-gt v7, v5, :cond_2

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    .line 118
    :cond_1
    :goto_0
    return v5

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    .line 90
    .local v4, "thisIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 91
    .local v3, "thatIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 95
    .local v2, "target":Ljava/lang/Object;
    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 97
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 99
    .local v0, "cmp":I
    if-nez v0, :cond_4

    .line 101
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 106
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_1

    .line 108
    :cond_4
    if-lez v0, :cond_3

    move v5, v6

    .line 109
    goto :goto_0

    .line 112
    .end local v0    # "cmp":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    move v5, v6

    .line 113
    goto :goto_0

    .line 114
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/ClassCastException;
    move v5, v6

    .line 115
    goto :goto_0

    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_5
    move v5, v6

    .line 118
    goto :goto_0
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSortedAsList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ImmutableSortedAsList;-><init>(Lcom/google/common/collect/ImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 148
    if-ne p1, p0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v6

    .line 151
    :cond_1
    instance-of v8, p1, Ljava/util/Set;

    if-nez v8, :cond_2

    move v6, v7

    .line 152
    goto :goto_0

    :cond_2
    move-object v5, p1

    .line 155
    check-cast v5, Ljava/util/Set;

    .line 156
    .local v5, "that":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v8

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v9

    if-eq v8, v9, :cond_3

    move v6, v7

    .line 157
    goto :goto_0

    .line 160
    :cond_3
    iget-object v8, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v5, v8}, Lcom/google/common/collect/RegularImmutableSortedSet;->hasSameComparator(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 161
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 163
    .local v4, "otherIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    .line 164
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 166
    .local v1, "element":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 167
    .local v3, "otherElement":Ljava/lang/Object;
    if-eqz v3, :cond_5

    invoke-virtual {p0, v1, v3}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_4

    :cond_5
    move v6, v7

    .line 169
    goto :goto_0

    .line 173
    .end local v1    # "element":Ljava/lang/Object;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    .end local v3    # "otherElement":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/ClassCastException;
    move v6, v7

    .line 174
    goto :goto_0

    .line 175
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/util/NoSuchElementException;
    move v6, v7

    .line 176
    goto :goto_0

    .line 179
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    .end local v4    # "otherIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_6
    invoke-virtual {p0, v5}, Lcom/google/common/collect/RegularImmutableSortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    goto :goto_0
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method headSetImpl(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->createSubset(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    const/4 v2, -0x1

    .line 220
    if-nez p1, :cond_0

    .line 234
    :goto_0
    return v2

    .line 225
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->binarySearch(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 234
    .local v1, "position":I
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v1    # "position":I
    :goto_1
    move v2, v1

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local v1    # "position":I
    :cond_1
    move v1, v2

    .line 234
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method subSetImpl(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->createSubset(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method tailSetImpl(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->createSubset(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
