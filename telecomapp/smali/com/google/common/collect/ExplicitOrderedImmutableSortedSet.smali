.class final Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;
.super Lcom/google/common/collect/ImmutableSortedSet;
.source "ExplicitOrderedImmutableSortedSet.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet$SerializedForm;
    }
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
.field private final elements:[Ljava/lang/Object;

.field private final fromIndex:I

.field private final toIndex:I


# direct methods
.method constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 2
    .param p1, "elements"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;II)V

    .line 66
    return-void
.end method

.method constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;II)V
    .locals 0
    .param p1, "elements"    # [Ljava/lang/Object;
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<-TE;>;II)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 71
    iput-object p1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->elements:[Ljava/lang/Object;

    .line 72
    iput p3, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->fromIndex:I

    .line 73
    iput p4, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->toIndex:I

    .line 74
    return-void
.end method

.method static create(Ljava/util/List;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v1, Lcom/google/common/collect/ExplicitOrdering;

    invoke-direct {v1, p0}, Lcom/google/common/collect/ExplicitOrdering;-><init>(Ljava/util/List;)V

    .line 43
    .local v1, "ordering":Lcom/google/common/collect/ExplicitOrdering;, "Lcom/google/common/collect/ExplicitOrdering<TE;>;"
    iget-object v2, v1, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-static {v1}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v2

    .line 48
    :goto_0
    return-object v2

    .line 47
    :cond_0
    iget-object v2, v1, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 48
    .local v0, "elements":[Ljava/lang/Object;
    new-instance v2, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
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
    .line 180
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    if-ge p1, p2, :cond_0

    .line 181
    new-instance v0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;II)V

    .line 184
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    goto :goto_0
.end method

.method private findSubsetIndex(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->rankMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 165
    .local v0, "index":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 167
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    .line 169
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->fromIndex:I

    if-gt v1, v2, :cond_1

    .line 170
    iget v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->fromIndex:I

    .line 174
    :goto_0
    return v1

    .line 171
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->toIndex:I

    if-lt v1, v2, :cond_2

    .line 172
    iget v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->toIndex:I

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private rankMap()Lcom/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ExplicitOrdering;

    .line 80
    .local v0, "eo":Lcom/google/common/collect/ExplicitOrdering;, "Lcom/google/common/collect/ExplicitOrdering<TE;>;"
    iget-object v1, v0, Lcom/google/common/collect/ExplicitOrdering;->rankMap:Lcom/google/common/collect/ImmutableMap;

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Use SerializedForm"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 100
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->rankMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 101
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->fromIndex:I

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->toIndex:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSortedAsList;

    new-instance v1, Lcom/google/common/collect/RegularImmutableList;

    iget-object v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->fromIndex:I

    invoke-virtual {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->size()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ImmutableSortedAsList;-><init>(Lcom/google/common/collect/ImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->fromIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 128
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    const/4 v0, 0x0

    .line 129
    .local v0, "hash":I
    iget v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->fromIndex:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->toIndex:I

    if-ge v1, v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return v0
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
    .line 150
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->fromIndex:I

    invoke-direct {p0, p1}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->createSubset(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 189
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->rankMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 190
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->fromIndex:I

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->toIndex:I

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->fromIndex:I

    sub-int/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method isPartialView()Z
    .locals 2

    .prologue
    .line 105
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->fromIndex:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->toIndex:I

    iget-object v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->elements:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->fromIndex:I

    invoke-virtual {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;II)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

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
    .line 146
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->toIndex:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 96
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->toIndex:I

    iget v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->fromIndex:I

    sub-int/2addr v0, v1

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
    .line 155
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->createSubset(II)Lcom/google/common/collect/ImmutableSortedSet;

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
    .line 160
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->toIndex:I

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->createSubset(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 109
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 110
    .local v0, "array":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->fromIndex:I

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->size()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/common/collect/Platform;->unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 111
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->size()I

    move-result v0

    .line 117
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 118
    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 122
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->fromIndex:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Lcom/google/common/collect/Platform;->unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 123
    return-object p1

    .line 119
    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_0

    .line 120
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 229
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet$SerializedForm;

    invoke-virtual {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
