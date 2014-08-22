.class public abstract Lorg/holoeverywhere/addon/IAddonBase;
.super Ljava/lang/Object;
.source "IAddonBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mParent:Lorg/holoeverywhere/addon/IAddon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBase;, "Lorg/holoeverywhere/addon/IAddonBase<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final attach(Ljava/lang/Object;Lorg/holoeverywhere/addon/IAddon;)V
    .locals 1
    .param p2, "parent"    # Lorg/holoeverywhere/addon/IAddon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/holoeverywhere/addon/IAddon;",
            ")V"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBase;, "Lorg/holoeverywhere/addon/IAddonBase<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/holoeverywhere/addon/IAddonBase;->mObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/addon/IAddonBase;->mParent:Lorg/holoeverywhere/addon/IAddon;

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 12
    :cond_1
    iput-object p2, p0, Lorg/holoeverywhere/addon/IAddonBase;->mParent:Lorg/holoeverywhere/addon/IAddon;

    .line 13
    iput-object p1, p0, Lorg/holoeverywhere/addon/IAddonBase;->mObject:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/holoeverywhere/addon/IAddonBase;->onAttach(Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBase;, "Lorg/holoeverywhere/addon/IAddonBase<TT;>;"
    iget-object v0, p0, Lorg/holoeverywhere/addon/IAddonBase;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public final getParent()Lorg/holoeverywhere/addon/IAddon;
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBase;, "Lorg/holoeverywhere/addon/IAddonBase<TT;>;"
    iget-object v0, p0, Lorg/holoeverywhere/addon/IAddonBase;->mParent:Lorg/holoeverywhere/addon/IAddon;

    return-object v0
.end method

.method protected onAttach(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBase;, "Lorg/holoeverywhere/addon/IAddonBase<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    return-void
.end method
