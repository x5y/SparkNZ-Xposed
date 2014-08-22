.class public Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;
.super Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
.source "ContextMenuBuilder.java"

# interfaces
.implements Lcom/actionbarsherlock/view/ContextMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder$ContextMenuInfoGetter;
    }
.end annotation


# instance fields
.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mListener:Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0, p2}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;->setContextMenuListener(Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method protected getContextMenuInfo(Landroid/view/View;)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 35
    instance-of v3, p1, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder$ContextMenuInfoGetter;

    if-eqz v3, :cond_0

    .line 36
    check-cast p1, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder$ContextMenuInfoGetter;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder$ContextMenuInfoGetter;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .line 45
    :goto_0
    return-object v1

    .line 38
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    .line 40
    .local v1, "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    :try_start_0
    const-class v3, Landroid/view/View;

    const-string v4, "getContextMenuInfo"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 41
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 42
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/view/ContextMenu$ContextMenuInfo;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getContextMenuListener()Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;->mListener:Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    return-object v0
.end method

.method public setContextMenuListener(Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;->mListener:Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    .line 54
    return-void
.end method

.method public setHeaderIcon(I)Lcom/actionbarsherlock/view/ContextMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderIconInt(I)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/ContextMenu;

    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/ContextMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/ContextMenu;

    return-object v0
.end method

.method public setHeaderTitle(I)Lcom/actionbarsherlock/view/ContextMenu;
    .locals 1
    .param p1, "titleRes"    # I

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderTitleInt(I)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/ContextMenu;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/ContextMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/ContextMenu;

    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Lcom/actionbarsherlock/view/ContextMenu;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/view/ContextMenu;

    return-object v0
.end method

.method public show(Landroid/view/View;Landroid/os/IBinder;)Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;
    .locals 3
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;->mListener:Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot show context menu without reference on ContextMenuListener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;->getContextMenuInfo(Landroid/view/View;)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 88
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;->mListener:Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-interface {v1, p0, p1, v2}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;->onCreateContextMenu(Lcom/actionbarsherlock/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 89
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 90
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 91
    const v1, 0xc351

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 93
    :cond_1
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;-><init>(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V

    .line 94
    .local v0, "helper":Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;
    invoke-virtual {v0, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 97
    .end local v0    # "helper":Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
