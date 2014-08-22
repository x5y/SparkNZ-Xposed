.class public final enum Lorg/holoeverywhere/app/DialogFragment$DialogType;
.super Ljava/lang/Enum;
.source "DialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/app/DialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/holoeverywhere/app/DialogFragment$DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/holoeverywhere/app/DialogFragment$DialogType;

.field public static final enum AlertDialog:Lorg/holoeverywhere/app/DialogFragment$DialogType;

.field public static final enum Dialog:Lorg/holoeverywhere/app/DialogFragment$DialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lorg/holoeverywhere/app/DialogFragment$DialogType;

    const-string v1, "AlertDialog"

    invoke-direct {v0, v1, v2}, Lorg/holoeverywhere/app/DialogFragment$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/holoeverywhere/app/DialogFragment$DialogType;->AlertDialog:Lorg/holoeverywhere/app/DialogFragment$DialogType;

    new-instance v0, Lorg/holoeverywhere/app/DialogFragment$DialogType;

    const-string v1, "Dialog"

    invoke-direct {v0, v1, v3}, Lorg/holoeverywhere/app/DialogFragment$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/holoeverywhere/app/DialogFragment$DialogType;->Dialog:Lorg/holoeverywhere/app/DialogFragment$DialogType;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/holoeverywhere/app/DialogFragment$DialogType;

    sget-object v1, Lorg/holoeverywhere/app/DialogFragment$DialogType;->AlertDialog:Lorg/holoeverywhere/app/DialogFragment$DialogType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/holoeverywhere/app/DialogFragment$DialogType;->Dialog:Lorg/holoeverywhere/app/DialogFragment$DialogType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/holoeverywhere/app/DialogFragment$DialogType;->$VALUES:[Lorg/holoeverywhere/app/DialogFragment$DialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/holoeverywhere/app/DialogFragment$DialogType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/holoeverywhere/app/DialogFragment$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/app/DialogFragment$DialogType;

    return-object v0
.end method

.method public static values()[Lorg/holoeverywhere/app/DialogFragment$DialogType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/holoeverywhere/app/DialogFragment$DialogType;->$VALUES:[Lorg/holoeverywhere/app/DialogFragment$DialogType;

    invoke-virtual {v0}, [Lorg/holoeverywhere/app/DialogFragment$DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/holoeverywhere/app/DialogFragment$DialogType;

    return-object v0
.end method
