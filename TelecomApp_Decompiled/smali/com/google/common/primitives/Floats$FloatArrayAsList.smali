.class Lcom/google/common/primitives/Floats$FloatArrayAsList;
.super Ljava/util/AbstractList;
.source "Floats.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Floats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Float;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[F

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([F)V
    .locals 2
    .param p1, "array"    # [F

    .prologue
    .line 386
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/Floats$FloatArrayAsList;-><init>([FII)V

    .line 387
    return-void
.end method

.method constructor <init>([FII)V
    .locals 0
    .param p1, "array"    # [F
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 390
    iput-object p1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    .line 391
    iput p2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    .line 392
    iput p3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    .line 393
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 410
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    check-cast p1, Ljava/lang/Float;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Floats;->indexOf([FFII)I
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Floats;->access$000([FFII)I

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

    .line 453
    if-ne p1, p0, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v3

    .line 456
    :cond_1
    instance-of v5, p1, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    if-eqz v5, :cond_4

    move-object v2, p1

    .line 457
    check-cast v2, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    .line 458
    .local v2, "that":Lcom/google/common/primitives/Floats$FloatArrayAsList;
    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->size()I

    move-result v1

    .line 459
    .local v1, "size":I
    invoke-virtual {v2}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->size()I

    move-result v5

    if-eq v5, v1, :cond_2

    move v3, v4

    .line 460
    goto :goto_0

    .line 462
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 463
    iget-object v5, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v6, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v6, v0

    aget v5, v5, v6

    iget-object v6, v2, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v7, v2, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v7, v0

    aget v6, v6, v7

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    move v3, v4

    .line 464
    goto :goto_0

    .line 462
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 469
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "that":Lcom/google/common/primitives/Floats$FloatArrayAsList;
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Float;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 405
    iget-object v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->get(I)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 473
    const/4 v1, 0x1

    .line 474
    .local v1, "result":I
    iget v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    if-ge v0, v2, :cond_0

    .line 475
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    aget v3, v3, v0

    invoke-static {v3}, Lcom/google/common/primitives/Floats;->hashCode(F)I

    move-result v3

    add-int v1, v2, v3

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 416
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    check-cast p1, Ljava/lang/Float;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Floats;->indexOf([FFII)I
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Floats;->access$000([FFII)I

    move-result v0

    .line 418
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 419
    iget v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 422
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
    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 427
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    check-cast p1, Ljava/lang/Float;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    # invokes: Lcom/google/common/primitives/Floats;->lastIndexOf([FFII)I
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Floats;->access$100([FFII)I

    move-result v0

    .line 429
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 430
    iget v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 433
    .end local v0    # "i":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public set(ILjava/lang/Float;)Ljava/lang/Float;
    .locals 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Float;

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 438
    iget-object v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v2, p1

    aget v0, v1, v2

    .line 439
    .local v0, "oldValue":F
    iget-object v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v2, p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    .line 440
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 378
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->set(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 396
    iget v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

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
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->size()I

    move-result v0

    .line 445
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 446
    if-ne p1, p2, :cond_0

    .line 447
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 449
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    iget-object v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/primitives/Floats$FloatArrayAsList;-><init>([FII)V

    goto :goto_0
.end method

.method toFloatArray()[F
    .locals 5

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->size()I

    move-result v1

    .line 492
    .local v1, "size":I
    new-array v0, v1, [F

    .line 493
    .local v0, "result":[F
    iget-object v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 482
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v4, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 483
    iget v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 484
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 483
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
