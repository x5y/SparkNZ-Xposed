.class Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrongValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final referent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1661
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference<TK;TV;>;"
    .local p1, "referent":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1662
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference;->referent:Ljava/lang/Object;

    .line 1663
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 1689
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference<TK;TV;>;"
    return-void
.end method

.method public copyFor(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .locals 0
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
    .line 1672
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1667
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference;->referent:Ljava/lang/Object;

    return-object v0
.end method

.method public isComputingReference()Z
    .locals 1

    .prologue
    .line 1677
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public notifyValueReclaimed()V
    .locals 0

    .prologue
    .line 1686
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference<TK;TV;>;"
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
    .line 1682
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference;, "Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
