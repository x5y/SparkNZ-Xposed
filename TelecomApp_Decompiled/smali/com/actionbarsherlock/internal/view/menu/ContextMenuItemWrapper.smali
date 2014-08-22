.class public Lcom/actionbarsherlock/internal/view/menu/ContextMenuItemWrapper;
.super Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;
.source "ContextMenuItemWrapper.java"


# instance fields
.field private final nativeItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "nativeItem"    # Landroid/view/MenuItem;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;-><init>(Landroid/view/MenuItem;)V

    .line 11
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuItemWrapper;->nativeItem:Landroid/view/MenuItem;

    .line 12
    return-void
.end method


# virtual methods
.method public unwrap()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuItemWrapper;->nativeItem:Landroid/view/MenuItem;

    return-object v0
.end method
