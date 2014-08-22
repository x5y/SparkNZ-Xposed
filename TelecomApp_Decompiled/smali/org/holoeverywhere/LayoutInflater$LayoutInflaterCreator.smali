.class public Lorg/holoeverywhere/LayoutInflater$LayoutInflaterCreator;
.super Ljava/lang/Object;
.source "LayoutInflater.java"

# interfaces
.implements Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/LayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutInflaterCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator",
        "<",
        "Lorg/holoeverywhere/LayoutInflater;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/holoeverywhere/SystemServiceManager$SystemServiceCreator$SystemService;
    value = "layout_inflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/LayoutInflater$LayoutInflaterCreator;->createService(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public createService(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-static {p1}, Lorg/holoeverywhere/LayoutInflater;->from(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    return-object v0
.end method
