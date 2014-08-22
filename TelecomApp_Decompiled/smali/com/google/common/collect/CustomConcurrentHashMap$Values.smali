.class final Lcom/google/common/collect/CustomConcurrentHashMap$Values;
.super Ljava/util/AbstractCollection;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V
    .locals 0

    .prologue
    .line 3625
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Values;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Values;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Values;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3644
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Values;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Values;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->clear()V

    .line 3645
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3640
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Values;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Values;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3636
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Values;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Values;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

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
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3628
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Values;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Values;"
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$ValueIterator;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Values;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueIterator;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3632
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Values;, "Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Values;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method
