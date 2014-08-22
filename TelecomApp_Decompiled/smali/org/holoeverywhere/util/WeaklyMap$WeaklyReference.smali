.class final Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;
.super Ljava/lang/ref/WeakReference;
.source "WeaklyMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/util/WeaklyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeaklyReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;, "Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference<TT;>;"
    .local p1, "r":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;, "Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference<TT;>;"
    const/4 v2, 0x0

    .line 47
    instance-of v3, p1, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;

    if-nez v3, :cond_1

    .line 52
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 50
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, "o1":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/holoeverywhere/util/WeaklyMap$WeaklyReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 52
    .local v1, "o2":Ljava/lang/Object;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
