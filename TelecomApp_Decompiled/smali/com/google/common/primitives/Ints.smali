.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Ints$IntArrayAsList;,
        Lcom/google/common/primitives/Ints$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([IIII)I
    .locals 1
    .param p0, "x0"    # [I
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->indexOf([IIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([IIII)I
    .locals 1
    .param p0, "x0"    # [I
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->lastIndexOf([IIII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([I)Ljava/util/List;
    .locals 1
    .param p0, "backingArray"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    array-length v0, p0

    if-nez v0, :cond_0

    .line 452
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 454
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;-><init>([I)V

    goto :goto_0
.end method

.method public static checkedCast(J)I
    .locals 6
    .param p0, "value"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 73
    long-to-int v0, p0

    .line 74
    .local v0, "result":I
    int-to-long v4, v0

    cmp-long v1, v4, p0

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "Out of range: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v4, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 75
    return v0

    :cond_0
    move v1, v3

    .line 74
    goto :goto_0
.end method

.method public static compare(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 106
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs concat([[I)[I
    .locals 9
    .param p0, "arrays"    # [[I

    .prologue
    .line 253
    const/4 v4, 0x0

    .line 254
    .local v4, "length":I
    move-object v0, p0

    .local v0, "arr$":[[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 255
    .local v1, "array":[I
    array-length v7, v1

    add-int/2addr v4, v7

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    .end local v1    # "array":[I
    :cond_0
    new-array v6, v4, [I

    .line 258
    .local v6, "result":[I
    const/4 v5, 0x0

    .line 259
    .local v5, "pos":I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 260
    .restart local v1    # "array":[I
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    array-length v7, v1

    add-int/2addr v5, v7

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 263
    .end local v1    # "array":[I
    :cond_1
    return-object v6
.end method

.method public static contains([II)Z
    .locals 5
    .param p0, "array"    # [I
    .param p1, "target"    # I

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 120
    .local v3, "value":I
    if-ne v3, p1, :cond_0

    .line 121
    const/4 v4, 0x1

    .line 124
    .end local v3    # "value":I
    :goto_1
    return v4

    .line 119
    .restart local v3    # "value":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v3    # "value":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static copyOf([II)[I
    .locals 3
    .param p0, "original"    # [I
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 344
    new-array v0, p1, [I

    .line 345
    .local v0, "copy":[I
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    return-object v0
.end method

.method public static ensureCapacity([III)[I
    .locals 6
    .param p0, "array"    # [I
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 335
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 336
    if-ltz p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 337
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Ints;->copyOf([II)[I

    move-result-object p0

    .end local p0    # "array":[I
    :cond_0
    return-object p0

    .restart local p0    # "array":[I
    :cond_1
    move v0, v2

    .line 335
    goto :goto_0

    :cond_2
    move v0, v2

    .line 336
    goto :goto_1
.end method

.method public static fromByteArray([B)I
    .locals 8
    .param p0, "bytes"    # [B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 300
    array-length v0, p0

    if-lt v0, v7, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "array too small: %s < %s"

    new-array v4, v6, [Ljava/lang/Object;

    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 302
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    aget-byte v2, p0, v6

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 300
    goto :goto_0
.end method

.method public static fromBytes(BBBB)I
    .locals 2
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .param p2, "b3"    # B
    .param p3, "b4"    # B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    .line 314
    shl-int/lit8 v0, p0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static hashCode(I)I
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 61
    return p0
.end method

.method public static indexOf([II)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "target"    # I

    .prologue
    .line 137
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Ints;->indexOf([IIII)I

    move-result v0

    return v0
.end method

.method private static indexOf([IIII)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "target"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 143
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 144
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 148
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 143
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf([I[I)I
    .locals 4
    .param p0, "array"    # [I
    .param p1, "target"    # [I

    .prologue
    .line 163
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    array-length v2, p1

    if-nez v2, :cond_1

    .line 166
    const/4 v0, 0x0

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    .line 171
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 172
    add-int v2, v0, v1

    aget v2, p0, v2

    aget v3, p1, v1

    if-eq v2, v3, :cond_2

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 178
    .end local v1    # "j":I
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static varargs join(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [I

    .prologue
    .line 359
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    array-length v2, p1

    if-nez v2, :cond_0

    .line 361
    const-string v2, ""

    .line 370
    :goto_0
    return-object v2

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 366
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 368
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 370
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static lastIndexOf([II)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "target"    # I

    .prologue
    .line 191
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Ints;->lastIndexOf([IIII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([IIII)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "target"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 197
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 198
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 202
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 197
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 202
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 389
    sget-object v0, Lcom/google/common/primitives/Ints$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Ints$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([I)I
    .locals 4
    .param p0, "array"    # [I

    .prologue
    const/4 v3, 0x0

    .line 233
    array-length v2, p0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 234
    aget v1, p0, v3

    .line 235
    .local v1, "max":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 236
    aget v2, p0, v0

    if-le v2, v1, :cond_0

    .line 237
    aget v1, p0, v0

    .line 235
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "max":I
    :cond_1
    move v2, v3

    .line 233
    goto :goto_0

    .line 240
    .restart local v0    # "i":I
    .restart local v1    # "max":I
    :cond_2
    return v1
.end method

.method public static varargs min([I)I
    .locals 4
    .param p0, "array"    # [I

    .prologue
    const/4 v3, 0x0

    .line 214
    array-length v2, p0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 215
    aget v1, p0, v3

    .line 216
    .local v1, "min":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 217
    aget v2, p0, v0

    if-ge v2, v1, :cond_0

    .line 218
    aget v1, p0, v0

    .line 216
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "min":I
    :cond_1
    move v2, v3

    .line 214
    goto :goto_0

    .line 221
    .restart local v0    # "i":I
    .restart local v1    # "min":I
    :cond_2
    return v1
.end method

.method public static saturatedCast(J)I
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 87
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 88
    const v0, 0x7fffffff

    .line 93
    :goto_0
    return v0

    .line 90
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 91
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 93
    :cond_1
    long-to-int v0, p0

    goto :goto_0
.end method

.method public static toArray(Ljava/util/Collection;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    if-eqz v4, :cond_1

    .line 424
    check-cast p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->toIntArray()[I

    move-result-object v0

    .line 433
    .local v0, "array":[I
    .local v1, "boxedArray":[Ljava/lang/Object;
    .local v2, "i":I
    .local v3, "len":I
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    :cond_0
    return-object v0

    .line 427
    .end local v0    # "array":[I
    .end local v1    # "boxedArray":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 428
    .restart local v1    # "boxedArray":[Ljava/lang/Object;
    array-length v3, v1

    .line 429
    .restart local v3    # "len":I
    new-array v0, v3, [I

    .line 430
    .restart local v0    # "array":[I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 431
    aget-object v4, v1, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static toByteArray(I)[B
    .locals 3
    .param p0, "value"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    .line 279
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method
