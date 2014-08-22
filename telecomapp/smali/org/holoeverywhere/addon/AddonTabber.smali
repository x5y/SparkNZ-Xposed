.class public Lorg/holoeverywhere/addon/AddonTabber;
.super Lorg/holoeverywhere/addon/IAddon;
.source "AddonTabber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;,
        Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;,
        Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddon;-><init>()V

    .line 307
    const-class v0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/addon/AddonTabber;->registerActivity(Ljava/lang/Class;)V

    .line 308
    const-class v0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/addon/AddonTabber;->registerFragment(Ljava/lang/Class;)V

    .line 309
    return-void
.end method
