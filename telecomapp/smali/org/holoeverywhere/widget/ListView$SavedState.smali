.class final Lorg/holoeverywhere/widget/ListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/holoeverywhere/widget/ListView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field checkIdState:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field checkState:Landroid/util/SparseBooleanArray;

.field checkedItemCount:I

.field inActionMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lorg/holoeverywhere/widget/ListView$SavedState$1;

    invoke-direct {v0}, Lorg/holoeverywhere/widget/ListView$SavedState$1;-><init>()V

    sput-object v0, Lorg/holoeverywhere/widget/ListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lorg/holoeverywhere/widget/ListView$SavedState;->inActionMode:Z

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lorg/holoeverywhere/widget/ListView$SavedState;->checkedItemCount:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v5

    iput-object v5, p0, Lorg/holoeverywhere/widget/ListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 141
    new-instance v5, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v5}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v5, p0, Lorg/holoeverywhere/widget/ListView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    .line 142
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 144
    .local v2, "key":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 145
    .local v4, "value":I
    iget-object v5, p0, Lorg/holoeverywhere/widget/ListView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v3, v6}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "key":J
    .end local v4    # "value":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 148
    .restart local v0    # "N":I
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 152
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 157
    iget-boolean v2, p0, Lorg/holoeverywhere/widget/ListView$SavedState;->inActionMode:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 158
    iget v2, p0, Lorg/holoeverywhere/widget/ListView$SavedState;->checkedItemCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 160
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    .line 161
    .local v0, "N":I
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 163
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 164
    iget-object v2, p0, Lorg/holoeverywhere/widget/ListView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    move v2, v3

    .line 157
    goto :goto_0

    :cond_1
    move v0, v3

    .line 160
    goto :goto_1

    .line 166
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method
