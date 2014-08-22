.class Lcom/google/common/collect/ImmutableSortedMap$4;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableSortedMap;->valueIterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableSortedMap;

.field final synthetic val$entryIterator:Lcom/google/common/collect/UnmodifiableIterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;Lcom/google/common/collect/UnmodifiableIterator;)V
    .locals 0

    .prologue
    .line 552
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$4;, "Lcom/google/common/collect/ImmutableSortedMap.4;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$4;->this$0:Lcom/google/common/collect/ImmutableSortedMap;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableSortedMap$4;->val$entryIterator:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 555
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$4;, "Lcom/google/common/collect/ImmutableSortedMap.4;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$4;->val$entryIterator:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 559
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMap$4;, "Lcom/google/common/collect/ImmutableSortedMap.4;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$4;->val$entryIterator:Lcom/google/common/collect/UnmodifiableIterator;

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
