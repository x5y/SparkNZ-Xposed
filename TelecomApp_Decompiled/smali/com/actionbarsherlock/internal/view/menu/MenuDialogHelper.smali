.class public Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;


# instance fields
.field private mDialog:Lorg/holoeverywhere/app/AlertDialog;

.field private mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field mPresenter:Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;

.field private mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 24
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mDialog:Lorg/holoeverywhere/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mDialog:Lorg/holoeverywhere/app/AlertDialog;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/AlertDialog;->dismiss()V

    .line 30
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 34
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->performItemAction(Lcom/actionbarsherlock/view/MenuItem;I)Z

    .line 36
    return-void
.end method

.method public onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 40
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V

    .line 46
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V

    .line 51
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 55
    const/16 v4, 0x52

    if-eq p2, v4, :cond_0

    const/4 v4, 0x4

    if-ne p2, v4, :cond_2

    .line 57
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 59
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mDialog:Lorg/holoeverywhere/app/AlertDialog;

    invoke-virtual {v4}, Lorg/holoeverywhere/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 60
    .local v2, "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 61
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 65
    .local v1, "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 66
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 88
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :goto_0
    return v3

    .line 71
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 73
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mDialog:Lorg/holoeverywhere/app/AlertDialog;

    invoke-virtual {v4}, Lorg/holoeverywhere/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 74
    .restart local v2    # "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 75
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 76
    .restart local v0    # "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 79
    .restart local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 80
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->close(Z)V

    .line 81
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 88
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :cond_2
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, p3, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v3

    goto :goto_0
.end method

.method public onOpenSubMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)Z

    move-result v0

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPresenterCallback(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    .line 102
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 105
    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 106
    .local v3, "menu":Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    new-instance v0, Lorg/holoeverywhere/app/AlertDialog$Builder;

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/holoeverywhere/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, "builder":Lorg/holoeverywhere/app/AlertDialog$Builder;
    new-instance v4, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lorg/holoeverywhere/R$layout;->list_menu_item_layout:I

    invoke-direct {v4, v5, v6}, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;

    .line 110
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V

    .line 111
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;)V

    .line 112
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Lorg/holoeverywhere/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v1

    .line 114
    .local v1, "headerView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {v0, v1}, Lorg/holoeverywhere/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lorg/holoeverywhere/app/AlertDialog$Builder;

    .line 120
    :goto_0
    invoke-virtual {v0, p0}, Lorg/holoeverywhere/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {v0, p0}, Lorg/holoeverywhere/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/holoeverywhere/app/AlertDialog$Builder;

    .line 122
    invoke-virtual {v0}, Lorg/holoeverywhere/app/AlertDialog$Builder;->create()Lorg/holoeverywhere/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mDialog:Lorg/holoeverywhere/app/AlertDialog;

    .line 123
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mDialog:Lorg/holoeverywhere/app/AlertDialog;

    invoke-virtual {v4}, Lorg/holoeverywhere/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 124
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x3eb

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 125
    if-eqz p1, :cond_0

    .line 126
    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 128
    :cond_0
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 129
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->mDialog:Lorg/holoeverywhere/app/AlertDialog;

    invoke-virtual {v4}, Lorg/holoeverywhere/app/AlertDialog;->show()V

    .line 130
    return-void

    .line 117
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/holoeverywhere/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lorg/holoeverywhere/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/holoeverywhere/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/holoeverywhere/app/AlertDialog$Builder;

    goto :goto_0
.end method
