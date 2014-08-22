.class public abstract Lorg/holoeverywhere/app/TabSwipeFragment;
.super Lorg/holoeverywhere/app/Fragment;
.source "TabSwipeFragment.java"

# interfaces
.implements Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;
.implements Lorg/holoeverywhere/app/TabSwipeInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/holoeverywhere/app/Fragment;",
        "Lorg/holoeverywhere/app/TabSwipeInterface",
        "<",
        "Lorg/holoeverywhere/app/TabSwipeController$TabInfo;",
        ">;",
        "Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;"
    }
.end annotation


# instance fields
.field private mTabber:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/holoeverywhere/app/Fragment;-><init>()V

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
    .line 44
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeFragment;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->addTab(ILjava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

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
    .line 50
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeFragment;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->addTab(ILjava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

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
    .line 33
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeFragment;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

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
    .line 39
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeFragment;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "tabInfo"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeFragment;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "tabInfo"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .param p2, "position"    # I

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeFragment;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(ILjava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Class;

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/app/TabSwipeFragment;->addTab(ILjava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(ILjava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lorg/holoeverywhere/app/TabSwipeFragment;->addTab(ILjava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Ljava/lang/Class;

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/app/TabSwipeFragment;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lorg/holoeverywhere/app/TabSwipeFragment;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;

    .prologue
    .line 20
    check-cast p1, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .end local p1    # "x0":Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/TabSwipeFragment;->addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;I)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .param p2, "x1"    # I

    .prologue
    .line 20
    check-cast p1, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .end local p1    # "x0":Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/app/TabSwipeFragment;->addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method protected addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeFragment;->mTabber:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    if-nez v0, :cond_0

    .line 26
    const-class v0, Lorg/holoeverywhere/addon/AddonTabber;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/TabSwipeFragment;->addon(Ljava/lang/Class;)Lorg/holoeverywhere/addon/IAddonFragment;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    iput-object v0, p0, Lorg/holoeverywhere/app/TabSwipeFragment;->mTabber:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    .line 28
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeFragment;->mTabber:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    return-object v0
.end method

.method public getOnTabSelectedListener()Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeFragment;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->getOnTabSelectedListener()Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;

    move-result-object v0

    return-object v0
.end method

.method public isSmoothScroll()Z
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeFragment;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->isSmoothScroll()Z

    move-result v0

    return v0
.end method

.method public isSwipeEnabled()Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeFragment;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->isSwipeEnabled()Z

    move-result v0

    return v0
.end method

.method public onAttach(Lorg/holoeverywhere/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lorg/holoeverywhere/app/Fragment;->onAttach(Lorg/holoeverywhere/app/Activity;)V

    .line 81
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeFragment;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    .line 82
    return-void
.end method

.method public onCreateView(Lorg/holoeverywhere/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Lorg/holoeverywhere/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    sget v0, Lorg/holoeverywhere/R$layout;->tab_swipe:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public reloadTabs()V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeFragment;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->reloadTabs()V

    .line 92
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeFragment;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    move-result-object v0

    invoke-virtual {v0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->removeAllTabs()V

    .line 97
    return-void
.end method

.method public removeTab(I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeFragment;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->removeTab(I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public removeTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "tabInfo"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeFragment;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->removeTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTab(I)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/TabSwipeFragment;->removeTab(I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTab(Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;

    .prologue
    .line 20
    check-cast p1, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .end local p1    # "x0":Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/TabSwipeFragment;->removeTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeFragment;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->setCurrentTab(I)V

    .line 112
    return-void
.end method

.method public setOnTabSelectedListener(Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;)V
    .locals 1
    .param p1, "onTabSelectedListener"    # Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeFragment;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->setOnTabSelectedListener(Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;)V

    .line 117
    return-void
.end method

.method public setSmoothScroll(Z)V
    .locals 1
    .param p1, "smoothScroll"    # Z

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeFragment;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->setSmoothScroll(Z)V

    .line 122
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 1
    .param p1, "swipeEnabled"    # Z

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeFragment;->addonTabber()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->setSwipeEnabled(Z)V

    .line 127
    return-void
.end method
