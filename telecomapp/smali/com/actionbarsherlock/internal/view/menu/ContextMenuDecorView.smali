.class public Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;
.super Lorg/holoeverywhere/widget/FrameLayout;
.source "ContextMenuDecorView.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView$ContextMenuListenersProvider;
    }
.end annotation


# instance fields
.field private mContextMenu:Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;

.field private mListener:Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

.field private mMenuDialogHelper:Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;

.field private mProvider:Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView$ContextMenuListenersProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 27
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 34
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->mListener:Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    if-nez v0, :cond_0

    .line 38
    .end local p1    # "menu":Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    :goto_0
    return-void

    .line 37
    .restart local p1    # "menu":Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->mListener:Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    check-cast p1, Lcom/actionbarsherlock/view/ContextMenu;

    .end local p1    # "menu":Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    invoke-interface {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;->onContextMenuClosed(Lcom/actionbarsherlock/view/ContextMenu;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->mListener:Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 55
    .end local p1    # "menu":Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    :goto_0
    return v0

    .line 50
    .restart local p1    # "menu":Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    :cond_0
    instance-of v0, p1, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 52
    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    check-cast p1, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;

    .end local p1    # "menu":Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->mListener:Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    invoke-interface {v0, p2}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;->onContextItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .prologue
    .line 61
    return-void
.end method

.method public onOpenSubMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public setProvider(Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView$ContextMenuListenersProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView$ContextMenuListenersProvider;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->mProvider:Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView$ContextMenuListenersProvider;

    .line 75
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 79
    sget-boolean v1, Lorg/holoeverywhere/HoloEverywhere;->WRAP_TO_NATIVE_CONTEXT_MENU:Z

    if-eqz v1, :cond_1

    .line 80
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/FrameLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->mProvider:Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView$ContextMenuListenersProvider;

    invoke-interface {v1, p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView$ContextMenuListenersProvider;->getContextMenuListener(Landroid/view/View;)Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    move-result-object v1

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->mListener:Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    .line 83
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->mListener:Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->mContextMenu:Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;

    if-nez v1, :cond_2

    .line 87
    new-instance v1, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->mListener:Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    invoke-direct {v1, v2, v3}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;)V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->mContextMenu:Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;

    .line 88
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->mContextMenu:Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1, p0}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V

    .line 93
    :goto_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->mContextMenu:Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->mMenuDialogHelper:Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;

    .line 94
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->mMenuDialogHelper:Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;

    if-eqz v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->mMenuDialogHelper:Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->mContextMenu:Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;->clearAll()V

    .line 91
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->mContextMenu:Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView;->mListener:Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;->setContextMenuListener(Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;)V

    goto :goto_1
.end method
