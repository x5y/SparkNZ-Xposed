.class public abstract Lorg/holoeverywhere/app/AlertActivity;
.super Lorg/holoeverywhere/app/Activity;
.source "AlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Lorg/holoeverywhere/internal/AlertController$AlertDecorViewInstaller;


# instance fields
.field protected mAlert:Lorg/holoeverywhere/internal/AlertController;

.field protected mAlertParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/holoeverywhere/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, Lorg/holoeverywhere/app/AlertActivity;->finish()V

    .line 20
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lorg/holoeverywhere/app/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lorg/holoeverywhere/app/AlertActivity;->finish()V

    .line 27
    :cond_0
    return-void
.end method

.method public installDecorView(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p2}, Lorg/holoeverywhere/app/AlertActivity;->setContentView(I)V

    .line 32
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lorg/holoeverywhere/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v0, Lorg/holoeverywhere/internal/AlertController;

    invoke-virtual {p0}, Lorg/holoeverywhere/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1, p0}, Lorg/holoeverywhere/internal/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;Lorg/holoeverywhere/internal/AlertController$AlertDecorViewInstaller;)V

    iput-object v0, p0, Lorg/holoeverywhere/app/AlertActivity;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    .line 38
    new-instance v0, Lorg/holoeverywhere/internal/AlertController$AlertParams;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/internal/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/holoeverywhere/app/AlertActivity;->mAlertParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    .line 39
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertActivity;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/internal/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertActivity;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/internal/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setupAlert()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertActivity;->mAlertParams:Lorg/holoeverywhere/internal/AlertController$AlertParams;

    iget-object v1, p0, Lorg/holoeverywhere/app/AlertActivity;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/internal/AlertController$AlertParams;->apply(Lorg/holoeverywhere/internal/AlertController;)V

    .line 59
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertActivity;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    invoke-virtual {v0}, Lorg/holoeverywhere/internal/AlertController;->installContent()V

    .line 60
    return-void
.end method
