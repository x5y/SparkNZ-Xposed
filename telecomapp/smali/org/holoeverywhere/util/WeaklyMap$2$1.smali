.class Lorg/holoeverywhere/util/WeaklyMap$2$1;
.super Ljava/lang/Object;
.source "WeaklyMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/util/WeaklyMap$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/holoeverywhere/util/WeaklyMap$2;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/util/WeaklyMap$2;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 157
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$2$1;, "Lorg/holoeverywhere/util/WeaklyMap$2.1;"
    iput-object p1, p0, Lorg/holoeverywhere/util/WeaklyMap$2$1;->this$1:Lorg/holoeverywhere/util/WeaklyMap$2;

    iput-object p2, p0, Lorg/holoeverywhere/util/WeaklyMap$2$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 161
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$2$1;, "Lorg/holoeverywhere/util/WeaklyMap$2.1;"
    iget-object v0, p0, Lorg/holoeverywhere/util/WeaklyMap$2$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$2$1;, "Lorg/holoeverywhere/util/WeaklyMap$2.1;"
    iget-object v1, p0, Lorg/holoeverywhere/util/WeaklyMap$2$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;

    .line 167
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

.method public remove()V
    .locals 1

    .prologue
    .line 172
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$2$1;, "Lorg/holoeverywhere/util/WeaklyMap$2.1;"
    iget-object v0, p0, Lorg/holoeverywhere/util/WeaklyMap$2$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 173
    return-void
.end method
