.class public abstract Lcom/google/common/collect/ImmutableSortedSet;
.super Lcom/google/common/collect/ImmutableSortedSetFauxverideShim;
.source "ImmutableSortedSet.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableSortedSet$SerializedForm;,
        Lcom/google/common/collect/ImmutableSortedSet$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedSetFauxverideShim",
        "<TE;>;",
        "Ljava/util/SortedSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final NATURAL_EMPTY_SET:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 100
    new-instance v0, Lcom/google/common/collect/EmptyImmutableSortedSet;

    sget-object v1, Lcom/google/common/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/google/common/collect/EmptyImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/ImmutableSortedSet;->NATURAL_EMPTY_SET:Lcom/google/common/collect/ImmutableSortedSet;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 689
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedSetFauxverideShim;-><init>()V

    .line 690
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    .line 691
    return-void
.end method

.method static synthetic access$000(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .param p0, "x0"    # Ljava/util/Comparator;
    .param p1, "x1"    # Ljava/util/Iterator;

    .prologue
    .line 88
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 267
    .local v0, "naturalOrder":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 305
    .local v0, "naturalOrder":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/lang/Iterable;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/lang/Iterable;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 325
    .local v0, "naturalOrder":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf([Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>([TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "elements":[Ljava/lang/Comparable;, "[TE;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method private static copyOfInternal(Ljava/util/Comparator;Ljava/lang/Iterable;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 6
    .param p2, "fromSortedSet"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/lang/Iterable",
            "<+TE;>;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    if-nez p2, :cond_0

    invoke-static {p1, p0}, Lcom/google/common/collect/ImmutableSortedSet;->hasSameComparator(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 418
    .local v2, "hasSameComparator":Z
    :goto_0
    if-eqz v2, :cond_4

    instance-of v5, p1, Lcom/google/common/collect/ImmutableSortedSet;

    if-eqz v5, :cond_4

    move-object v4, p1

    .line 420
    check-cast v4, Lcom/google/common/collect/ImmutableSortedSet;

    .line 421
    .local v4, "original":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableSortedSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 437
    .end local v4    # "original":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    :cond_1
    :goto_1
    return-object v4

    .line 415
    .end local v2    # "hasSameComparator":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 424
    .restart local v2    # "hasSameComparator":Z
    .restart local v4    # "original":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    :cond_3
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableSortedSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 425
    .local v1, "elementsList":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 426
    .local v0, "copiedElementsList":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    if-eq v1, v0, :cond_1

    .line 429
    new-instance v4, Lcom/google/common/collect/RegularImmutableSortedSet;

    .end local v4    # "original":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-direct {v4, v0, p0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    goto :goto_1

    .line 432
    .end local v0    # "copiedElementsList":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    .end local v1    # "elementsList":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    :cond_4
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/google/common/collect/ImmutableSortedSet;->immutableSortedUniqueCopy(Ljava/util/Comparator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 434
    .local v3, "list":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 435
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v4

    goto :goto_1

    .line 437
    :cond_5
    new-instance v4, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-direct {v4, v3, p0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method private static copyOfInternal(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    .line 447
    :goto_0
    return-object v1

    .line 445
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/common/collect/ImmutableSortedSet;->immutableSortedUniqueCopy(Ljava/util/Comparator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 447
    .local v0, "list":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    new-instance v1, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-direct {v1, v0, p0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static copyOfSorted(Ljava/util/SortedSet;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-interface {p0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 406
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v0, :cond_0

    .line 407
    sget-object v0, Lcom/google/common/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 409
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/google/common/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/lang/Iterable;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    return-object v1
.end method

.method private static emptySet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 105
    sget-object v0, Lcom/google/common/collect/ImmutableSortedSet;->NATURAL_EMPTY_SET:Lcom/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method static emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    sget-object v0, Lcom/google/common/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/EmptyImmutableSortedSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EmptyImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method static hasSameComparator(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/util/Comparator",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    const/4 v2, 0x0

    .line 479
    instance-of v3, p0, Ljava/util/SortedSet;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 480
    check-cast v1, Ljava/util/SortedSet;

    .line 481
    .local v1, "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<*>;"
    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 482
    .local v0, "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    if-ne p1, v3, :cond_0

    const/4 v2, 0x1

    .line 486
    .end local v0    # "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    .end local v1    # "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<*>;"
    :cond_0
    :goto_0
    return v2

    .line 482
    .restart local v0    # "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    .restart local v1    # "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<*>;"
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private static immutableSortedUniqueCopy(Ljava/util/Comparator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/util/List",
            "<TE;>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 457
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 467
    :goto_0
    return-object v4

    .line 459
    :cond_0
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 460
    const/4 v2, 0x1

    .line 461
    .local v2, "size":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 462
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 463
    .local v0, "elem":Ljava/lang/Object;, "TE;"
    add-int/lit8 v4, v2, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 464
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "size":I
    .local v3, "size":I
    invoke-interface {p1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    .line 461
    .end local v3    # "size":I
    .restart local v2    # "size":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 467
    .end local v0    # "elem":Ljava/lang/Object;, "TE;"
    :cond_2
    const/4 v4, 0x0

    invoke-interface {p1, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    goto :goto_0
.end method

.method public static naturalOrder()Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<TE;>;>()",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 579
    new-instance v0, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "element":Ljava/lang/Comparable;, "TE;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    .local p2, "e3":Ljava/lang/Comparable;, "TE;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    .local p2, "e3":Ljava/lang/Comparable;, "TE;"
    .local p3, "e4":Ljava/lang/Comparable;, "TE;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    .local p2, "e3":Ljava/lang/Comparable;, "TE;"
    .local p3, "e4":Ljava/lang/Comparable;, "TE;"
    .local p4, "e5":Ljava/lang/Comparable;, "TE;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;[Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    .local p2, "e3":Ljava/lang/Comparable;, "TE;"
    .local p3, "e4":Ljava/lang/Comparable;, "TE;"
    .local p4, "e5":Ljava/lang/Comparable;, "TE;"
    .local p5, "e6":Ljava/lang/Comparable;, "TE;"
    .local p6, "remaining":[Ljava/lang/Comparable;, "[TE;"
    array-length v2, p6

    add-int/lit8 v1, v2, 0x6

    .line 197
    .local v1, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<TE;>;"
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    const/4 v3, 0x5

    aput-object p5, v2, v3

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 199
    invoke-static {v0, p6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 200
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v2

    return-object v2
.end method

.method public static of([Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>([TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    .local p0, "elements":[Ljava/lang/Comparable;, "[TE;"
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf([Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 550
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
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
    .line 796
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Use SerializedForm"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static reverseOrder()Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<TE;>;>()",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 563
    new-instance v0, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 683
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    move-object v0, p0

    .line 684
    .local v0, "unsafeComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public static varargs withExplicitOrder(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;[TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 537
    .local p0, "firstElement":Ljava/lang/Object;, "TE;"
    .local p1, "remainingElementsInOrder":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->asList(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedSet;->withExplicitOrder(Ljava/util/List;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static withExplicitOrder(Ljava/util/List;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 509
    .local p0, "elements":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;->create(Ljava/util/List;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 702
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 718
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSortedSet;->headSetImpl(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 86
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method abstract headSetImpl(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end method

.method abstract indexOf(Ljava/lang/Object;)I
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 736
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 739
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedSet;->subSetImpl(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0

    .line 738
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 86
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method abstract subSetImpl(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end method

.method public tailSet(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 755
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSortedSet;->tailSetImpl(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 86
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method abstract tailSetImpl(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end method

.method unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 674
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/ImmutableSortedSet;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 800
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedSet;, "Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSortedSet$SerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableSortedSet$SerializedForm;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;)V

    return-object v0
.end method
