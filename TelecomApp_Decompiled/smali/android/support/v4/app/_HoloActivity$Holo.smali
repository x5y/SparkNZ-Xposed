.class public final Landroid/support/v4/app/_HoloActivity$Holo;
.super Ljava/lang/Object;
.source "_HoloActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/_HoloActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Holo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/app/_HoloActivity$Holo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ignoreApplicationInstanceCheck:Z

.field public ignoreThemeCheck:Z

.field public requireRoboguice:Z

.field public requireSherlock:Z

.field public requireSlider:Z

.field public requireTabber:Z

.field private windowFeatures:Lorg/holoeverywhere/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Landroid/support/v4/app/_HoloActivity$Holo$1;

    invoke-direct {v0}, Landroid/support/v4/app/_HoloActivity$Holo$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/_HoloActivity$Holo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-boolean v1, p0, Landroid/support/v4/app/_HoloActivity$Holo;->ignoreApplicationInstanceCheck:Z

    .line 102
    iput-boolean v1, p0, Landroid/support/v4/app/_HoloActivity$Holo;->ignoreThemeCheck:Z

    .line 103
    iput-boolean v1, p0, Landroid/support/v4/app/_HoloActivity$Holo;->requireRoboguice:Z

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/_HoloActivity$Holo;->requireSherlock:Z

    .line 105
    iput-boolean v1, p0, Landroid/support/v4/app/_HoloActivity$Holo;->requireSlider:Z

    .line 106
    iput-boolean v1, p0, Landroid/support/v4/app/_HoloActivity$Holo;->requireTabber:Z

    .line 111
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-boolean v2, p0, Landroid/support/v4/app/_HoloActivity$Holo;->ignoreApplicationInstanceCheck:Z

    .line 102
    iput-boolean v2, p0, Landroid/support/v4/app/_HoloActivity$Holo;->ignoreThemeCheck:Z

    .line 103
    iput-boolean v2, p0, Landroid/support/v4/app/_HoloActivity$Holo;->requireRoboguice:Z

    .line 104
    iput-boolean v1, p0, Landroid/support/v4/app/_HoloActivity$Holo;->requireSherlock:Z

    .line 105
    iput-boolean v2, p0, Landroid/support/v4/app/_HoloActivity$Holo;->requireSlider:Z

    .line 106
    iput-boolean v2, p0, Landroid/support/v4/app/_HoloActivity$Holo;->requireTabber:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/_HoloActivity$Holo;->ignoreThemeCheck:Z

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/v4/app/_HoloActivity$Holo;->ignoreApplicationInstanceCheck:Z

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/support/v4/app/_HoloActivity$Holo;->requireSherlock:Z

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/support/v4/app/_HoloActivity$Holo;->requireSlider:Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/support/v4/app/_HoloActivity$Holo;->requireRoboguice:Z

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    :goto_5
    iput-boolean v1, p0, Landroid/support/v4/app/_HoloActivity$Holo;->requireTabber:Z

    .line 120
    const-class v0, Lorg/holoeverywhere/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/util/SparseIntArray;

    iput-object v0, p0, Landroid/support/v4/app/_HoloActivity$Holo;->windowFeatures:Lorg/holoeverywhere/util/SparseIntArray;

    .line 121
    return-void

    :cond_0
    move v0, v2

    .line 114
    goto :goto_0

    :cond_1
    move v0, v2

    .line 115
    goto :goto_1

    :cond_2
    move v0, v2

    .line 116
    goto :goto_2

    :cond_3
    move v0, v2

    .line 117
    goto :goto_3

    :cond_4
    move v0, v2

    .line 118
    goto :goto_4

    :cond_5
    move v1, v2

    .line 119
    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/v4/app/_HoloActivity$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/support/v4/app/_HoloActivity$1;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/support/v4/app/_HoloActivity$Holo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/app/_HoloActivity$Holo;)Lorg/holoeverywhere/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/app/_HoloActivity$Holo;

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity$Holo;->windowFeatures:Lorg/holoeverywhere/util/SparseIntArray;

    return-object v0
.end method

.method public static defaultConfig()Landroid/support/v4/app/_HoloActivity$Holo;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Landroid/support/v4/app/_HoloActivity$Holo;

    invoke-direct {v0}, Landroid/support/v4/app/_HoloActivity$Holo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public requestWindowFeature(I)V
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity$Holo;->windowFeatures:Lorg/holoeverywhere/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lorg/holoeverywhere/util/SparseIntArray;

    invoke-direct {v0}, Lorg/holoeverywhere/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/_HoloActivity$Holo;->windowFeatures:Lorg/holoeverywhere/util/SparseIntArray;

    .line 132
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity$Holo;->windowFeatures:Lorg/holoeverywhere/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Lorg/holoeverywhere/util/SparseIntArray;->put(II)V

    .line 133
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    iget-boolean v0, p0, Landroid/support/v4/app/_HoloActivity$Holo;->ignoreThemeCheck:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-boolean v0, p0, Landroid/support/v4/app/_HoloActivity$Holo;->ignoreApplicationInstanceCheck:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-boolean v0, p0, Landroid/support/v4/app/_HoloActivity$Holo;->requireSherlock:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-boolean v0, p0, Landroid/support/v4/app/_HoloActivity$Holo;->requireSlider:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-boolean v0, p0, Landroid/support/v4/app/_HoloActivity$Holo;->requireRoboguice:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-boolean v0, p0, Landroid/support/v4/app/_HoloActivity$Holo;->requireTabber:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-object v0, p0, Landroid/support/v4/app/_HoloActivity$Holo;->windowFeatures:Lorg/holoeverywhere/util/SparseIntArray;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 144
    return-void

    :cond_0
    move v0, v2

    .line 137
    goto :goto_0

    :cond_1
    move v0, v2

    .line 138
    goto :goto_1

    :cond_2
    move v0, v2

    .line 139
    goto :goto_2

    :cond_3
    move v0, v2

    .line 140
    goto :goto_3

    :cond_4
    move v0, v2

    .line 141
    goto :goto_4

    :cond_5
    move v1, v2

    .line 142
    goto :goto_5
.end method
