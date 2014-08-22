.class final Lorg/holoeverywhere/util/WeaklyMap$WeaklyEntry;
.super Ljava/lang/Object;
.source "WeaklyMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/util/WeaklyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeaklyEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final mEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;",
            "Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$WeaklyEntry;, "Lorg/holoeverywhere/util/WeaklyMap$WeaklyEntry<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/holoeverywhere/util/WeaklyMap$WeaklyEntry;->mEntry:Ljava/util/Map$Entry;

    .line 20
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$WeaklyEntry;, "Lorg/holoeverywhere/util/WeaklyMap$WeaklyEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/holoeverywhere/util/WeaklyMap$WeaklyEntry;->mEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$WeaklyEntry;, "Lorg/holoeverywhere/util/WeaklyMap$WeaklyEntry<TK;TV;>;"
    iget-object v1, p0, Lorg/holoeverywhere/util/WeaklyMap$WeaklyEntry;->mEntry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;

    .line 30
    .local v0, "ref":Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;, "Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference<TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$WeaklyEntry;, "Lorg/holoeverywhere/util/WeaklyMap$WeaklyEntry<TK;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/holoeverywhere/util/WeaklyMap$WeaklyEntry;->mEntry:Ljava/util/Map$Entry;

    new-instance v2, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;

    invoke-direct {v2, p1}, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;

    .line 36
    .local v0, "ref":Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;, "Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference<TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
