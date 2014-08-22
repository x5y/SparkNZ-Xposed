.class final Lcom/google/common/collect/SortedLists;
.super Ljava/lang/Object;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/SortedLists$1;,
        Lcom/google/common/collect/SortedLists$Relation;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$Relation;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "relation"    # Lcom/google/common/collect/SortedLists$Relation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;TE;",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Lcom/google/common/collect/SortedLists$Relation;",
            ")I"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$Relation;Z)I

    move-result v0

    return v0
.end method

.method static binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$Relation;Z)I
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "relation"    # Lcom/google/common/collect/SortedLists$Relation;
    .param p4, "worryAboutDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;TE;",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Lcom/google/common/collect/SortedLists$Relation;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const/4 v3, 0x0

    .line 354
    .local v3, "lower":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 356
    .local v5, "upper":I
    :goto_0
    if-gt v3, v5, :cond_2

    .line 357
    sub-int v0, v5, v3

    div-int/lit8 v0, v0, 0x2

    add-int v4, v3, v0

    .line 358
    .local v4, "middle":I
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .line 359
    .local v8, "c":I
    if-gez v8, :cond_0

    .line 360
    add-int/lit8 v5, v4, -0x1

    goto :goto_0

    .line 361
    :cond_0
    if-lez v8, :cond_1

    .line 362
    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move v7, p4

    .line 364
    invoke-virtual/range {v0 .. v7}, Lcom/google/common/collect/SortedLists$Relation;->exactMatchFound(Ljava/util/List;Ljava/lang/Object;IIILjava/util/Comparator;Z)I

    move-result v0

    .line 369
    .end local v4    # "middle":I
    .end local v8    # "c":I
    :goto_1
    return v0

    :cond_2
    invoke-virtual {p3, p0, p1, v3, p2}, Lcom/google/common/collect/SortedLists$Relation;->exactMatchNotFound(Ljava/util/List;Ljava/lang/Object;ILjava/util/Comparator;)I

    move-result v0

    goto :goto_1
.end method
