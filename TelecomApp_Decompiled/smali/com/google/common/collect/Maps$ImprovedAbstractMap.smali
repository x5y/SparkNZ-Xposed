.class abstract Lcom/google/common/collect/Maps$ImprovedAbstractMap;
.super Ljava/util/AbstractMap;
.source "Maps.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ImprovedAbstractMap"
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
.field private entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1421
    .local p0, "this":Lcom/google/common/collect/Maps$ImprovedAbstractMap;, "Lcom/google/common/collect/Maps$ImprovedAbstractMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createEntrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
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
    .line 1432
    .local p0, "this":Lcom/google/common/collect/Maps$ImprovedAbstractMap;, "Lcom/google/common/collect/Maps$ImprovedAbstractMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->entrySet:Ljava/util/Set;

    .line 1433
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    .line 1434
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->entrySet:Ljava/util/Set;

    .line 1436
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1493
    .local p0, "this":Lcom/google/common/collect/Maps$ImprovedAbstractMap;, "Lcom/google/common/collect/Maps$ImprovedAbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1442
    .local p0, "this":Lcom/google/common/collect/Maps$ImprovedAbstractMap;, "Lcom/google/common/collect/Maps$ImprovedAbstractMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->keySet:Ljava/util/Set;

    .line 1443
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v1, :cond_0

    .line 1444
    invoke-super {p0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1445
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    new-instance v1, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;

    .end local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap$1;-><init>(Lcom/google/common/collect/Maps$ImprovedAbstractMap;Ljava/util/Set;)V

    .restart local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iput-object v1, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->keySet:Ljava/util/Set;

    .line 1463
    .end local v0    # "delegate":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_0
    return-object v1
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
    .line 1469
    .local p0, "this":Lcom/google/common/collect/Maps$ImprovedAbstractMap;, "Lcom/google/common/collect/Maps$ImprovedAbstractMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->values:Ljava/util/Collection;

    .line 1470
    .local v1, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v1, :cond_0

    .line 1471
    invoke-super {p0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1472
    .local v0, "delegate":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    new-instance v1, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;

    .end local v1    # "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap$2;-><init>(Lcom/google/common/collect/Maps$ImprovedAbstractMap;Ljava/util/Collection;)V

    .restart local v1    # "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iput-object v1, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->values:Ljava/util/Collection;

    .line 1482
    .end local v0    # "delegate":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    return-object v1
.end method
