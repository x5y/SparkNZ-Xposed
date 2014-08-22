.class public Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;
.super Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;
.source "ContextMenuWrapper.java"

# interfaces
.implements Lcom/actionbarsherlock/view/ContextMenu;


# instance fields
.field private nativeMenu:Landroid/view/ContextMenu;


# direct methods
.method public constructor <init>(Landroid/view/ContextMenu;)V
    .locals 0
    .param p1, "nativeMenu"    # Landroid/view/ContextMenu;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;-><init>(Landroid/view/Menu;)V

    .line 14
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;->nativeMenu:Landroid/view/ContextMenu;

    .line 15
    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;->nativeMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->clearHeader()V

    .line 20
    return-void
.end method

.method public setHeaderIcon(I)Lcom/actionbarsherlock/view/ContextMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;->nativeMenu:Landroid/view/ContextMenu;

    invoke-interface {v0, p1}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    .line 31
    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/ContextMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;->nativeMenu:Landroid/view/ContextMenu;

    invoke-interface {v0, p1}, Landroid/view/ContextMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/ContextMenu;

    .line 25
    return-object p0
.end method

.method public setHeaderTitle(I)Lcom/actionbarsherlock/view/ContextMenu;
    .locals 1
    .param p1, "titleRes"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;->nativeMenu:Landroid/view/ContextMenu;

    invoke-interface {v0, p1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 43
    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/ContextMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;->nativeMenu:Landroid/view/ContextMenu;

    invoke-interface {v0, p1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 37
    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Lcom/actionbarsherlock/view/ContextMenu;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;->nativeMenu:Landroid/view/ContextMenu;

    invoke-interface {v0, p1}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 49
    return-object p0
.end method

.method public unwrap()Landroid/view/ContextMenu;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;->nativeMenu:Landroid/view/ContextMenu;

    return-object v0
.end method

.method public bridge synthetic unwrap()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;->unwrap()Landroid/view/ContextMenu;

    move-result-object v0

    return-object v0
.end method
