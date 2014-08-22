.class Lcom/google/common/collect/AbstractMultimap$Entries;
.super Ljava/util/AbstractCollection;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .locals 0

    .prologue
    .line 1258
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$Entries;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/AbstractMultimap;
    .param p2, "x1"    # Lcom/google/common/collect/AbstractMultimap$1;

    .prologue
    .line 1258
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$Entries;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap$Entries;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1277
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$Entries;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->clear()V

    .line 1278
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1269
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$Entries;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    .line 1270
    const/4 v1, 0x0

    .line 1273
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 1272
    check-cast v0, Ljava/util/Map$Entry;

    .line 1273
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/AbstractMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
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
    .line 1260
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$Entries;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->createEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1281
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$Entries;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    .line 1282
    const/4 v1, 0x0

    .line 1285
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 1284
    check-cast v0, Ljava/util/Map$Entry;

    .line 1285
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/AbstractMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1263
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$Entries;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->this$0:Lcom/google/common/collect/AbstractMultimap;

    # getter for: Lcom/google/common/collect/AbstractMultimap;->totalSize:I
    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$200(Lcom/google/common/collect/AbstractMultimap;)I

    move-result v0

    return v0
.end method
