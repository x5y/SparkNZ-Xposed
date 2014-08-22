.class public Lorg/holoeverywhere/app/AlertDialog;
.super Lorg/holoeverywhere/app/Dialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Lorg/holoeverywhere/internal/AlertController$AlertDecorViewInstaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/app/AlertDialog$Builder;
    }
.end annotation


# static fields
.field public static final DISMISS_ON_ALL:I = 0x7

.field public static final DISMISS_ON_NEGATIVE:I = 0x1

.field public static final DISMISS_ON_NEUTRAL:I = 0x2

.field public static final DISMISS_ON_POSITIVE:I = 0x4

.field public static final THEME_HOLO_DARK:I = 0x1

.field public static final THEME_HOLO_LIGHT:I = 0x2


# instance fields
.field private final mAlert:Lorg/holoeverywhere/internal/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 375
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/holoeverywhere/app/AlertDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;I)V

    .line 376
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 392
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/holoeverywhere/app/AlertDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;I)V

    .line 393
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/holoeverywhere/app/AlertDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;I)V

    .line 381
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p4, "theme"    # I

    .prologue
    .line 385
    invoke-static {p1, p4}, Lorg/holoeverywhere/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 386
    invoke-virtual {p0, p2}, Lorg/holoeverywhere/app/AlertDialog;->setCancelable(Z)V

    .line 387
    invoke-virtual {p0, p3}, Lorg/holoeverywhere/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 388
    new-instance v0, Lorg/holoeverywhere/internal/AlertController;

    invoke-virtual {p0}, Lorg/holoeverywhere/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/holoeverywhere/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2, p0}, Lorg/holoeverywhere/internal/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;Lorg/holoeverywhere/internal/AlertController$AlertDecorViewInstaller;)V

    iput-object v0, p0, Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    .line 389
    return-void
.end method

.method static synthetic access$000(Lorg/holoeverywhere/app/AlertDialog;)Lorg/holoeverywhere/internal/AlertController;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/AlertDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    return-object v0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    const/4 v3, 0x1

    .line 359
    if-ne p1, v3, :cond_1

    .line 360
    sget p1, Lorg/holoeverywhere/R$style;->Holo_Theme_Dialog_Alert:I

    .line 368
    .end local p1    # "resid":I
    :cond_0
    :goto_0
    return p1

    .line 361
    .restart local p1    # "resid":I
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 362
    sget p1, Lorg/holoeverywhere/R$style;->Holo_Theme_Dialog_Alert_Light:I

    goto :goto_0

    .line 363
    :cond_2
    const/high16 v1, 0x1000000

    if-ge p1, v1, :cond_0

    .line 366
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 367
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lorg/holoeverywhere/R$attr;->alertDialogTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 368
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Lorg/holoeverywhere/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 396
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/internal/AlertController;->getButton(I)Lorg/holoeverywhere/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Lorg/holoeverywhere/widget/ListView;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    invoke-virtual {v0}, Lorg/holoeverywhere/internal/AlertController;->getListView()Lorg/holoeverywhere/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public installDecorView(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I

    .prologue
    .line 405
    invoke-virtual {p0, p2}, Lorg/holoeverywhere/app/AlertDialog;->setContentView(I)V

    .line 406
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 410
    invoke-super {p0, p1}, Lorg/holoeverywhere/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 411
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    invoke-virtual {v0}, Lorg/holoeverywhere/internal/AlertController;->installContent()V

    .line 412
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 416
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/internal/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const/4 v0, 0x1

    .line 419
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 424
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/internal/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    const/4 v0, 0x1

    .line 427
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 446
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/holoeverywhere/internal/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 447
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 441
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lorg/holoeverywhere/internal/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 442
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 437
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lorg/holoeverywhere/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 438
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 432
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lorg/holoeverywhere/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 433
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 456
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lorg/holoeverywhere/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 457
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 451
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lorg/holoeverywhere/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 452
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 466
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lorg/holoeverywhere/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 467
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 461
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lorg/holoeverywhere/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 462
    return-void
.end method

.method public setButtonBehavior(I)V
    .locals 1
    .param p1, "buttonBehavior"    # I

    .prologue
    .line 470
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/internal/AlertController;->setButtonBehavior(I)V

    .line 471
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 474
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/internal/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 475
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 482
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/internal/AlertController;->setIcon(I)V

    .line 483
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 478
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/internal/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 479
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 486
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 487
    .local v0, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lorg/holoeverywhere/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 488
    iget-object v1, p0, Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/internal/AlertController;->setIcon(I)V

    .line 489
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 492
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/internal/AlertController;->setInverseBackgroundForced(Z)V

    .line 493
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 496
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/internal/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 497
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 501
    invoke-super {p0, p1}, Lorg/holoeverywhere/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/internal/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 503
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 506
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/internal/AlertController;->setView(Landroid/view/View;)V

    .line 507
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 511
    iget-object v0, p0, Lorg/holoeverywhere/app/AlertDialog;->mAlert:Lorg/holoeverywhere/internal/AlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/holoeverywhere/internal/AlertController;->setView(Landroid/view/View;IIII)V

    .line 513
    return-void
.end method
