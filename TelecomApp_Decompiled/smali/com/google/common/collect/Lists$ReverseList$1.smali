.class Lcom/google/common/collect/Lists$ReverseList$1;
.super Ljava/lang/Object;
.source "Lists.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Lists$ReverseList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field canRemove:Z

.field canSet:Z

.field final synthetic this$0:Lcom/google/common/collect/Lists$ReverseList;

.field final synthetic val$forwardIterator:Ljava/util/ListIterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Lists$ReverseList;Ljava/util/ListIterator;)V
    .locals 0

    .prologue
    .line 816
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    iput-object p1, p0, Lcom/google/common/collect/Lists$ReverseList$1;->this$0:Lcom/google/common/collect/Lists$ReverseList;

    iput-object p2, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 822
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 823
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 824
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canRemove:Z

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canSet:Z

    .line 825
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 828
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 832
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 836
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 839
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canRemove:Z

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canSet:Z

    .line 840
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 844
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->this$0:Lcom/google/common/collect/Lists$ReverseList;

    iget-object v1, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    # invokes: Lcom/google/common/collect/Lists$ReverseList;->reversePosition(I)I
    invoke-static {v0, v1}, Lcom/google/common/collect/Lists$ReverseList;->access$100(Lcom/google/common/collect/Lists$ReverseList;I)I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 848
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList$1;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 851
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canRemove:Z

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canSet:Z

    .line 852
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 856
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList$1;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 860
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    iget-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canRemove:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 861
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 862
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canSet:Z

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canRemove:Z

    .line 863
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 866
    .local p0, "this":Lcom/google/common/collect/Lists$ReverseList$1;, "Lcom/google/common/collect/Lists$ReverseList.1;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->canSet:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 867
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList$1;->val$forwardIterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 868
    return-void
.end method
