.class public Lorg/holoeverywhere/widget/ListAdapterWrapper;
.super Ljava/lang/Object;
.source "ListAdapterWrapper.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/ListAdapterWrapper$WrapperDataSetObserver;,
        Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;
    }
.end annotation


# instance fields
.field private final mCallback:Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;

.field private mLastDataSetObserver:Landroid/database/DataSetObserver;

.field private final mWrapped:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "wrapped"    # Landroid/widget/ListAdapter;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/ListAdapterWrapper;-><init>(Landroid/widget/ListAdapter;Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/widget/ListAdapter;Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;)V
    .locals 0
    .param p1, "wrapped"    # Landroid/widget/ListAdapter;
    .param p2, "callback"    # Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    .line 53
    iput-object p2, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mCallback:Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lorg/holoeverywhere/widget/ListAdapterWrapper;)Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/ListAdapterWrapper;

    .prologue
    .line 10
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mCallback:Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;

    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/holoeverywhere/widget/ListAdapterWrapper;->onPrepareView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mLastDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mLastDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 115
    :cond_0
    return-void
.end method

.method public onPrepareView(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mCallback:Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mCallback:Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;

    invoke-interface {v0, p1, p2}, Lorg/holoeverywhere/widget/ListAdapterWrapper$ListAdapterCallback;->onPrepareView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 121
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    return-object p1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .param p1, "dataSetObserver"    # Landroid/database/DataSetObserver;

    .prologue
    .line 126
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    new-instance v1, Lorg/holoeverywhere/widget/ListAdapterWrapper$WrapperDataSetObserver;

    invoke-direct {v1, p0, p1}, Lorg/holoeverywhere/widget/ListAdapterWrapper$WrapperDataSetObserver;-><init>(Lorg/holoeverywhere/widget/ListAdapterWrapper;Landroid/database/DataSetObserver;)V

    iput-object v1, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mLastDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 128
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .param p1, "dataSetObserver"    # Landroid/database/DataSetObserver;

    .prologue
    .line 132
    iget-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mLastDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/holoeverywhere/widget/ListAdapterWrapper;->mLastDataSetObserver:Landroid/database/DataSetObserver;

    .line 134
    return-void
.end method
