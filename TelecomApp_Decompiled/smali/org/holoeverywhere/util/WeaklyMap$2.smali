.class Lorg/holoeverywhere/util/WeaklyMap$2;
.super Ljava/util/AbstractCollection;
.source "WeaklyMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/util/WeaklyMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/util/WeaklyMap;

.field final synthetic val$values:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/util/WeaklyMap;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 153
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$2;, "Lorg/holoeverywhere/util/WeaklyMap.2;"
    iput-object p1, p0, Lorg/holoeverywhere/util/WeaklyMap$2;->this$0:Lorg/holoeverywhere/util/WeaklyMap;

    iput-object p2, p0, Lorg/holoeverywhere/util/WeaklyMap$2;->val$values:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$2;, "Lorg/holoeverywhere/util/WeaklyMap.2;"
    iget-object v1, p0, Lorg/holoeverywhere/util/WeaklyMap$2;->val$values:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 157
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference<TV;>;>;"
    new-instance v1, Lorg/holoeverywhere/util/WeaklyMap$2$1;

    invoke-direct {v1, p0, v0}, Lorg/holoeverywhere/util/WeaklyMap$2$1;-><init>(Lorg/holoeverywhere/util/WeaklyMap$2;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 179
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$2;, "Lorg/holoeverywhere/util/WeaklyMap.2;"
    iget-object v0, p0, Lorg/holoeverywhere/util/WeaklyMap$2;->val$values:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
