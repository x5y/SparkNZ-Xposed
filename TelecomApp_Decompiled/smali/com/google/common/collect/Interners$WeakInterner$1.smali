.class Lcom/google/common/collect/Interners$WeakInterner$1;
.super Ljava/lang/Object;
.source "Interners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Interners$WeakInterner;->intern(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Interners$WeakInterner;

.field final synthetic val$hashCode:I

.field final synthetic val$sample:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Interners$WeakInterner;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 79
    .local p0, "this":Lcom/google/common/collect/Interners$WeakInterner$1;, "Lcom/google/common/collect/Interners$WeakInterner.1;"
    iput-object p1, p0, Lcom/google/common/collect/Interners$WeakInterner$1;->this$0:Lcom/google/common/collect/Interners$WeakInterner;

    iput p2, p0, Lcom/google/common/collect/Interners$WeakInterner$1;->val$hashCode:I

    iput-object p3, p0, Lcom/google/common/collect/Interners$WeakInterner$1;->val$sample:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 84
    .local p0, "this":Lcom/google/common/collect/Interners$WeakInterner$1;, "Lcom/google/common/collect/Interners$WeakInterner.1;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/Interners$WeakInterner$1;->val$hashCode:I

    if-eq v1, v2, :cond_0

    .line 85
    const/4 v1, 0x0

    .line 99
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 98
    check-cast v0, Lcom/google/common/collect/Interners$WeakInterner$InternReference;

    .line 99
    .local v0, "that":Lcom/google/common/collect/Interners$WeakInterner$InternReference;, "Lcom/google/common/collect/Interners$WeakInterner<TE;>.InternReference;"
    iget-object v1, p0, Lcom/google/common/collect/Interners$WeakInterner$1;->val$sample:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/common/collect/Interners$WeakInterner$InternReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/collect/Interners$WeakInterner$1;, "Lcom/google/common/collect/Interners$WeakInterner.1;"
    iget v0, p0, Lcom/google/common/collect/Interners$WeakInterner$1;->val$hashCode:I

    return v0
.end method
