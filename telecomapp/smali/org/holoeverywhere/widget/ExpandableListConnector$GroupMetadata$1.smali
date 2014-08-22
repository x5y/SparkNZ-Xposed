.class final Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata$1;
.super Ljava/lang/Object;
.source "ExpandableListConnector.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;
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
        "Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata$1;->createFromParcel(Landroid/os/Parcel;)Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;->obtain(IIIJ)Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;

    move-result-object v0

    .line 29
    .local v0, "gm":Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata$1;->newArray(I)[Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 34
    new-array v0, p1, [Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;

    return-object v0
.end method
