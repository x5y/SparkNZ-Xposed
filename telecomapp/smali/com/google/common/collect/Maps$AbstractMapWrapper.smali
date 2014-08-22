.class final Lcom/google/common/collect/Maps$AbstractMapWrapper;
.super Lcom/google/common/collect/Maps$ImprovedAbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AbstractMapWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$ImprovedAbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1711
    .local p0, "this":Lcom/google/common/collect/Maps$AbstractMapWrapper;, "Lcom/google/common/collect/Maps$AbstractMapWrapper<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;-><init>()V

    .line 1712
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/Maps$AbstractMapWrapper;->map:Ljava/util/Map;

    .line 1713
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1716
    .local p0, "this":Lcom/google/common/collect/Maps$AbstractMapWrapper;, "Lcom/google/common/collect/Maps$AbstractMapWrapper<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractMapWrapper;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1717
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1720
    .local p0, "this":Lcom/google/common/collect/Maps$AbstractMapWrapper;, "Lcom/google/common/collect/Maps$AbstractMapWrapper<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractMapWrapper;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1728
    .local p0, "this":Lcom/google/common/collect/Maps$AbstractMapWrapper;, "Lcom/google/common/collect/Maps$AbstractMapWrapper<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractMapWrapper;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected createEntrySet()Ljava/util/Set;
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
    .line 1732
    .local p0, "this":Lcom/google/common/collect/Maps$AbstractMapWrapper;, "Lcom/google/common/collect/Maps$AbstractMapWrapper<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractMapWrapper;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1736
    .local p0, "this":Lcom/google/common/collect/Maps$AbstractMapWrapper;, "Lcom/google/common/collect/Maps$AbstractMapWrapper<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractMapWrapper;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 1724
    .local p0, "this":Lcom/google/common/collect/Maps$AbstractMapWrapper;, "Lcom/google/common/collect/Maps$AbstractMapWrapper<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractMapWrapper;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1740
    .local p0, "this":Lcom/google/common/collect/Maps$AbstractMapWrapper;, "Lcom/google/common/collect/Maps$AbstractMapWrapper<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractMapWrapper;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
