.class public abstract Lorg/holoeverywhere/addon/IAddonApplication;
.super Lorg/holoeverywhere/addon/IAddonBase;
.source "IAddonApplication.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/holoeverywhere/addon/IAddonBase",
        "<",
        "Lorg/holoeverywhere/app/Application;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 9
    return-void
.end method

.method public onPreCreate()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method
