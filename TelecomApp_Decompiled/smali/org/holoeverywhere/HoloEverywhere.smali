.class public Lorg/holoeverywhere/HoloEverywhere;
.super Ljava/lang/Object;
.source "HoloEverywhere.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;
    }
.end annotation


# static fields
.field public static ALWAYS_USE_PARENT_THEME:Z

.field public static DEBUG:Z

.field public static DISABLE_OVERSCROLL_EFFECT:Z

.field public static NAMED_PREFERENCES:Z

.field public static final PACKAGE:Ljava/lang/String;

.field public static PREFERENCE_IMPL:Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

.field public static WRAP_TO_NATIVE_CONTEXT_MENU:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    const-class v0, Lorg/holoeverywhere/HoloEverywhere;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/HoloEverywhere;->PACKAGE:Ljava/lang/String;

    .line 63
    sput-boolean v2, Lorg/holoeverywhere/HoloEverywhere;->DEBUG:Z

    .line 64
    sput-boolean v2, Lorg/holoeverywhere/HoloEverywhere;->ALWAYS_USE_PARENT_THEME:Z

    .line 65
    sput-boolean v1, Lorg/holoeverywhere/HoloEverywhere;->NAMED_PREFERENCES:Z

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/holoeverywhere/HoloEverywhere;->DISABLE_OVERSCROLL_EFFECT:Z

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lorg/holoeverywhere/HoloEverywhere;->WRAP_TO_NATIVE_CONTEXT_MENU:Z

    .line 68
    sget-object v0, Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;->XML:Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

    sput-object v0, Lorg/holoeverywhere/HoloEverywhere;->PREFERENCE_IMPL:Lorg/holoeverywhere/HoloEverywhere$PreferenceImpl;

    .line 69
    return-void

    :cond_0
    move v0, v2

    .line 66
    goto :goto_0

    :cond_1
    move v1, v2

    .line 67
    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method
