.class public Lorg/holoeverywhere/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/PopupMenu$OnMenuItemClickListener;,
        Lorg/holoeverywhere/widget/PopupMenu$OnDismissListener;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDismissListener:Lorg/holoeverywhere/widget/PopupMenu$OnDismissListener;

.field private mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private mMenuItemClickListener:Lorg/holoeverywhere/widget/PopupMenu$OnMenuItemClickListener;

.field private mPopup:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/holoeverywhere/widget/PopupMenu;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/PopupMenu;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 35
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupMenu;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V

    .line 36
    iput-object p2, p0, Lorg/holoeverywhere/widget/PopupMenu;->mAnchor:Landroid/view/View;

    .line 37
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;

    iget-object v1, p0, Lorg/holoeverywhere/widget/PopupMenu;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lorg/holoeverywhere/widget/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v0, p1, v1, v2}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/PopupMenu;->mPopup:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;

    .line 38
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupMenu;->mPopup:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V

    .line 39
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupMenu;->mPopup:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->dismiss()V

    .line 43
    return-void
.end method

.method public getMenu()Lcom/actionbarsherlock/view/Menu;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupMenu;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/actionbarsherlock/view/MenuInflater;

    iget-object v1, p0, Lorg/holoeverywhere/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public inflate(I)V
    .locals 2
    .param p1, "menuRes"    # I

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/PopupMenu;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lorg/holoeverywhere/widget/PopupMenu;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 55
    return-void
.end method

.method public onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupMenu;->mDismissListener:Lorg/holoeverywhere/widget/PopupMenu$OnDismissListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupMenu;->mDismissListener:Lorg/holoeverywhere/widget/PopupMenu$OnDismissListener;

    invoke-interface {v0, p0}, Lorg/holoeverywhere/widget/PopupMenu$OnDismissListener;->onDismiss(Lorg/holoeverywhere/widget/PopupMenu;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onCloseSubMenu(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 65
    return-void
.end method

.method public onMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupMenu;->mMenuItemClickListener:Lorg/holoeverywhere/widget/PopupMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupMenu;->mMenuItemClickListener:Lorg/holoeverywhere/widget/PopupMenu$OnMenuItemClickListener;

    invoke-interface {v0, p2}, Lorg/holoeverywhere/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .prologue
    .line 77
    return-void
.end method

.method public onOpenSubMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)Z
    .locals 4
    .param p1, "subMenu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v0, 0x1

    .line 81
    if-nez p1, :cond_1

    .line 82
    const/4 v0, 0x0

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lorg/holoeverywhere/widget/PopupMenu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/holoeverywhere/widget/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v1, v2, p1, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setOnDismissListener(Lorg/holoeverywhere/widget/PopupMenu$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/holoeverywhere/widget/PopupMenu$OnDismissListener;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/holoeverywhere/widget/PopupMenu;->mDismissListener:Lorg/holoeverywhere/widget/PopupMenu$OnDismissListener;

    .line 93
    return-void
.end method

.method public setOnMenuItemClickListener(Lorg/holoeverywhere/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/holoeverywhere/widget/PopupMenu$OnMenuItemClickListener;

    .prologue
    .line 96
    iput-object p1, p0, Lorg/holoeverywhere/widget/PopupMenu;->mMenuItemClickListener:Lorg/holoeverywhere/widget/PopupMenu$OnMenuItemClickListener;

    .line 97
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/holoeverywhere/widget/PopupMenu;->mPopup:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->show()V

    .line 101
    return-void
.end method
