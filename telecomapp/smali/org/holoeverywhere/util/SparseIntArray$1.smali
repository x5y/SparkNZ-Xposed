.class final Lorg/holoeverywhere/util/SparseIntArray$1;
.super Ljava/lang/Object;
.source "SparseIntArray.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/util/SparseIntArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lorg/holoeverywhere/util/SparseIntArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/util/SparseIntArray$1;->createFromParcel(Landroid/os/Parcel;)Lorg/holoeverywhere/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/holoeverywhere/util/SparseIntArray;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12
    .local v1, "size":I
    new-instance v0, Lorg/holoeverywhere/util/SparseIntArray;

    invoke-direct {v0, v1}, Lorg/holoeverywhere/util/SparseIntArray;-><init>(I)V

    .line 13
    .local v0, "array":Lorg/holoeverywhere/util/SparseIntArray;
    # setter for: Lorg/holoeverywhere/util/SparseIntArray;->mSize:I
    invoke-static {v0, v1}, Lorg/holoeverywhere/util/SparseIntArray;->access$002(Lorg/holoeverywhere/util/SparseIntArray;I)I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    # setter for: Lorg/holoeverywhere/util/SparseIntArray;->mKeys:[I
    invoke-static {v0, v2}, Lorg/holoeverywhere/util/SparseIntArray;->access$102(Lorg/holoeverywhere/util/SparseIntArray;[I)[I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    # setter for: Lorg/holoeverywhere/util/SparseIntArray;->mValues:[I
    invoke-static {v0, v2}, Lorg/holoeverywhere/util/SparseIntArray;->access$202(Lorg/holoeverywhere/util/SparseIntArray;[I)[I

    .line 16
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/util/SparseIntArray$1;->newArray(I)[Lorg/holoeverywhere/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/holoeverywhere/util/SparseIntArray;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 21
    new-array v0, p1, [Lorg/holoeverywhere/util/SparseIntArray;

    return-object v0
.end method
