.class Lcom/google/common/collect/Maps$EntrySetImpl;
.super Ljava/util/AbstractSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntrySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final entryIteratorSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;>;"
        }
    .end annotation
.end field

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1537
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySetImpl;, "Lcom/google/common/collect/Maps$EntrySetImpl<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "entryIteratorSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1538
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/Maps$EntrySetImpl;->map:Ljava/util/Map;

    .line 1539
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Supplier;

    iput-object v0, p0, Lcom/google/common/collect/Maps$EntrySetImpl;->entryIteratorSupplier:Lcom/google/common/base/Supplier;

    .line 1540
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1551
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySetImpl;, "Lcom/google/common/collect/Maps$EntrySetImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$EntrySetImpl;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1552
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1555
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySetImpl;, "Lcom/google/common/collect/Maps$EntrySetImpl<TK;TV;>;"
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 1556
    check-cast v0, Ljava/util/Map$Entry;

    .line 1557
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1558
    .local v1, "key":Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/common/collect/Maps$EntrySetImpl;->map:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1559
    iget-object v3, p0, Lcom/google/common/collect/Maps$EntrySetImpl;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1560
    .local v2, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 1563
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1580
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySetImpl;, "Lcom/google/common/collect/Maps$EntrySetImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$EntrySetImpl;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1567
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySetImpl;, "Lcom/google/common/collect/Maps$EntrySetImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$EntrySetImpl;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
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
    .line 1543
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySetImpl;, "Lcom/google/common/collect/Maps$EntrySetImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$EntrySetImpl;->entryIteratorSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1571
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySetImpl;, "Lcom/google/common/collect/Maps$EntrySetImpl<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$EntrySetImpl;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1572
    check-cast v0, Ljava/util/Map$Entry;

    .line 1573
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$EntrySetImpl;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    const/4 v1, 0x1

    .line 1576
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1547
    .local p0, "this":Lcom/google/common/collect/Maps$EntrySetImpl;, "Lcom/google/common/collect/Maps$EntrySetImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$EntrySetImpl;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
