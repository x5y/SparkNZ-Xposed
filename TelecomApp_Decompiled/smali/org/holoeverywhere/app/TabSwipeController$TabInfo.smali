.class public Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
.super Ljava/lang/Object;
.source "TabSwipeController.java"

# interfaces
.implements Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/app/TabSwipeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo",
        "<",
        "Lorg/holoeverywhere/app/TabSwipeController$TabInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFragmentArguments:Landroid/os/Bundle;

.field private mFragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->mFragmentClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$102(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 22
    iput-object p1, p0, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->mFragmentClass:Ljava/lang/Class;

    return-object p1
.end method

.method static synthetic access$200(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->mFragmentArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$202(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 22
    iput-object p1, p0, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->mFragmentArguments:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$400(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$402(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 22
    iput-object p1, p0, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->mTitle:Ljava/lang/CharSequence;

    return-object p1
.end method


# virtual methods
.method public getFragmentArguments()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->mFragmentArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->mFragmentClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setFragmentArguments(Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 0
    .param p1, "fragmentArguments"    # Landroid/os/Bundle;

    .prologue
    .line 44
    iput-object p1, p0, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->mFragmentArguments:Landroid/os/Bundle;

    .line 45
    return-object p0
.end method

.method public bridge synthetic setFragmentArguments(Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->setFragmentArguments(Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public setFragmentClass(Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/Fragment;",
            ">;)",
            "Lorg/holoeverywhere/app/TabSwipeController$TabInfo;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    iput-object p1, p0, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->mFragmentClass:Ljava/lang/Class;

    .line 51
    return-object p0
.end method

.method public bridge synthetic setFragmentClass(Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->setFragmentClass(Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->mTitle:Ljava/lang/CharSequence;

    .line 57
    return-object p0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->setTitle(Ljava/lang/CharSequence;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method
