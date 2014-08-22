.class public abstract Lorg/holoeverywhere/addon/IAddonActivity;
.super Lorg/holoeverywhere/addon/IAddonBase;
.source "IAddonActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/holoeverywhere/addon/IAddonBase",
        "<",
        "Lorg/holoeverywhere/app/Activity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonBase;-><init>()V

    return-void
.end method


# virtual methods
.method public closeOptionsMenu()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public handler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lorg/holoeverywhere/addon/IAddonActivity;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/app/Activity;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/Activity;->getUserHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public installDecorView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateOptionsMenu()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 40
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "oldConfig"    # Landroid/content/res/Configuration;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 44
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onHomePressed()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 80
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    return-void
.end method

.method public onPostResume()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onPreCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 124
    return-void
.end method

.method public openOptionsMenu()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public requestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method
