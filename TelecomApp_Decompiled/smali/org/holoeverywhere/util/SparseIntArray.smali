.class public Lorg/holoeverywhere/util/SparseIntArray;
.super Ljava/lang/Object;
.source "SparseIntArray.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/holoeverywhere/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mKeys:[I

.field private mSize:I

.field private mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lorg/holoeverywhere/util/SparseIntArray$1;

    invoke-direct {v0}, Lorg/holoeverywhere/util/SparseIntArray$1;-><init>()V

    sput-object v0, Lorg/holoeverywhere/util/SparseIntArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/holoeverywhere/util/SparseIntArray;-><init>(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lorg/holoeverywhere/util/ArrayUtils;->idealIntArraySize(I)I

    move-result p1

    .line 56
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    .line 57
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/holoeverywhere/util/SparseIntArray;)V
    .locals 2
    .param p1, "arrayForCopy"    # Lorg/holoeverywhere/util/SparseIntArray;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-nez p1, :cond_0

    .line 63
    const/16 v1, 0xa

    invoke-static {v1}, Lorg/holoeverywhere/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 64
    .local v0, "initialCapacity":I
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    .line 65
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    .line 71
    .end local v0    # "initialCapacity":I
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v1, p1, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    .line 69
    iget-object v1, p1, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    goto :goto_0
.end method

.method static synthetic access$002(Lorg/holoeverywhere/util/SparseIntArray;I)I
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/util/SparseIntArray;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    return p1
.end method

.method static synthetic access$102(Lorg/holoeverywhere/util/SparseIntArray;[I)[I
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/util/SparseIntArray;
    .param p1, "x1"    # [I

    .prologue
    .line 7
    iput-object p1, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    return-object p1
.end method

.method static synthetic access$202(Lorg/holoeverywhere/util/SparseIntArray;[I)[I
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/util/SparseIntArray;
    .param p1, "x1"    # [I

    .prologue
    .line 7
    iput-object p1, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    return-object p1
.end method

.method private static binarySearch([IIII)I
    .locals 5
    .param p0, "a"    # [I
    .param p1, "start"    # I
    .param p2, "len"    # I
    .param p3, "key"    # I

    .prologue
    .line 26
    add-int v1, p1, p2

    .local v1, "high":I
    add-int/lit8 v2, p1, -0x1

    .line 27
    .local v2, "low":I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 28
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 29
    .local v0, "guess":I
    aget v3, p0, v0

    if-ge v3, p3, :cond_0

    .line 30
    move v2, v0

    goto :goto_0

    .line 32
    :cond_0
    move v1, v0

    goto :goto_0

    .line 35
    .end local v0    # "guess":I
    :cond_1
    add-int v3, p1, p2

    if-ne v1, v3, :cond_3

    .line 36
    add-int v3, p1, p2

    xor-int/lit8 v1, v3, -0x1

    .line 40
    .end local v1    # "high":I
    :cond_2
    :goto_1
    return v1

    .line 37
    .restart local v1    # "high":I
    :cond_3
    aget v3, p0, v1

    if-eq v3, p3, :cond_2

    .line 40
    xor-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public append(II)V
    .locals 7
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v6, 0x0

    .line 74
    iget v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    iget v5, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-gt p1, v4, :cond_0

    .line 75
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/util/SparseIntArray;->put(II)V

    .line 91
    :goto_0
    return-void

    .line 78
    :cond_0
    iget v3, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    .line 79
    .local v3, "pos":I
    iget-object v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 80
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lorg/holoeverywhere/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 81
    .local v0, "n":I
    new-array v1, v0, [I

    .line 82
    .local v1, "nkeys":[I
    new-array v2, v0, [I

    .line 83
    .local v2, "nvalues":[I
    iget-object v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    iget-object v5, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget-object v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    iget-object v5, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iput-object v1, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    .line 86
    iput-object v2, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    .line 88
    .end local v0    # "n":I
    .end local v1    # "nkeys":[I
    .end local v2    # "nvalues":[I
    :cond_1
    iget-object v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    aput p1, v4, v3

    .line 89
    iget-object v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    aput p2, v4, v3

    .line 90
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    .line 95
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0}, Lorg/holoeverywhere/util/SparseIntArray;->clone()Lorg/holoeverywhere/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/holoeverywhere/util/SparseIntArray;
    .locals 3

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 101
    .local v1, "clone":Lorg/holoeverywhere/util/SparseIntArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/holoeverywhere/util/SparseIntArray;

    move-object v1, v0

    .line 102
    iget-object v2, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    .line 103
    iget-object v2, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    .line 104
    iget v2, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    iput v2, v1, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public delete(I)V
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 111
    iget-object v1, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    invoke-static {v1, v2, v3, p1}, Lorg/holoeverywhere/util/SparseIntArray;->binarySearch([IIII)I

    move-result v0

    .line 112
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 113
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/util/SparseIntArray;->removeAt(I)V

    .line 115
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public get(I)I
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/holoeverywhere/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public get(II)I
    .locals 4
    .param p1, "key"    # I
    .param p2, "valueIfKeyNotFound"    # I

    .prologue
    .line 127
    iget-object v1, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    invoke-static {v1, v2, v3, p1}, Lorg/holoeverywhere/util/SparseIntArray;->binarySearch([IIII)I

    move-result v0

    .line 128
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 131
    .end local p2    # "valueIfKeyNotFound":I
    :goto_0
    return p2

    .restart local p2    # "valueIfKeyNotFound":I
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    aget p2, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Lorg/holoeverywhere/util/SparseIntArray;->binarySearch([IIII)I

    move-result v0

    return v0
.end method

.method public indexOfValue(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 141
    iget-object v1, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 145
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 140
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(II)V
    .locals 8
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v6, 0x0

    .line 153
    iget-object v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    iget v5, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    invoke-static {v4, v6, v5, p1}, Lorg/holoeverywhere/util/SparseIntArray;->binarySearch([IIII)I

    move-result v0

    .line 154
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 155
    iget-object v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    aput p2, v4, v0

    .line 175
    :goto_0
    return-void

    .line 157
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 158
    iget v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    iget-object v5, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 159
    iget v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lorg/holoeverywhere/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    .line 160
    .local v1, "n":I
    new-array v2, v1, [I

    .line 161
    .local v2, "nkeys":[I
    new-array v3, v1, [I

    .line 162
    .local v3, "nvalues":[I
    iget-object v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    iget-object v5, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget-object v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    iget-object v5, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iput-object v2, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    .line 165
    iput-object v3, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    .line 167
    .end local v1    # "n":I
    .end local v2    # "nkeys":[I
    .end local v3    # "nvalues":[I
    :cond_1
    iget v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 168
    iget-object v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    iget-object v5, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget-object v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    iget-object v5, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    :cond_2
    iget-object v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    aput p1, v4, v0

    .line 172
    iget-object v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    aput p2, v4, v0

    .line 173
    iget v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    goto :goto_0
.end method

.method public removeAt(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    iget v3, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iget-object v0, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    iget v3, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget v0, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    .line 181
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    return v0
.end method

.method public valueAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    aget v0, v0, p1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 193
    iget v0, p0, Lorg/holoeverywhere/util/SparseIntArray;->mSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v0, p0, Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 195
    iget-object v0, p0, Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 196
    return-void
.end method
