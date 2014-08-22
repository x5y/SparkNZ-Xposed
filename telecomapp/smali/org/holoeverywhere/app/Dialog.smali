.class public Lorg/holoeverywhere/app/Dialog;
.super Landroid/app/Dialog;
.source "Dialog.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView$ContextMenuListenersProvider;
.implements Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;


# instance fields
.field private mContextMenuListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 55
    invoke-static {p1, p2}, Lorg/holoeverywhere/app/Dialog;->checkTheme(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/holoeverywhere/app/Dialog;-><init>(Landroid/content/Context;II)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Dialog;->setCancelable(Z)V

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "fallback"    # I

    .prologue
    .line 60
    new-instance v0, Lorg/holoeverywhere/app/ContextThemeWrapperPlus;

    invoke-direct {v0, p1, p2}, Lorg/holoeverywhere/app/ContextThemeWrapperPlus;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/holoeverywhere/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0, p2}, Lorg/holoeverywhere/app/Dialog;->setCancelable(Z)V

    .line 51
    invoke-virtual {p0, p3}, Lorg/holoeverywhere/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 52
    return-void
.end method

.method private static final checkTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theme"    # I

    .prologue
    .line 29
    const/high16 v1, 0x1000000

    if-lt p1, v1, :cond_0

    .line 37
    .end local p1    # "theme":I
    :goto_0
    return p1

    .line 32
    .restart local p1    # "theme":I
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 33
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lorg/holoeverywhere/R$attr;->dialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 34
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_1

    .line 35
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    .line 37
    :cond_1
    sget p1, Lorg/holoeverywhere/R$style;->Holo_Theme_Dialog:I

    goto :goto_0
.end method

.method private requestDecorView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "layoutRes"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 146
    iget-object v1, p0, Lorg/holoeverywhere/app/Dialog;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    if-eqz v1, :cond_0

    .line 159
    :goto_0
    return v0

    .line 149
    :cond_0
    new-instance v1, Lorg/holoeverywhere/internal/WindowDecorView;

    invoke-virtual {p0}, Lorg/holoeverywhere/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/holoeverywhere/internal/WindowDecorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/holoeverywhere/app/Dialog;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    .line 150
    iget-object v1, p0, Lorg/holoeverywhere/app/Dialog;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/internal/WindowDecorView;->setId(I)V

    .line 151
    iget-object v1, p0, Lorg/holoeverywhere/app/Dialog;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    invoke-virtual {v1, p0}, Lorg/holoeverywhere/internal/WindowDecorView;->setProvider(Lcom/actionbarsherlock/internal/view/menu/ContextMenuDecorView$ContextMenuListenersProvider;)V

    .line 152
    if-eqz p1, :cond_2

    .line 153
    iget-object v0, p0, Lorg/holoeverywhere/app/Dialog;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/internal/WindowDecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lorg/holoeverywhere/app/Dialog;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :cond_2
    if-lez p3, :cond_1

    .line 155
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Dialog;->getLayoutInflater()Lorg/holoeverywhere/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lorg/holoeverywhere/app/Dialog;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    invoke-virtual {v1, p3, v2, v0}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 65
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/app/Dialog;->requestDecorView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/holoeverywhere/app/Dialog;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/internal/WindowDecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    :cond_0
    return-void
.end method

.method public getContextMenuListener(Landroid/view/View;)Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/holoeverywhere/app/Dialog;->mContextMenuListeners:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/app/Dialog;->mContextMenuListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    goto :goto_0
.end method

.method public bridge synthetic getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Dialog;->getLayoutInflater()Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater()Lorg/holoeverywhere/LayoutInflater;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater;->from(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 85
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuItemWrapper;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuItemWrapper;-><init>(Landroid/view/MenuItem;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Dialog;->onContextItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onContextItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 90
    instance-of v0, p1, Lcom/actionbarsherlock/internal/view/menu/ContextMenuItemWrapper;

    if-eqz v0, :cond_0

    .line 91
    check-cast p1, Lcom/actionbarsherlock/internal/view/menu/ContextMenuItemWrapper;

    .end local p1    # "item":Lcom/actionbarsherlock/view/MenuItem;
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuItemWrapper;->unwrap()Landroid/view/MenuItem;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Dialog;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 94
    :goto_0
    return v0

    .restart local p1    # "item":Lcom/actionbarsherlock/view/MenuItem;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 106
    instance-of v0, p1, Landroid/view/ContextMenu;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;

    check-cast p1, Landroid/view/ContextMenu;

    .end local p1    # "menu":Landroid/view/Menu;
    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;-><init>(Landroid/view/ContextMenu;)V

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/Dialog;->onContextMenuClosed(Lcom/actionbarsherlock/view/ContextMenu;)V

    .line 112
    :goto_0
    return-void

    .line 110
    .restart local p1    # "menu":Landroid/view/Menu;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onContextMenuClosed(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onContextMenuClosed(Lcom/actionbarsherlock/view/ContextMenu;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/ContextMenu;

    .prologue
    .line 99
    instance-of v0, p1, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;

    if-eqz v0, :cond_0

    .line 100
    check-cast p1, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;

    .end local p1    # "menu":Lcom/actionbarsherlock/view/ContextMenu;
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;->unwrap()Landroid/view/ContextMenu;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Dialog;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 102
    :cond_0
    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 117
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;-><init>(Landroid/view/ContextMenu;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/holoeverywhere/app/Dialog;->onCreateContextMenu(Lcom/actionbarsherlock/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 118
    return-void
.end method

.method public onCreateContextMenu(Lcom/actionbarsherlock/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 123
    instance-of v0, p1, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;

    if-eqz v0, :cond_0

    .line 124
    check-cast p1, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;

    .end local p1    # "menu":Lcom/actionbarsherlock/view/ContextMenu;
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/ContextMenuWrapper;->unwrap()Landroid/view/ContextMenu;

    move-result-object v0

    invoke-super {p0, v0, p2, p3}, Landroid/app/Dialog;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 127
    :cond_0
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 131
    sget-boolean v0, Lorg/holoeverywhere/HoloEverywhere;->WRAP_TO_NATIVE_CONTEXT_MENU:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-super {p0, p1}, Landroid/app/Dialog;->registerForContextMenu(Landroid/view/View;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0, p1, p0}, Lorg/holoeverywhere/app/Dialog;->registerForContextMenu(Landroid/view/View;Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;)V

    goto :goto_0
.end method

.method public registerForContextMenu(Landroid/view/View;Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/actionbarsherlock/internal/view/menu/ContextMenuListener;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/holoeverywhere/app/Dialog;->mContextMenuListeners:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lorg/holoeverywhere/util/WeaklyMap;

    invoke-direct {v0}, Lorg/holoeverywhere/util/WeaklyMap;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/app/Dialog;->mContextMenuListeners:Ljava/util/Map;

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/app/Dialog;->mContextMenuListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 165
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 166
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, v0, v0, p1}, Lorg/holoeverywhere/app/Dialog;->requestDecorView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/holoeverywhere/app/Dialog;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    invoke-virtual {v0}, Lorg/holoeverywhere/internal/WindowDecorView;->removeAllViewsInLayout()V

    .line 172
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Dialog;->getLayoutInflater()Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lorg/holoeverywhere/app/Dialog;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 174
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 178
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lorg/holoeverywhere/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 183
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/app/Dialog;->requestDecorView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/holoeverywhere/app/Dialog;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    invoke-virtual {v0}, Lorg/holoeverywhere/internal/WindowDecorView;->removeAllViewsInLayout()V

    .line 185
    iget-object v0, p0, Lorg/holoeverywhere/app/Dialog;->mDecorView:Lorg/holoeverywhere/internal/WindowDecorView;

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/internal/WindowDecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    :cond_0
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 191
    sget-boolean v0, Lorg/holoeverywhere/HoloEverywhere;->WRAP_TO_NATIVE_CONTEXT_MENU:Z

    if-eqz v0, :cond_1

    .line 192
    invoke-super {p0, p1}, Landroid/app/Dialog;->unregisterForContextMenu(Landroid/view/View;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/app/Dialog;->mContextMenuListeners:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/holoeverywhere/app/Dialog;->mContextMenuListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
