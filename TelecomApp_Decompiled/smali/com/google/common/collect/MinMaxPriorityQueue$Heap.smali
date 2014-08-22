.class Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
.super Ljava/lang/Object;
.source "MinMaxPriorityQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MinMaxPriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Heap"
.end annotation


# instance fields
.field final ordering:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering",
            "<TE;>;"
        }
    .end annotation
.end field

.field otherHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>.Heap;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/MinMaxPriorityQueue;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/Ordering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Ordering",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 487
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p2, "ordering":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TE;>;"
    iput-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-object p2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    .line 489
    return-void
.end method

.method static synthetic access$400(Lcom/google/common/collect/MinMaxPriorityQueue$Heap;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
    .param p1, "x1"    # I

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->verifyIndex(I)Z

    move-result v0

    return v0
.end method

.method private getGrandparentIndex(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 732
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v0

    return v0
.end method

.method private getLeftChildIndex(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 720
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getParentIndex(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 728
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getRightChildIndex(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 724
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private verifyIndex(I)Z
    .locals 3
    .param p1, "i"    # I

    .prologue
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    const/4 v0, 0x0

    .line 700
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->size:I
    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v1

    if-lez v1, :cond_1

    .line 714
    :cond_0
    :goto_0
    return v0

    .line 704
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getRightChildIndex(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->size:I
    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getRightChildIndex(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v1

    if-gtz v1, :cond_0

    .line 708
    :cond_2
    if-lez p1, :cond_3

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v1

    if-gtz v1, :cond_0

    .line 711
    :cond_3
    const/4 v1, 0x2

    if-le p1, v1, :cond_4

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getGrandparentIndex(I)I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v1

    if-gtz v1, :cond_0

    .line 714
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method bubbleUp(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->crossOverUp(ILjava/lang/Object;)I

    move-result v0

    .line 535
    .local v0, "crossOver":I
    if-ne v0, p1, :cond_0

    .line 536
    move-object v1, p0

    .line 541
    .local v1, "heap":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    :goto_0
    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->bubbleUpAlternatingLevels(ILjava/lang/Object;)I

    .line 542
    return-void

    .line 538
    .end local v1    # "heap":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    :cond_0
    move p1, v0

    .line 539
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->otherHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    .restart local v1    # "heap":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    goto :goto_0
.end method

.method bubbleUpAlternatingLevels(ILjava/lang/Object;)I
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    :goto_0
    const/4 v2, 0x2

    if-le p1, v2, :cond_0

    .line 550
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getGrandparentIndex(I)I

    move-result v1

    .line 551
    .local v1, "grandParentIndex":I
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    .line 552
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2, v0, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 558
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "grandParentIndex":I
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object p2, v2, p1

    .line 559
    return p1

    .line 555
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    .restart local v1    # "grandParentIndex":I
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v0, v2, p1

    .line 556
    move p1, v1

    .line 557
    goto :goto_0
.end method

.method compareElements(II)I
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 492
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, p2}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method crossOver(ILjava/lang/Object;)I
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .prologue
    .line 670
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->findMinChild(I)I

    move-result v0

    .line 673
    .local v0, "minChildIndex":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 675
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1

    .line 676
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    aput-object p2, v1, v0

    .line 679
    .end local v0    # "minChildIndex":I
    :goto_0
    return v0

    .restart local v0    # "minChildIndex":I
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->crossOverUp(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method crossOverUp(ILjava/lang/Object;)I
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    .line 606
    if-nez p1, :cond_0

    .line 607
    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;
    invoke-static {v5}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v5

    aput-object p2, v5, v2

    .line 633
    :goto_0
    return v2

    .line 610
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v2

    .line 611
    .local v2, "parentIndex":I
    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v5, v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    .line 612
    .local v1, "parentElement":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_1

    .line 617
    invoke-direct {p0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v0

    .line 618
    .local v0, "grandparentIndex":I
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getRightChildIndex(I)I

    move-result v4

    .line 619
    .local v4, "uncleIndex":I
    if-eq v4, v2, :cond_1

    invoke-direct {p0, v4}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->size:I
    invoke-static {v6}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 620
    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v5, v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v3

    .line 621
    .local v3, "uncleElement":Ljava/lang/Object;, "TE;"
    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v5, v3, v1}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    .line 622
    move v2, v4

    .line 623
    move-object v1, v3

    .line 627
    .end local v0    # "grandparentIndex":I
    .end local v3    # "uncleElement":Ljava/lang/Object;, "TE;"
    .end local v4    # "uncleIndex":I
    :cond_1
    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v5, v1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    .line 628
    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;
    invoke-static {v5}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v5

    aput-object v1, v5, p1

    .line 629
    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;
    invoke-static {v5}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v5

    aput-object p2, v5, v2

    goto :goto_0

    .line 632
    :cond_2
    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;
    invoke-static {v5}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v5

    aput-object p2, v5, p1

    move v2, p1

    .line 633
    goto :goto_0
.end method

.method fillHoleAt(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 692
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->findMinGrandChild(I)I

    move-result v0

    .local v0, "minGrandchildIndex":I
    if-lez v0, :cond_0

    .line 693
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1

    .line 694
    move p1, v0

    goto :goto_0

    .line 696
    :cond_0
    return p1
.end method

.method findMin(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "len"    # I

    .prologue
    .line 568
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->size:I
    invoke-static {v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 569
    const/4 v2, -0x1

    .line 579
    :cond_0
    return v2

    .line 571
    :cond_1
    if-lez p1, :cond_3

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 572
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->size:I
    invoke-static {v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v3

    sub-int/2addr v3, p2

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v1, v3, p2

    .line 573
    .local v1, "limit":I
    move v2, p1

    .line 574
    .local v2, "minIndex":I
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 575
    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v3

    if-gez v3, :cond_2

    .line 576
    move v2, v0

    .line 574
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 571
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v2    # "minIndex":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method findMinChild(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 586
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->findMin(II)I

    move-result v0

    return v0
.end method

.method findMinGrandChild(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 593
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v0

    .line 594
    .local v0, "leftChildIndex":I
    if-gez v0, :cond_0

    .line 595
    const/4 v1, -0x1

    .line 597
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->findMin(II)I

    move-result v1

    goto :goto_0
.end method

.method getCorrectLastElement(Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 646
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p1, "actualLastElement":Ljava/lang/Object;, "TE;"
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->size:I
    invoke-static {v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v1

    .line 647
    .local v1, "parentIndex":I
    if-eqz v1, :cond_0

    .line 648
    invoke-direct {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v0

    .line 649
    .local v0, "grandparentIndex":I
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getRightChildIndex(I)I

    move-result v3

    .line 650
    .local v3, "uncleIndex":I
    if-eq v3, v1, :cond_0

    invoke-direct {p0, v3}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getLeftChildIndex(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->size:I
    invoke-static {v5}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 652
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    .line 653
    .local v2, "uncleElement":Ljava/lang/Object;, "TE;"
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v4, v2, p1}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_0

    .line 654
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;
    invoke-static {v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v4

    aput-object p1, v4, v3

    .line 655
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;
    invoke-static {v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->size:I
    invoke-static {v5}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v5

    aput-object v2, v4, v5

    .line 660
    .end local v0    # "grandparentIndex":I
    .end local v2    # "uncleElement":Ljava/lang/Object;, "TE;"
    .end local v3    # "uncleIndex":I
    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    # getter for: Lcom/google/common/collect/MinMaxPriorityQueue;->size:I
    invoke-static {v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v3

    goto :goto_0
.end method

.method tryCrossOverAndBubbleUp(IILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;
    .locals 5
    .param p1, "removeIndex"    # I
    .param p2, "vacated"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$Heap;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.Heap;"
    .local p3, "toTrickle":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    .line 502
    invoke-virtual {p0, p2, p3}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->crossOver(ILjava/lang/Object;)I

    move-result v0

    .line 503
    .local v0, "crossOver":I
    if-ne v0, p2, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-object v2

    .line 512
    :cond_1
    if-ge v0, p1, :cond_2

    .line 515
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v3, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    .line 520
    .local v1, "parent":Ljava/lang/Object;, "TE;"
    :goto_1
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->otherHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    invoke-virtual {v3, v0, p3}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->bubbleUpAlternatingLevels(ILjava/lang/Object;)I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 522
    new-instance v2, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    invoke-direct {v2, p3, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 517
    .end local v1    # "parent":Ljava/lang/Object;, "TE;"
    :cond_2
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getParentIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "parent":Ljava/lang/Object;, "TE;"
    goto :goto_1
.end method
