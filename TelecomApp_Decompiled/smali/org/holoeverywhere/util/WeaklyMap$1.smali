.class Lorg/holoeverywhere/util/WeaklyMap$1;
.super Ljava/util/AbstractSet;
.source "WeaklyMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/util/WeaklyMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/util/WeaklyMap;

.field final synthetic val$entrySet:Ljava/util/Set;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/util/WeaklyMap;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 80
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$1;, "Lorg/holoeverywhere/util/WeaklyMap.1;"
    iput-object p1, p0, Lorg/holoeverywhere/util/WeaklyMap$1;->this$0:Lorg/holoeverywhere/util/WeaklyMap;

    iput-object p2, p0, Lorg/holoeverywhere/util/WeaklyMap$1;->val$entrySet:Ljava/util/Set;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
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
    .line 83
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$1;, "Lorg/holoeverywhere/util/WeaklyMap.1;"
    iget-object v1, p0, Lorg/holoeverywhere/util/WeaklyMap$1;->val$entrySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 84
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference<TV;>;>;>;"
    new-instance v1, Lorg/holoeverywhere/util/WeaklyMap$1$1;

    invoke-direct {v1, p0, v0}, Lorg/holoeverywhere/util/WeaklyMap$1$1;-><init>(Lorg/holoeverywhere/util/WeaklyMap$1;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$1;, "Lorg/holoeverywhere/util/WeaklyMap.1;"
    iget-object v0, p0, Lorg/holoeverywhere/util/WeaklyMap$1;->val$entrySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
