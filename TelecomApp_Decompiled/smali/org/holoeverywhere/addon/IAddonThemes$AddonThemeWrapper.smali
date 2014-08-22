.class final Lorg/holoeverywhere/addon/IAddonThemes$AddonThemeWrapper;
.super Lorg/holoeverywhere/app/ContextThemeWrapperPlus;
.source "IAddonThemes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/addon/IAddonThemes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AddonThemeWrapper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "themeres"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lorg/holoeverywhere/app/ContextThemeWrapperPlus;-><init>(Landroid/content/Context;I)V

    .line 17
    return-void
.end method
