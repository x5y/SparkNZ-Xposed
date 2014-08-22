.class public Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockApplication;
.super Lorg/holoeverywhere/addon/IAddonApplication;
.source "AddonSherlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/addon/AddonSherlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddonSherlockApplication"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 197
    const-class v0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    invoke-static {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->unregisterImplementation(Ljava/lang/Class;)Z

    .line 198
    const-class v0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;

    invoke-static {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->unregisterImplementation(Ljava/lang/Class;)Z

    .line 199
    const-class v0, Lorg/holoeverywhere/addon/AddonSherlock$HoloActionBarSherlockNative;

    invoke-static {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->registerImplementation(Ljava/lang/Class;)V

    .line 200
    const-class v0, Lorg/holoeverywhere/addon/AddonSherlock$HoloActionBarSherlockCompat;

    invoke-static {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->registerImplementation(Ljava/lang/Class;)V

    .line 201
    return-void
.end method
