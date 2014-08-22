.class public Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;
.super Lorg/holoeverywhere/addon/IAddonActivity;
.source "AddonSherlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/addon/AddonSherlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddonSherlockA"
.end annotation


# instance fields
.field private mIgnoreNativeCreate:Z

.field private mIgnoreNativePrepare:Z

.field private mIgnoreNativeSelected:Z

.field private mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonActivity;-><init>()V

    .line 28
    iput-boolean v0, p0, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->mIgnoreNativeCreate:Z

    .line 29
    iput-boolean v0, p0, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->mIgnoreNativePrepare:Z

    .line 30
    iput-boolean v0, p0, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->mIgnoreNativeSelected:Z

    return-void
.end method


# virtual methods
.method public closeOptionsMenu()Z
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchCloseOptionsMenu()Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 40
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getActionBar()Lcom/actionbarsherlock/app/ActionBar;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method protected getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->wrap(Landroid/app/Activity;I)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->mSherlock:Lcom/actionbarsherlock/ActionBarSherlock;

    return-object v0
.end method

.method public installDecorView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public invalidateOptionsMenu()Z
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchInvalidateOptionsMenu()V

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "oldConfig"    # Landroid/content/res/Configuration;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 73
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 77
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->mIgnoreNativeCreate:Z

    if-nez v2, :cond_0

    .line 79
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->mIgnoreNativeCreate:Z

    .line 80
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 81
    .local v0, "result":Z
    iput-boolean v1, p0, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->mIgnoreNativeCreate:Z

    .line 84
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchDestroy()V

    .line 90
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 94
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->mIgnoreNativeSelected:Z

    if-nez v2, :cond_0

    .line 96
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->mIgnoreNativeSelected:Z

    .line 97
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 98
    .local v0, "result":Z
    iput-boolean v1, p0, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->mIgnoreNativeSelected:Z

    .line 101
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPanelClosed(ILandroid/view/Menu;)V

    .line 112
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPause()V

    .line 117
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPostCreate(Landroid/os/Bundle;)V

    .line 122
    return-void
.end method

.method public onPostResume()V
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPostResume()V

    .line 127
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 131
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->mIgnoreNativePrepare:Z

    if-nez v2, :cond_0

    .line 133
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->mIgnoreNativePrepare:Z

    .line 134
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 135
    .local v0, "result":Z
    iput-boolean v1, p0, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->mIgnoreNativePrepare:Z

    .line 138
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchStop()V

    .line 144
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchTitleChanged(Ljava/lang/CharSequence;I)V

    .line 149
    return-void
.end method

.method public openOptionsMenu()Z
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchOpenOptionsMenu()Z

    move-result v0

    return v0
.end method

.method public requestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgress(I)V

    .line 163
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminate(Z)V

    .line 167
    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 171
    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 174
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarVisibility(Z)V

    .line 175
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 178
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setSecondaryProgress(I)V

    .line 179
    return-void
.end method

.method public setUiOptions(I)V
    .locals 1
    .param p1, "uiOptions"    # I

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->setUiOptions(I)V

    .line 183
    return-void
.end method

.method public setUiOptions(II)V
    .locals 1
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;->setUiOptions(II)V

    .line 187
    return-void
.end method

.method public startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Lcom/actionbarsherlock/view/ActionMode$Callback;

    .prologue
    .line 190
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/AddonSherlock$AddonSherlockA;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
