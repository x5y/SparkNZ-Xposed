.class final Lorg/holoeverywhere/LayoutInflater$FactoryWrapper;
.super Ljava/lang/Object;
.source "LayoutInflater.java"

# interfaces
.implements Lorg/holoeverywhere/LayoutInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/LayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FactoryWrapper"
.end annotation


# instance fields
.field private mFactory:Landroid/view/LayoutInflater$Factory;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory;)V
    .locals 0
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lorg/holoeverywhere/LayoutInflater$FactoryWrapper;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 126
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
    .line 130
    iget-object v0, p0, Lorg/holoeverywhere/LayoutInflater$FactoryWrapper;->mFactory:Landroid/view/LayoutInflater$Factory;

    invoke-interface {v0, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
