.class public abstract Lorg/holoeverywhere/addon/IAddonFragment;
.super Lorg/holoeverywhere/addon/IAddonBase;
.source "IAddonFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/holoeverywhere/addon/IAddonBase",
        "<",
        "Lorg/holoeverywhere/app/Fragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public onPreCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    return-void
.end method
