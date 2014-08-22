.class public Lorg/holoeverywhere/widget/HeaderViewListAdapter;
.super Lorg/holoeverywhere/widget/ListAdapterWrapper;
.source "HeaderViewListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    }
.end annotation


# static fields
.field private static final EMPTY_INFO_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAreAllFixedViewsSelectable:Z

.field private final mFooterViewInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeaderViewInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Landroid/widget/ListAdapter;Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;)V
    .locals 1
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .param p4, "listener"    # Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            "Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "headerViewInfos":Ljava/util/List;, "Ljava/util/List<Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/List;, "Ljava/util/List<Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;>;"
    invoke-direct {p0, p3, p4}, Lorg/holoeverywhere/widget/ListAdapterWrapper;-><init>(Landroid/widget/ListAdapter;Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;)V

    .line 29
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mIsFilterable:Z

    .line 30
    if-nez p1, :cond_0

    .line 31
    sget-object v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/List;

    iput-object v0, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/List;

    .line 35
    :goto_0
    if-nez p2, :cond_1

    .line 36
    sget-object v0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/List;

    iput-object v0, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/List;

    .line 40
    :goto_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 43
    return-void

    .line 33
    :cond_0
    iput-object p1, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/List;

    goto :goto_0

    .line 38
    :cond_1
    iput-object p2, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/List;

    goto :goto_1

    .line 40
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private areAllListInfosSelectable(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;>;"
    if-eqz p1, :cond_1

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;

    .line 53
    .local v1, "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    iget-boolean v2, v1, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 54
    const/4 v2, 0x0

    .line 58
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 85
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 86
    iget-object v3, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;

    iget-object v3, v3, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->data:Ljava/lang/Object;

    .line 93
    :goto_0
    return-object v3

    .line 88
    :cond_0
    sub-int v1, p1, v2

    .line 89
    .local v1, "adjPosition":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 90
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_1

    .line 91
    invoke-super {p0, v1}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 93
    :cond_1
    iget-object v3, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/List;

    sub-int v4, v1, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;

    iget-object v3, v3, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->data:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 99
    .local v2, "numHeaders":I
    if-lt p1, v2, :cond_0

    .line 100
    sub-int v1, p1, v2

    .line 101
    .local v1, "adjPosition":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 102
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 103
    invoke-super {p0, v1}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getItemId(I)J

    move-result-wide v3

    .line 106
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return-wide v3

    :cond_0
    const-wide/high16 v3, -0x8000000000000000L

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 112
    .local v2, "numHeaders":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 113
    sub-int v1, p1, v2

    .line 114
    .local v1, "adjPosition":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 115
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 116
    invoke-super {p0, v1}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->getItemViewType(I)I

    move-result v3

    .line 119
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 125
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 126
    iget-object v3, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;

    iget-object p2, v3, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->view:Landroid/view/View;

    .line 136
    :goto_0
    invoke-virtual {p0, p2, p1}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->onPrepareView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 128
    :cond_0
    sub-int v1, p1, v2

    .line 129
    .local v1, "adjPosition":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 130
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 133
    :cond_1
    iget-object v3, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/List;

    sub-int v4, v1, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;

    iget-object p2, v3, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->view:Landroid/view/View;

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 142
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 143
    iget-object v3, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;

    iget-boolean v3, v3, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->isSelectable:Z

    .line 150
    :goto_0
    return v3

    .line 145
    :cond_0
    sub-int v1, p1, v2

    .line 146
    .local v1, "adjPosition":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 147
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_1

    .line 148
    invoke-super {p0, v1}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->isEnabled(I)Z

    move-result v3

    goto :goto_0

    .line 150
    :cond_1
    iget-object v3, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/List;

    sub-int v4, v1, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;

    iget-boolean v3, v3, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->isSelectable:Z

    goto :goto_0
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 155
    iget-object v4, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;

    .line 156
    .local v1, "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    iget-object v4, v1, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 157
    iget-object v4, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 158
    iget-object v4, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/List;

    invoke-direct {p0, v4}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/List;

    invoke-direct {p0, v4}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 164
    .end local v1    # "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    :goto_1
    return v3

    .line 154
    .restart local v1    # "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    :cond_2
    move v3, v2

    .line 164
    goto :goto_1
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 168
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 169
    iget-object v4, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;

    .line 170
    .local v1, "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    iget-object v4, v1, Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 171
    iget-object v4, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 172
    iget-object v4, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/List;

    invoke-direct {p0, v4}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/List;

    invoke-direct {p0, v4}, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lorg/holoeverywhere/widget/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 178
    .end local v1    # "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    :goto_1
    return v3

    .line 168
    .restart local v1    # "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lorg/holoeverywhere/widget/HeaderViewListAdapter$ViewInfo;
    :cond_2
    move v3, v2

    .line 178
    goto :goto_1
.end method
