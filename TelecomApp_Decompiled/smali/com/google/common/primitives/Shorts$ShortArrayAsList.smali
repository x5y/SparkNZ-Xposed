.class Lcom/google/common/primitives/Shorts$ShortArrayAsList;
.super Ljava/util/AbstractList;
.source "Shorts.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Shorts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Short;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[S

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([S)V
    .locals 2
    .param p1, "array"    # [S

    .prologue
    .line 466
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;-><init>([SII)V

    .line 467
    return-void
.end method

.method constructor <init>([SII)V
    .locals 0
    .param p1, "array"    # [S
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 470
    iput-object p1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    .line 471
    iput p2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    .line 472
    iput p3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    .line 473
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 490
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    check-cast p1, Ljava/lang/Short;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Shorts;->indexOf([SSII)I
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Shorts;->access$000([SSII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 533
    if-ne p1, p0, :cond_1

    .line 549
    :cond_0
    :goto_0
    return v3

    .line 536
    :cond_1
    instance-of v5, p1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    if-eqz v5, :cond_4

    move-object v2, p1

    .line 537
    check-cast v2, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    .line 538
    .local v2, "that":Lcom/google/common/primitives/Shorts$ShortArrayAsList;
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v1

    .line 539
    .local v1, "size":I
    invoke-virtual {v2}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v5

    if-eq v5, v1, :cond_2

    move v3, v4

    .line 540
    goto :goto_0

    .line 542
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 543
    iget-object v5, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v6, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/2addr v6, v0

    aget-short v5, v5, v6

    iget-object v6, v2, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v7, v2, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/2addr v7, v0

    aget-short v6, v6, v7

    if-eq v5, v6, :cond_3

    move v3, v4

    .line 544
    goto :goto_0

    .line 542
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 549
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "that":Lcom/google/common/primitives/Shorts$ShortArrayAsList;
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 458
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->get(I)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Short;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 485
    iget-object v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-short v0, v0, v1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 553
    const/4 v1, 0x1

    .line 554
    .local v1, "result":I
    iget v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    if-ge v0, v2, :cond_0

    .line 555
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    aget-short v3, v3, v0

    invoke-static {v3}, Lcom/google/common/primitives/Shorts;->hashCode(S)I

    move-result v3

    add-int v1, v2, v3

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 557
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 496
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    check-cast p1, Ljava/lang/Short;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Shorts;->indexOf([SSII)I
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Shorts;->access$000([SSII)I

    move-result v0

    .line 498
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 499
    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 502
    .end local v0    # "i":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 507
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    check-cast p1, Ljava/lang/Short;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Shorts;->lastIndexOf([SSII)I
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Shorts;->access$100([SSII)I

    move-result v0

    .line 509
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 510
    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 513
    .end local v0    # "i":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 458
    check-cast p2, Ljava/lang/Short;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->set(ILjava/lang/Short;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Short;)Ljava/lang/Short;
    .locals 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Short;

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 518
    iget-object v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/2addr v2, p1

    aget-short v0, v1, v2

    .line 519
    .local v0, "oldValue":S
    iget-object v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/2addr v2, p1

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v3

    aput-short v3, v1, v2

    .line 520
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 476
    iget v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v0

    .line 525
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 526
    if-ne p1, p2, :cond_0

    .line 527
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 529
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    iget-object v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;-><init>([SII)V

    goto :goto_0
.end method

.method toShortArray()[S
    .locals 5

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v1

    .line 572
    .local v1, "size":I
    new-array v0, v1, [S

    .line 573
    .local v0, "result":[S
    iget-object v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 562
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    iget v4, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    aget-short v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->start:I

    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 564
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->array:[S

    aget-short v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
