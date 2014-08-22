.class public Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;
    }
.end annotation


# static fields
.field public static final VIEWS_TAG:Ljava/lang/String; = "android:menu:list"


# instance fields
.field mAdapter:Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;

.field private mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

.field mContext:Landroid/content/Context;

.field private mId:I

.field mInflater:Lorg/holoeverywhere/LayoutInflater;

.field private mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field mMenuView:Lcom/actionbarsherlock/internal/view/menu/ExpandedMenuView;

.field mThemeRes:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "itemLayoutRes"    # I
    .param p2, "themeRes"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    .line 109
    iput p2, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutRes"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;-><init>(II)V

    .line 103
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 104
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater;->from(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mInflater:Lorg/holoeverywhere/LayoutInflater;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;

    .prologue
    .line 20
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method


# virtual methods
.method public collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mId:I

    return v0
.end method

.method getItemIndexOffset()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mInflater:Lorg/holoeverywhere/LayoutInflater;

    sget v1, Lorg/holoeverywhere/R$layout;->expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ExpandedMenuView;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ExpandedMenuView;

    .line 148
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ExpandedMenuView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ExpandedMenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .prologue
    .line 159
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    if-eqz v0, :cond_2

    .line 160
    new-instance v0, Lorg/holoeverywhere/app/ContextThemeWrapperPlus;

    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    invoke-direct {v0, p1, v1}, Lorg/holoeverywhere/app/ContextThemeWrapperPlus;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 161
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater;->from(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mInflater:Lorg/holoeverywhere/LayoutInflater;

    .line 168
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 169
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 172
    :cond_1
    return-void

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 163
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 164
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mInflater:Lorg/holoeverywhere/LayoutInflater;

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater;->from(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mInflater:Lorg/holoeverywhere/LayoutInflater;

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 176
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V

    .line 179
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v1, p3}, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->performItemAction(Lcom/actionbarsherlock/view/MenuItem;I)Z

    .line 185
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 189
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "state":Landroid/os/Parcelable;
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 190
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 194
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ExpandedMenuView;

    if-nez v1, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    .line 198
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 199
    .local v0, "state":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    .line 208
    :cond_0
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;-><init>(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 209
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)Z

    .line 212
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 216
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 218
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 221
    :cond_0
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 224
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 225
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ExpandedMenuView;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 228
    :cond_0
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 230
    return-void
.end method

.method public setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    .line 235
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 238
    iput p1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mId:I

    .line 239
    return-void
.end method

.method public setItemIndexOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    .line 243
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/actionbarsherlock/internal/view/menu/ExpandedMenuView;

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->updateMenuView(Z)V

    .line 246
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 250
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 253
    :cond_0
    return-void
.end method
