.class Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;
.super Ljava/lang/Object;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ComputingConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComputedReference"
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
.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;->value:Ljava/lang/Object;

    .line 241
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 261
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference<TK;TV;>;"
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
    .line 248
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference<TK;TV;>;"
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
    .line 244
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isComputingReference()Z
    .locals 1

    .prologue
    .line 252
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public notifyValueReclaimed()V
    .locals 0

    .prologue
    .line 259
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference<TK;TV;>;"
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
    .line 256
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
