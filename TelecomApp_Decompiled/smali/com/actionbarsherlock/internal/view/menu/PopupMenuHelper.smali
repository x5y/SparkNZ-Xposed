.class public Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;
.super Ljava/lang/Object;
.source "PopupMenuHelper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;
.implements Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;
.implements Lorg/holoeverywhere/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$1;,
        Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;,
        Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$ExpandedIndexObserver;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I


# instance fields
.field private mAdapter:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field mForceShowIcon:Z

.field private mInflater:Lorg/holoeverywhere/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

.field private mPopupMaxWidth:I

.field private mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    sget v0, Lorg/holoeverywhere/R$layout;->popup_menu_item_layout:I

    sput v0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p3, "decorView"    # Landroid/view/View;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mContext:Landroid/content/Context;

    .line 118
    invoke-static {p1}, Lorg/holoeverywhere/LayoutInflater;->from(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mInflater:Lorg/holoeverywhere/LayoutInflater;

    .line 119
    iput-object p2, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lorg/holoeverywhere/R$dimen;->config_prefDialogWidth:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPopupMaxWidth:I

    .line 123
    iput-object p3, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mAnchorView:Landroid/view/View;

    .line 124
    invoke-virtual {p2, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;)Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;)Lorg/holoeverywhere/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mInflater:Lorg/holoeverywhere/LayoutInflater;

    return-object v0
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v8, 0x0

    .line 168
    const/4 v6, 0x0

    .line 169
    .local v6, "width":I
    const/4 v4, 0x0

    .line 170
    .local v4, "itemView":Landroid/view/View;
    const/4 v3, 0x0

    .line 171
    .local v3, "itemType":I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 173
    .local v7, "widthMeasureSpec":I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 175
    .local v1, "heightMeasureSpec":I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 176
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 177
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 178
    .local v5, "positionType":I
    if-eq v5, v3, :cond_0

    .line 179
    move v3, v5

    .line 180
    const/4 v4, 0x0

    .line 182
    :cond_0
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v8, :cond_1

    .line 183
    new-instance v8, Lorg/holoeverywhere/widget/FrameLayout;

    iget-object v9, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lorg/holoeverywhere/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 185
    :cond_1
    iget-object v8, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {p1, v2, v4, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 186
    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    .line 187
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v5    # "positionType":I
    :cond_2
    return v6
.end method


# virtual methods
.method public collapseItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->dismiss()V

    .line 136
    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .prologue
    .line 161
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 194
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->dismiss()V

    .line 198
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    .line 207
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->close()V

    .line 208
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 213
    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mAnchorView:Landroid/view/View;

    instance-of v0, v0, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mAnchorView:Landroid/view/View;

    check-cast v0, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;

    invoke-interface {v0, p0}, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;->removeOnAttachStateChangeListener(Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;)V

    .line 219
    :cond_2
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mAnchorView:Landroid/view/View;

    .line 225
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->dismiss()V

    .line 231
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 227
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 236
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;

    .line 237
    .local v0, "adapter":Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;
    # getter for: Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->access$400(Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->getItem(I)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->performItemAction(Lcom/actionbarsherlock/view/MenuItem;I)Z

    .line 238
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 242
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->dismiss()V

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 252
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;)Z
    .locals 7
    .param p1, "subMenu"    # Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 262
    new-instance v4, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;

    iget-object v5, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v5, p1, v6}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    .line 264
    .local v4, "subPopup":Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;
    iget-object v5, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V

    .line 265
    const/4 v3, 0x0

    .line 266
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 267
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 268
    invoke-virtual {p1, v2}, Lcom/actionbarsherlock/internal/view/menu/SubMenuBuilder;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 269
    .local v0, "childItem":Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 270
    const/4 v3, 0x1

    .line 274
    .end local v0    # "childItem":Lcom/actionbarsherlock/view/MenuItem;
    :cond_0
    invoke-virtual {v4, v3}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->setForceShowIcon(Z)V

    .line 275
    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->tryShow()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 276
    iget-object v5, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_1

    .line 277
    iget-object v5, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)Z

    .line 279
    :cond_1
    const/4 v5, 0x1

    .line 282
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;
    :goto_1
    return v5

    .line 267
    .restart local v0    # "childItem":Lcom/actionbarsherlock/view/MenuItem;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "preserveIconSpacing":Z
    .restart local v4    # "subPopup":Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    .end local v0    # "childItem":Lcom/actionbarsherlock/view/MenuItem;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 287
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 298
    :cond_1
    instance-of v0, p1, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;

    if-eqz v0, :cond_2

    .line 299
    check-cast p1, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;

    .end local p1    # "v":Landroid/view/View;
    invoke-interface {p1, p0}, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;->removeOnAttachStateChangeListener(Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;)V

    .line 302
    :cond_2
    return-void
.end method

.method public setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    .line 307
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 310
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mForceShowIcon:Z

    .line 311
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PopupMenuHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 321
    new-instance v2, Lorg/holoeverywhere/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lorg/holoeverywhere/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    .line 322
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v2, p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->setOnDismissListener(Lorg/holoeverywhere/widget/PopupWindow$OnDismissListener;)V

    .line 323
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v2, p0}, Lorg/holoeverywhere/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 324
    new-instance v2, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-direct {v2, p0, v4}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;-><init>(Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V

    iput-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;

    .line 325
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;

    invoke-virtual {v2, v4}, Lorg/holoeverywhere/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v2, v3}, Lorg/holoeverywhere/widget/ListPopupWindow;->setModal(Z)V

    .line 327
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mAnchorView:Landroid/view/View;

    .line 328
    .local v1, "anchor":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 329
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v2, :cond_0

    move v0, v3

    .line 330
    .local v0, "addGlobalListener":Z
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 331
    if-eqz v0, :cond_1

    .line 332
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 333
    instance-of v2, v1, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 334
    check-cast v2, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;

    invoke-interface {v2, p0}, Lcom/actionbarsherlock/internal/view/View_HasStateListenerSupport;->addOnAttachStateChangeListener(Lcom/actionbarsherlock/internal/view/View_OnAttachStateChangeListener;)V

    .line 338
    :cond_1
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v2, v1}, Lorg/holoeverywhere/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 342
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;

    invoke-direct {p0, v4}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v4

    iget v5, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPopupMaxWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/holoeverywhere/widget/ListPopupWindow;->setContentWidth(I)V

    .line 344
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lorg/holoeverywhere/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 345
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/ListPopupWindow;->show()V

    .line 346
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mPopup:Lorg/holoeverywhere/widget/ListPopupWindow;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/ListPopupWindow;->getListView()Lorg/holoeverywhere/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/holoeverywhere/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 347
    .end local v0    # "addGlobalListener":Z
    :goto_0
    return v3

    :cond_2
    move v3, v0

    .line 340
    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 352
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 355
    :cond_0
    return-void
.end method
