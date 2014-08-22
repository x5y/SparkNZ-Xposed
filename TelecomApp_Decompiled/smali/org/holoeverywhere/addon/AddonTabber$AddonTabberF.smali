.class public Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;
.super Lorg/holoeverywhere/addon/IAddonFragment;
.source "AddonTabber.java"

# interfaces
.implements Lorg/holoeverywhere/app/TabSwipeInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/addon/AddonTabber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddonTabberF"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/holoeverywhere/addon/IAddonFragment;",
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
    .line 164
    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonFragment;-><init>()V

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
    .line 181
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

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
    .line 187
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

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
    .line 170
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

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
    .line 176
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1, p2, p3}, Lorg/holoeverywhere/app/TabSwipeController;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "tabInfo"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .prologue
    .line 192
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "tabInfo"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .param p2, "position"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/app/TabSwipeController;->addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(ILjava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Class;

    .prologue
    .line 164
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->addTab(ILjava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(ILjava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->addTab(ILjava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Ljava/lang/Class;

    .prologue
    .line 164
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;

    .prologue
    .line 164
    check-cast p1, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .end local p1    # "x0":Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;I)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .param p2, "x1"    # I

    .prologue
    .line 164
    check-cast p1, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .end local p1    # "x0":Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method protected createController()Lorg/holoeverywhere/app/TabSwipeController;
    .locals 4

    .prologue
    .line 201
    new-instance v1, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF$1;

    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/app/Fragment;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/app/Fragment;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/app/Fragment;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/Fragment;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-direct {v1, p0, v2, v3, v0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF$1;-><init>(Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/actionbarsherlock/app/ActionBar;)V

    return-object v1
.end method

.method public getOnTabSelectedListener()Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/TabSwipeController;->getOnTabSelectedListener()Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;

    move-result-object v0

    return-object v0
.end method

.method public getTabberCallback()Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mTabberCallback:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;

    return-object v0
.end method

.method public isSmoothScroll()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/TabSwipeController;->isSmoothScroll()Z

    move-result v0

    return v0
.end method

.method public isSwipeEnabled()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/TabSwipeController;->isSwipeEnabled()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic onAttach(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 164
    check-cast p1, Lorg/holoeverywhere/app/Fragment;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->onAttach(Lorg/holoeverywhere/app/Fragment;)V

    return-void
.end method

.method protected onAttach(Lorg/holoeverywhere/app/Fragment;)V
    .locals 1
    .param p1, "object"    # Lorg/holoeverywhere/app/Fragment;

    .prologue
    .line 231
    invoke-super {p0, p1}, Lorg/holoeverywhere/addon/IAddonFragment;->onAttach(Ljava/lang/Object;)V

    .line 232
    instance-of v0, p1, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;

    if-eqz v0, :cond_0

    .line 233
    check-cast p1, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;

    .end local p1    # "object":Lorg/holoeverywhere/app/Fragment;
    iput-object p1, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mTabberCallback:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;

    .line 235
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/TabSwipeController;->onDestroyView()V

    .line 242
    :cond_0
    return-void
.end method

.method protected onHandleTabs()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mTabberCallback:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mTabberCallback:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;

    invoke-interface {v0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;->onHandleTabs()V

    .line 248
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 252
    sget v1, Lorg/holoeverywhere/R$id;->tabSwipePager:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/widget/ViewPager;

    .line 253
    .local v0, "viewPager":Lorg/holoeverywhere/widget/ViewPager;
    if-nez v0, :cond_0

    .line 254
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

    .line 257
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->createController()Lorg/holoeverywhere/app/TabSwipeController;

    move-result-object v1

    iput-object v1, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    .line 258
    iget-object v1, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v1, v0}, Lorg/holoeverywhere/app/TabSwipeController;->bind(Lorg/holoeverywhere/widget/ViewPager;)V

    .line 259
    return-void
.end method

.method public reloadTabs()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/TabSwipeController;->reloadTabs()V

    .line 264
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/TabSwipeController;->removeAllTabs()V

    .line 269
    return-void
.end method

.method public removeTab(I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->removeTab(I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public removeTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "tabInfo"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .prologue
    .line 278
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->removeTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTab(I)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->removeTab(I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTab(Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;

    .prologue
    .line 164
    check-cast p1, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .end local p1    # "x0":Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->removeTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->setCurrentTab(I)V

    .line 284
    return-void
.end method

.method public setOnTabSelectedListener(Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;)V
    .locals 1
    .param p1, "onTabSelectedListener"    # Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;

    .prologue
    .line 288
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->setOnTabSelectedListener(Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;)V

    .line 289
    return-void
.end method

.method public setSmoothScroll(Z)V
    .locals 1
    .param p1, "smoothScroll"    # Z

    .prologue
    .line 293
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->setSmoothScroll(Z)V

    .line 294
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 1
    .param p1, "swipeEnabled"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mController:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->setSwipeEnabled(Z)V

    .line 299
    return-void
.end method

.method public setTabberCallback(Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;)V
    .locals 0
    .param p1, "tabberCallback"    # Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;

    .prologue
    .line 302
    iput-object p1, p0, Lorg/holoeverywhere/addon/AddonTabber$AddonTabberF;->mTabberCallback:Lorg/holoeverywhere/addon/AddonTabber$AddonTabberCallback;

    .line 303
    return-void
.end method
