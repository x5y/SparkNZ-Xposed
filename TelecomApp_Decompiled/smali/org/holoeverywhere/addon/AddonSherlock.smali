.class public Lorg/holoeverywhere/addon/AddonSherlock;
.super Lorg/holoeverywhere/addon/IAddon;
.source "AddonSherlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/addon/AddonSherlock$HoloActionBarSherlockNative;,
        Lorg/holoeverywhere/addon/AddonSherlock$HoloActionBarSherlockCompat;,
        Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockApplication;,
        Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;
    }
.end annotation

.annotation runtime Lorg/holoeverywhere/addon/IAddon$Addon;
    inhert = true
    weight = 0x32
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddon;-><init>()V

    .line 235
    const-class v0, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockApplication;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/addon/AddonSherlock;->registerApplication(Ljava/lang/Class;)V

    .line 236
    const-class v0, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/addon/AddonSherlock;->registerActivity(Ljava/lang/Class;)V

    .line 237
    return-void
.end method
