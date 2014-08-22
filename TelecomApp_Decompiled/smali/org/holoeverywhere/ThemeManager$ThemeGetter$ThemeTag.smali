.class public final Lorg/holoeverywhere/ThemeManager$ThemeGetter$ThemeTag;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/ThemeManager$ThemeGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThemeTag"
.end annotation


# instance fields
.field public final dark:Z

.field public final dialog:Z

.field public final dialogWhenLarge:Z

.field public final flags:I

.field public final fullscreen:Z

.field public final light:Z

.field public final mixed:Z

.field public final noActionBar:Z

.field public final wallpaper:Z


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p1, p0, Lorg/holoeverywhere/ThemeManager$ThemeGetter$ThemeTag;->flags:I

    .line 182
    invoke-static {p1}, Lorg/holoeverywhere/ThemeManager;->isDark(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/holoeverywhere/ThemeManager$ThemeGetter$ThemeTag;->dark:Z

    .line 183
    invoke-static {p1}, Lorg/holoeverywhere/ThemeManager;->isLight(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/holoeverywhere/ThemeManager$ThemeGetter$ThemeTag;->light:Z

    .line 184
    invoke-static {p1}, Lorg/holoeverywhere/ThemeManager;->isMixed(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/holoeverywhere/ThemeManager$ThemeGetter$ThemeTag;->mixed:Z

    .line 185
    invoke-static {p1}, Lorg/holoeverywhere/ThemeManager;->isNoActionBar(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/holoeverywhere/ThemeManager$ThemeGetter$ThemeTag;->noActionBar:Z

    .line 186
    invoke-static {p1}, Lorg/holoeverywhere/ThemeManager;->isFullScreen(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/holoeverywhere/ThemeManager$ThemeGetter$ThemeTag;->fullscreen:Z

    .line 187
    invoke-static {p1}, Lorg/holoeverywhere/ThemeManager;->isWallpaper(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/holoeverywhere/ThemeManager$ThemeGetter$ThemeTag;->wallpaper:Z

    .line 188
    invoke-static {p1}, Lorg/holoeverywhere/ThemeManager;->isDialog(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/holoeverywhere/ThemeManager$ThemeGetter$ThemeTag;->dialog:Z

    .line 189
    invoke-static {p1}, Lorg/holoeverywhere/ThemeManager;->isDialogWhenLarge(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/holoeverywhere/ThemeManager$ThemeGetter$ThemeTag;->dialogWhenLarge:Z

    .line 190
    return-void
.end method

.method synthetic constructor <init>(ILorg/holoeverywhere/ThemeManager$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/holoeverywhere/ThemeManager$1;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lorg/holoeverywhere/ThemeManager$ThemeGetter$ThemeTag;-><init>(I)V

    return-void
.end method
