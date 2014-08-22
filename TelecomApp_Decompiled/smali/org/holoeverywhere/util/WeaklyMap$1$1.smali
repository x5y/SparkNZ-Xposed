.class Lorg/holoeverywhere/util/WeaklyMap$1$1;
.super Ljava/lang/Object;
.source "WeaklyMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/util/WeaklyMap$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/holoeverywhere/util/WeaklyMap$1;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/util/WeaklyMap$1;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 84
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$1$1;, "Lorg/holoeverywhere/util/WeaklyMap$1.1;"
    iput-object p1, p0, Lorg/holoeverywhere/util/WeaklyMap$1$1;->this$1:Lorg/holoeverywhere/util/WeaklyMap$1;

    iput-object p2, p0, Lorg/holoeverywhere/util/WeaklyMap$1$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$1$1;, "Lorg/holoeverywhere/util/WeaklyMap$1.1;"
    iget-object v0, p0, Lorg/holoeverywhere/util/WeaklyMap$1$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$1$1;, "Lorg/holoeverywhere/util/WeaklyMap$1.1;"
    invoke-virtual {p0}, Lorg/holoeverywhere/util/WeaklyMap$1$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$1$1;, "Lorg/holoeverywhere/util/WeaklyMap$1.1;"
    new-instance v1, Lorg/holoeverywhere/util/WeaklyMap$WeaklyEntry;

    iget-object v0, p0, Lorg/holoeverywhere/util/WeaklyMap$1$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v1, v0}, Lorg/holoeverywhere/util/WeaklyMap$WeaklyEntry;-><init>(Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$1$1;, "Lorg/holoeverywhere/util/WeaklyMap$1.1;"
    iget-object v0, p0, Lorg/holoeverywhere/util/WeaklyMap$1$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 99
    return-void
.end method
