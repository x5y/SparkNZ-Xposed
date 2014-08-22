.class public Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;
.super Lorg/holoeverywhere/addon/IAddonActivity;
.source "AddonTabber.java"

# interfaces
.implements Lorg/holoeverywhere/app/TabSwipeInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/addon/AddonTabber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddonTabberA"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/holoeverywhere/addon/IAddonActivity;",
        "Lorg/holoeverywhere/app/TabSwipeInterface",
        "<",
        "Lorg/holoeverywhere/app/TabSwipeController$TabInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mController:Lorg/holoeverywhere/app/TabSwipeController;

.field private mTabberCallback:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonActivity;-><init>()V

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
    .line 33
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/app/TabSwipeController;->addTab(ILjava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

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
    .line 39
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1, p2, p3}, Lorg/holoeverywhere/app/TabSwipeController;->addTab(ILjava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

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
    .line 22
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/app/TabSwipeController;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

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
    .line 28
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1, p2, p3}, Lorg/holoeverywhere/app/TabSwipeController;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "tabInfo"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "tabInfo"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .param p2, "position"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/app/TabSwipeController;->addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(ILjava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Class;

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->addTab(ILjava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

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
    invoke-virtual {p0, p1, p2, p3}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->addTab(ILjava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Ljava/lang/Class;

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

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
    invoke-virtual {p0, p1, p2, p3}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

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
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

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
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method protected createController()Lorg/holoeverywhere/app/TabSwipeController;
    .locals 4

    .prologue
    .line 53
    new-instance v2, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA$1;

    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v1}, Lorg/holoeverywhere/app/Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v1}, Lorg/holoeverywhere/app/Activity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-direct {v2, p0, v0, v3, v1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA$1;-><init>(Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/actionbarsherlock/app/ActionBar;)V

    return-object v2
.end method

.method public getOnTabSelectedListener()Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/TabSwipeController;->getOnTabSelectedListener()Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;

    move-result-object v0

    return-object v0
.end method

.method public getTabberCallback()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mTabberCallback:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;

    return-object v0
.end method

.method public isSmoothScroll()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/TabSwipeController;->isSmoothScroll()Z

    move-result v0

    return v0
.end method

.method public isSwipeEnabled()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/TabSwipeController;->isSwipeEnabled()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic onAttach(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Lorg/holoeverywhere/app/Activity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->onAttach(Lorg/holoeverywhere/app/Activity;)V

    return-void
.end method

.method protected onAttach(Lorg/holoeverywhere/app/Activity;)V
    .locals 1
    .param p1, "object"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lorg/holoeverywhere/addon/IAddonActivity;->onAttach(Ljava/lang/Object;)V

    .line 84
    instance-of v0, p1, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;

    if-eqz v0, :cond_0

    .line 85
    check-cast p1, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;

    .end local p1    # "object":Lorg/holoeverywhere/app/Activity;
    iput-object p1, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mTabberCallback:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;

    .line 87
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 4

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/app/Activity;

    sget v2, Lorg/holoeverywhere/R$id;->tabSwipePager:I

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/widget/ViewPager;

    .line 92
    .local v0, "viewPager":Lorg/holoeverywhere/widget/ViewPager;
    if-nez v0, :cond_0

    .line 93
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add ViewPager with id @+id/tabSwipePager to your "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fragment"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    if-nez v1, :cond_1

    .line 97
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->createController()Lorg/holoeverywhere/app/TabSwipeController;

    move-result-object v1

    iput-object v1, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    .line 99
    :cond_1
    iget-object v1, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v1, v0}, Lorg/holoeverywhere/app/TabSwipeController;->bind(Lorg/holoeverywhere/widget/ViewPager;)V

    .line 100
    return-void
.end method

.method protected onHandleTabs()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mTabberCallback:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mTabberCallback:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;

    invoke-interface {v0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;->onHandleTabs()V

    .line 106
    :cond_0
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/Activity;->isDecorViewInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/app/Activity;

    sget v1, Lorg/holoeverywhere/R$layout;->tab_swipe:I

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/app/Activity;->setContentView(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public reloadTabs()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/TabSwipeController;->reloadTabs()V

    .line 118
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/TabSwipeController;->removeAllTabs()V

    .line 123
    return-void
.end method

.method public removeTab(I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->removeTab(I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public removeTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "tabInfo"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .prologue
    .line 132
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->removeTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTab(I)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->removeTab(I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

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
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->removeTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->setCurrentTab(I)V

    .line 138
    return-void
.end method

.method public setOnTabSelectedListener(Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;)V
    .locals 1
    .param p1, "onTabSelectedListener"    # Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->setOnTabSelectedListener(Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;)V

    .line 143
    return-void
.end method

.method public setSmoothScroll(Z)V
    .locals 1
    .param p1, "smoothScroll"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->setSmoothScroll(Z)V

    .line 148
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 1
    .param p1, "swipeEnabled"    # Z

    .prologue
    .line 152
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->setSwipeEnabled(Z)V

    .line 153
    return-void
.end method

.method public setTabberCallback(Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;)V
    .locals 0
    .param p1, "tabberCallback"    # Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberA;->mTabberCallback:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;

    .line 157
    return-void
.end method
