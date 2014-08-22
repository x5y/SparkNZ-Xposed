.class final Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;
.super Ljava/util/AbstractSet;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V
    .locals 0

    .prologue
    .line 3598
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3621
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->clear()V

    .line 3622
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3613
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3609
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3601
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.KeySet;"
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$KeyIterator;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$KeyIterator;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3617
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3605
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$KeySet;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method
