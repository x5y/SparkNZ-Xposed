.class Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$2;
.super Lcom/google/common/collect/AbstractLinkedIterator;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractLinkedIterator",
        "<",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0

    .prologue
    .line 3252
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$2;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.2;"
    .local p2, "x0":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$2;->this$2:Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractLinkedIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected computeNext(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3256
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$2;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.2;"
    .local p1, "previous":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3257
    .local v0, "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$2;->this$2:Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;

    iget-object v1, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;->head:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "next":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3252
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$2;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue.2;"
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue$2;->computeNext(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method
