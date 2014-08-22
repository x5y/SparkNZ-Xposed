.class final Lorg/holoeverywhere/LayoutInflater$Factory2Wrapper;
.super Ljava/lang/Object;
.source "LayoutInflater.java"

# interfaces
.implements Lorg/holoeverywhere/LayoutInflater$Factory;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/LayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Factory2Wrapper"
.end annotation


# instance fields
.field private mFactory:Landroid/view/LayoutInflater$Factory2;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory2;)V
    .locals 0
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lorg/holoeverywhere/LayoutInflater$Factory2Wrapper;->mFactory:Landroid/view/LayoutInflater$Factory2;

    .line 113
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    iget-object v0, p0, Lorg/holoeverywhere/LayoutInflater$Factory2Wrapper;->mFactory:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
