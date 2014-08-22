.class Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;
.super Ljava/lang/Object;
.source "ExpandableListConnector.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/ExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field static final REFRESH:I = -0x1


# instance fields
.field flPos:I

.field gId:J

.field gPos:I

.field lastChildFlPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata$1;

    invoke-direct {v0}, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata$1;-><init>()V

    sput-object v0, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static obtain(IIIJ)Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;
    .locals 1
    .param p0, "flPos"    # I
    .param p1, "lastChildFlPos"    # I
    .param p2, "gPos"    # I
    .param p3, "gId"    # J

    .prologue
    .line 41
    new-instance v0, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;

    invoke-direct {v0}, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;-><init>()V

    .line 42
    .local v0, "gm":Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;
    iput p0, v0, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 43
    iput p1, v0, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 44
    iput p2, v0, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 45
    iput-wide p3, v0, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;->gId:J

    .line 46
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;->compareTo(Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;)I
    .locals 2
    .param p1, "another"    # Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 63
    :cond_0
    iget v0, p0, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    iget v1, p1, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 73
    iget v0, p0, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v0, p0, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-wide v0, p0, Lorg/holoeverywhere/widget/ExpandableListConnector$GroupMetadata;->gId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    return-void
.end method
