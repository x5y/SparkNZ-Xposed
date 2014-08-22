.class Lorg/holoeverywhere/widget/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/holoeverywhere/widget/DatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final day:I

.field private final month:I

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lorg/holoeverywhere/widget/DatePicker$SavedState$1;

    invoke-direct {v0}, Lorg/holoeverywhere/widget/DatePicker$SavedState$1;-><init>()V

    sput-object v0, Lorg/holoeverywhere/widget/DatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/widget/DatePicker$SavedState;->year:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/widget/DatePicker$SavedState;->month:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/widget/DatePicker$SavedState;->day:I

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/holoeverywhere/widget/DatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/holoeverywhere/widget/DatePicker$1;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 111
    iput p2, p0, Lorg/holoeverywhere/widget/DatePicker$SavedState;->year:I

    .line 112
    iput p3, p0, Lorg/holoeverywhere/widget/DatePicker$SavedState;->month:I

    .line 113
    iput p4, p0, Lorg/holoeverywhere/widget/DatePicker$SavedState;->day:I

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILorg/holoeverywhere/widget/DatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lorg/holoeverywhere/widget/DatePicker$1;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/holoeverywhere/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method static synthetic access$1200(Lorg/holoeverywhere/widget/DatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/DatePicker$SavedState;

    .prologue
    .line 86
    iget v0, p0, Lorg/holoeverywhere/widget/DatePicker$SavedState;->year:I

    return v0
.end method

.method static synthetic access$1300(Lorg/holoeverywhere/widget/DatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/DatePicker$SavedState;

    .prologue
    .line 86
    iget v0, p0, Lorg/holoeverywhere/widget/DatePicker$SavedState;->month:I

    return v0
.end method

.method static synthetic access$1400(Lorg/holoeverywhere/widget/DatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/DatePicker$SavedState;

    .prologue
    .line 86
    iget v0, p0, Lorg/holoeverywhere/widget/DatePicker$SavedState;->day:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 119
    iget v0, p0, Lorg/holoeverywhere/widget/DatePicker$SavedState;->year:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Lorg/holoeverywhere/widget/DatePicker$SavedState;->month:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Lorg/holoeverywhere/widget/DatePicker$SavedState;->day:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    return-void
.end method
