.class Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference;
.super Lcom/google/common/base/FinalizableWeakReference;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/FinalizableWeakReference",
        "<TV;>;",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final entry:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1589
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference<TK;TV;>;"
    .local p1, "referent":Ljava/lang/Object;, "TV;"
    .local p2, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$QueueHolder;->queue:Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/FinalizableWeakReference;-><init>(Ljava/lang/Object;Lcom/google/common/base/FinalizableReferenceQueue;)V

    .line 1590
    iput-object p2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference;->entry:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1591
    return-void
.end method


# virtual methods
.method public copyFor(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1605
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference;-><init>(Ljava/lang/Object;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    return-object v0
.end method

.method public finalizeReferent()V
    .locals 1

    .prologue
    .line 1600
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference;->entry:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->notifyValueReclaimed(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 1601
    return-void
.end method

.method public isComputingReference()Z
    .locals 1

    .prologue
    .line 1610
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public notifyValueReclaimed()V
    .locals 0

    .prologue
    .line 1595
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference;->finalizeReferent()V

    .line 1596
    return-void
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1615
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$WeakValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
