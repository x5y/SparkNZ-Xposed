.class Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "PopupMenuHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p2, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->mExpandedIndex:I

    .line 45
    iput-object p2, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 46
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$ExpandedIndexObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$ExpandedIndexObserver;-><init>(Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$1;)V

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 47
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->findExpandedIndex()V

    .line 48
    return-void
.end method

.method static synthetic access$400(Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 51
    iget-object v5, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;

    # getter for: Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->access$200(Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 52
    .local v1, "expandedItem":Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    .line 53
    iget-object v5, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;

    # getter for: Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->access$200(Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 54
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 55
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 56
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 57
    .local v3, "item":Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 58
    iput v2, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->mExpandedIndex:I

    .line 64
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    return-void

    .line 55
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 68
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 69
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 72
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 77
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->mAdapterMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;>;"
    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 79
    add-int/lit8 p1, p1, 0x1

    .line 81
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->getItem(I)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 86
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 91
    if-nez p2, :cond_0

    .line 92
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;

    # getter for: Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mInflater:Lorg/holoeverywhere/LayoutInflater;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->access$300(Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->ITEM_LAYOUT:I

    invoke-virtual {v1, v2, p3, v3}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 94
    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;

    .line 95
    .local v0, "itemView":Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->this$0:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;

    iget-boolean v1, v1, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mForceShowIcon:Z

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 96
    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/view/menu/HoloListMenuItemView;->setForceShowIcon(Z)V

    .line 98
    :cond_1
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->getItem(I)Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;->initialize(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;I)V

    .line 99
    return-object p2
.end method
