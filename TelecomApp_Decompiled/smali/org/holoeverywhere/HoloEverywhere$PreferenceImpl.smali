.class public final enum Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;
.super Ljava/lang/Enum;
.source "HoloEverywhere.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/HoloEverywhere;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreferenceImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

.field public static final enum JSON:Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

.field public static final enum XML:Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

    const-string v1, "JSON"

    invoke-direct {v0, v1, v2}, Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;->JSON:Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

    new-instance v0, Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

    const-string v1, "XML"

    invoke-direct {v0, v1, v3}, Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;->XML:Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

    sget-object v1, Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;->JSON:Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

    aput-object v1, v0, v2

    sget-object v1, Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;->XML:Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

    aput-object v1, v0, v3

    sput-object v0, Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;->$VALUES:[Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

    return-object v0
.end method

.method public static values()[Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;->$VALUES:[Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

    invoke-virtual {v0}, [Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

    return-object v0
.end method
