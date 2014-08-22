.class Lcom/google/common/collect/Interners$WeakInterner$InternReference;
.super Lcom/google/common/base/FinalizableWeakReference;
.source "Interners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners$WeakInterner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/FinalizableWeakReference",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final hashCode:I

.field final synthetic this$0:Lcom/google/common/collect/Interners$WeakInterner;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Interners$WeakInterner;Ljava/lang/Object;I)V
    .locals 1
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/google/common/collect/Interners$WeakInterner$InternReference;, "Lcom/google/common/collect/Interners$WeakInterner<TE;>.InternReference;"
    .local p2, "key":Ljava/lang/Object;, "TE;"
    iput-object p1, p0, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->this$0:Lcom/google/common/collect/Interners$WeakInterner;

    .line 133
    # getter for: Lcom/google/common/collect/Interners$WeakInterner;->frq:Lcom/google/common/base/FinalizableReferenceQueue;
    invoke-static {}, Lcom/google/common/collect/Interners$WeakInterner;->access$100()Lcom/google/common/base/FinalizableReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/common/base/FinalizableWeakReference;-><init>(Ljava/lang/Object;Lcom/google/common/base/FinalizableReferenceQueue;)V

    .line 134
    iput p3, p0, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->hashCode:I

    .line 135
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/Interners$WeakInterner$InternReference;, "Lcom/google/common/collect/Interners$WeakInterner<TE;>.InternReference;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 151
    if-ne p1, p0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v2

    .line 154
    :cond_1
    instance-of v4, p1, Lcom/google/common/collect/Interners$WeakInterner$InternReference;

    if-eqz v4, :cond_4

    move-object v1, p1

    .line 168
    check-cast v1, Lcom/google/common/collect/Interners$WeakInterner$InternReference;

    .line 170
    .local v1, "that":Lcom/google/common/collect/Interners$WeakInterner$InternReference;
    iget v4, v1, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->hashCode:I

    iget v5, p0, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->hashCode:I

    if-eq v4, v5, :cond_2

    move v2, v3

    .line 171
    goto :goto_0

    .line 173
    :cond_2
    invoke-super {p0}, Lcom/google/common/base/FinalizableWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 174
    .local v0, "referent":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0

    .line 176
    .end local v0    # "referent":Ljava/lang/Object;, "TE;"
    .end local v1    # "that":Lcom/google/common/collect/Interners$WeakInterner$InternReference;
    :cond_4
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public finalizeReferent()V
    .locals 1

    .prologue
    .line 138
    .local p0, "this":Lcom/google/common/collect/Interners$WeakInterner$InternReference;, "Lcom/google/common/collect/Interners$WeakInterner<TE;>.InternReference;"
    iget-object v0, p0, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->this$0:Lcom/google/common/collect/Interners$WeakInterner;

    # getter for: Lcom/google/common/collect/Interners$WeakInterner;->map:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lcom/google/common/collect/Interners$WeakInterner;->access$200(Lcom/google/common/collect/Interners$WeakInterner;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/google/common/collect/Interners$WeakInterner$InternReference;, "Lcom/google/common/collect/Interners$WeakInterner<TE;>.InternReference;"
    invoke-super {p0}, Lcom/google/common/base/FinalizableWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 142
    .local v0, "referent":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->finalizeReferent()V

    .line 145
    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lcom/google/common/collect/Interners$WeakInterner$InternReference;, "Lcom/google/common/collect/Interners$WeakInterner<TE;>.InternReference;"
    iget v0, p0, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->hashCode:I

    return v0
.end method
