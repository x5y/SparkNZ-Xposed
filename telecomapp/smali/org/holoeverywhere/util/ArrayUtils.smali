.class public Lorg/holoeverywhere/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final CACHE_SIZE:I = 0x49

.field private static EMPTY:[Ljava/lang/Object;

.field private static sCache:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/holoeverywhere/util/ArrayUtils;->EMPTY:[Ljava/lang/Object;

    .line 9
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/holoeverywhere/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method

.method public static appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    array-length v0, p1

    .line 17
    .local v0, "end":I
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 18
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    :goto_0
    aput-object p2, v1, v0

    .line 24
    return-object v1

    .line 20
    .end local v0    # "end":I
    .end local v1    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_0
    const/4 v0, 0x0

    .line 21
    .restart local v0    # "end":I
    const/4 v2, 0x1

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .restart local v1    # "result":[Ljava/lang/Object;, "[TT;"
    goto :goto_0
.end method

.method public static appendInt([II)[I
    .locals 5
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    .prologue
    const/4 v4, 0x0

    .line 28
    if-nez p0, :cond_1

    .line 29
    const/4 v3, 0x1

    new-array p0, v3, [I

    .end local p0    # "cur":[I
    aput p1, p0, v4

    .line 42
    :cond_0
    :goto_0
    return-object p0

    .line 33
    .restart local p0    # "cur":[I
    :cond_1
    array-length v0, p0

    .line 34
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 35
    aget v3, p0, v1

    if-eq v3, p1, :cond_0

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 39
    :cond_2
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [I

    .line 40
    .local v2, "ret":[I
    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    aput p1, v2, v0

    move-object p0, v2

    .line 42
    goto :goto_0
.end method

.method public static contains([II)Z
    .locals 5
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 47
    .local v1, "element":I
    if-ne v1, p1, :cond_0

    .line 48
    const/4 v4, 0x1

    .line 51
    .end local v1    # "element":I
    :goto_1
    return v4

    .line 46
    .restart local v1    # "element":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "element":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x1

    .line 55
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 56
    .local v1, "element":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1

    .line 57
    if-nez p1, :cond_2

    .line 66
    .end local v1    # "element":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_1
    return v4

    .line 61
    .restart local v1    # "element":Ljava/lang/Object;, "TT;"
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 55
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "element":Ljava/lang/Object;, "TT;"
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_0

    .line 72
    sget-object v2, Lorg/holoeverywhere/util/ArrayUtils;->EMPTY:[Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 81
    :goto_0
    return-object v2

    .line 74
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0x49

    .line 76
    .local v0, "bucket":I
    sget-object v2, Lorg/holoeverywhere/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 77
    .local v1, "cache":Ljava/lang/Object;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2

    .line 78
    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 79
    sget-object v2, Lorg/holoeverywhere/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 81
    :cond_2
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "cache":Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    move-object v2, v1

    goto :goto_0
.end method

.method public static equals([B[BI)Z
    .locals 5
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    if-ne p0, p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v1

    .line 88
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    if-lt v3, p2, :cond_2

    array-length v3, p1

    if-ge v3, p2, :cond_3

    :cond_2
    move v1, v2

    .line 90
    goto :goto_0

    .line 92
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_0

    .line 93
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 94
    goto :goto_0

    .line 92
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static idealBooleanArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 101
    invoke-static {p0}, Lorg/holoeverywhere/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    return v0
.end method

.method public static idealByteArraySize(I)I
    .locals 3
    .param p0, "need"    # I

    .prologue
    const/4 v2, 0x1

    .line 105
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 106
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 107
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    .line 111
    .end local p0    # "need":I
    :cond_0
    return p0

    .line 105
    .restart local p0    # "need":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static idealCharArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 115
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lorg/holoeverywhere/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static idealFloatArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 119
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lorg/holoeverywhere/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealIntArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 123
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lorg/holoeverywhere/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealLongArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 127
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Lorg/holoeverywhere/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static idealObjectArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 131
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lorg/holoeverywhere/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealShortArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 135
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lorg/holoeverywhere/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    .line 140
    if-eqz p1, :cond_2

    .line 141
    array-length v1, p1

    .line 142
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 143
    aget-object v3, p1, v0

    if-ne v3, p2, :cond_1

    .line 144
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 145
    const/4 v2, 0x0

    .line 154
    .end local v0    # "i":I
    .end local v1    # "length":I
    :goto_1
    return-object v2

    .line 147
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_0
    add-int/lit8 v3, v1, -0x1

    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 148
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    add-int/lit8 v3, v0, 0x1

    sub-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 142
    .end local v2    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_2
    move-object v2, p1

    .line 154
    goto :goto_1
.end method

.method public static removeInt([II)[I
    .locals 5
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    .prologue
    const/4 v4, 0x0

    .line 158
    if-nez p0, :cond_1

    .line 159
    const/4 v2, 0x0

    .line 174
    :cond_0
    :goto_0
    return-object v2

    .line 161
    :cond_1
    array-length v0, p0

    .line 162
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 163
    aget v3, p0, v1

    if-ne v3, p1, :cond_3

    .line 164
    add-int/lit8 v3, v0, -0x1

    new-array v2, v3, [I

    .line 165
    .local v2, "ret":[I
    if-lez v1, :cond_2

    .line 166
    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    :cond_2
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_0

    .line 169
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 162
    .end local v2    # "ret":[I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v2, p0

    .line 174
    goto :goto_0
.end method

.method public static total([J)J
    .locals 7
    .param p0, "array"    # [J

    .prologue
    .line 178
    const-wide/16 v3, 0x0

    .line 179
    .local v3, "total":J
    move-object v0, p0

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v5, v0, v1

    .line 180
    .local v5, "value":J
    add-long/2addr v3, v5

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v5    # "value":J
    :cond_0
    return-wide v3
.end method
