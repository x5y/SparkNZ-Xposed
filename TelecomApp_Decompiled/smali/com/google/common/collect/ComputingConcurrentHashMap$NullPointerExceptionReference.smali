.class Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference;
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
    name = "NullPointerExceptionReference"
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
.field final message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 182
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference;->message:Ljava/lang/String;

    .line 184
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 204
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference<TK;TV;>;"
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
    .line 191
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference<TK;TV;>;"
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
    .line 187
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public isComputingReference()Z
    .locals 1

    .prologue
    .line 195
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public notifyValueReclaimed()V
    .locals 0

    .prologue
    .line 202
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference<TK;TV;>;"
    return-void
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference<TK;TV;>;"
    new-instance v0, Ljava/lang/NullPointerException;

    iget-object v1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$NullPointerExceptionReference;->message:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
