.class public abstract Lorg/holoeverywhere/app/TabSwipeActivity;
.super Lorg/holoeverywhere/app/Activity;
.source "TabSwipeActivity.java"

# interfaces
.implements Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;
.implements Lorg/holoeverywhere/app/TabSwipeInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/holoeverywhere/app/Activity;",
        "Lorg/holoeverywhere/app/TabSwipeInterface",
        "<",
        "Lorg/holoeverywhere/app/TabSwipeController$TabInfo;",
        ">;",
        "Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;"
    }
.end annotation


# instance fields
.field private mTabber:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/holoeverywhere/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public addTab(ILjava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "title"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/Fragment;",
            ">;)",
            "Lorg/holoeverywhere/app/TabSwipeController$TabInfo;"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeActivity;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->addTab(ILjava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public addTab(ILjava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "title"    # I
    .param p3, "fragmentArguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lorg/holoeverywhere/app/TabSwipeController$TabInfo;"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeActivity;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->addTab(ILjava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public addTab(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/Fragment;",
            ">;)",
            "Lorg/holoeverywhere/app/TabSwipeController$TabInfo;"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeActivity;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public addTab(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p3, "fragmentArguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lorg/holoeverywhere/app/TabSwipeController$TabInfo;"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeActivity;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "tabInfo"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeActivity;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "tabInfo"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .param p2, "position"    # I

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeActivity;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(ILjava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Class;

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/app/TabSwipeActivity;->addTab(ILjava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(ILjava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lorg/holoeverywhere/app/TabSwipeActivity;->addTab(ILjava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Ljava/lang/Class;

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/app/TabSwipeActivity;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lorg/holoeverywhere/app/TabSwipeActivity;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;

    .prologue
    .line 16
    check-cast p1, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .end local p1    # "x0":Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/TabSwipeActivity;->addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;I)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .param p2, "x1"    # I

    .prologue
    .line 16
    check-cast p1, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .end local p1    # "x0":Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/app/TabSwipeActivity;->addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method protected addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeActivity;->mTabber:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    if-nez v0, :cond_0

    .line 22
    const-class v0, Lorg/holoeverywhere/addon/AddonTabber;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/TabSwipeActivity;->addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonActivity;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    iput-object v0, p0, Lorg/holoeverywhere/app/TabSwipeActivity;->mTabber:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    .line 24
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeActivity;->mTabber:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    return-object v0
.end method

.method public getOnTabSelectedListener()Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeActivity;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->getOnTabSelectedListener()Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;

    move-result-object v0

    return-object v0
.end method

.method public isSmoothScroll()Z
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeActivity;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->isSmoothScroll()Z

    move-result v0

    return v0
.end method

.method public isSwipeEnabled()Z
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeActivity;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->isSwipeEnabled()Z

    move-result v0

    return v0
.end method

.method protected onCreateConfig(Landroid/os/Bundle;)Landroid/support/v4/app/_HoloActivity$Holo;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lorg/holoeverywhere/app/Activity;->onCreateConfig(Landroid/os/Bundle;)Landroid/support/v4/app/_HoloActivity$Holo;

    move-result-object v0

    .line 77
    .local v0, "config":Landroid/support/v4/app/_HoloActivity$Holo;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/app/_HoloActivity$Holo;->requireTabber:Z

    .line 78
    return-object v0
.end method

.method public reloadTabs()V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeActivity;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->reloadTabs()V

    .line 84
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeActivity;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->removeAllTabs()V

    .line 89
    return-void
.end method

.method public removeTab(I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeActivity;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->removeTab(I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public removeTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "tabInfo"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeActivity;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->removeTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTab(I)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/TabSwipeActivity;->removeTab(I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTab(Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;

    .prologue
    .line 16
    check-cast p1, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .end local p1    # "x0":Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/TabSwipeActivity;->removeTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeActivity;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->setCurrentTab(I)V

    .line 104
    return-void
.end method

.method public setOnTabSelectedListener(Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;)V
    .locals 1
    .param p1, "onTabSelectedListener"    # Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeActivity;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->setOnTabSelectedListener(Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;)V

    .line 109
    return-void
.end method

.method public setSmoothScroll(Z)V
    .locals 1
    .param p1, "smoothScroll"    # Z

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeActivity;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->setSmoothScroll(Z)V

    .line 114
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 1
    .param p1, "swipeEnabled"    # Z

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeActivity;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->setSwipeEnabled(Z)V

    .line 119
    return-void
.end method
