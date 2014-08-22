.class public abstract Lorg/holoeverywhere/app/ExpandableListActivity;
.super Lorg/holoeverywhere/app/Activity;
.source "ExpandableListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lorg/holoeverywhere/widget/ExpandableListView$OnChildClickListener;
.implements Lorg/holoeverywhere/widget/ExpandableListView$OnGroupCollapseListener;
.implements Lorg/holoeverywhere/widget/ExpandableListView$OnGroupExpandListener;


# instance fields
.field mAdapter:Landroid/widget/ExpandableListAdapter;

.field mFinishedStart:Z

.field mList:Lorg/holoeverywhere/widget/ExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/holoeverywhere/app/Activity;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/app/ExpandableListActivity;->mFinishedStart:Z

    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lorg/holoeverywhere/app/ExpandableListActivity;->mList:Lorg/holoeverywhere/widget/ExpandableListView;

    if-eqz v0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    sget v0, Lorg/holoeverywhere/R$layout;->expandable_list_content:I

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/ExpandableListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/holoeverywhere/app/ExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListView()Lorg/holoeverywhere/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/holoeverywhere/app/ExpandableListActivity;->ensureList()V

    .line 33
    iget-object v0, p0, Lorg/holoeverywhere/app/ExpandableListActivity;->mList:Lorg/holoeverywhere/widget/ExpandableListView;

    return-object v0
.end method

.method public getSelectedId()J
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lorg/holoeverywhere/app/ExpandableListActivity;->mList:Lorg/holoeverywhere/widget/ExpandableListView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ExpandableListView;->getSelectedId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedPosition()J
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/holoeverywhere/app/ExpandableListActivity;->mList:Lorg/holoeverywhere/widget/ExpandableListView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ExpandableListView;->getSelectedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public onChildClick(Lorg/holoeverywhere/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .param p1, "parent"    # Lorg/holoeverywhere/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Lorg/holoeverywhere/app/Activity;->onContentChanged()V

    .line 53
    sget v1, Lorg/holoeverywhere/R$id;->empty:I

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/app/ExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "emptyView":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/app/ExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/widget/ExpandableListView;

    iput-object v1, p0, Lorg/holoeverywhere/app/ExpandableListActivity;->mList:Lorg/holoeverywhere/widget/ExpandableListView;

    .line 55
    iget-object v1, p0, Lorg/holoeverywhere/app/ExpandableListActivity;->mList:Lorg/holoeverywhere/widget/ExpandableListView;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ExpandableListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_0
    if-eqz v0, :cond_1

    .line 61
    iget-object v1, p0, Lorg/holoeverywhere/app/ExpandableListActivity;->mList:Lorg/holoeverywhere/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Lorg/holoeverywhere/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 63
    :cond_1
    iget-object v1, p0, Lorg/holoeverywhere/app/ExpandableListActivity;->mList:Lorg/holoeverywhere/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Lorg/holoeverywhere/widget/ExpandableListView;->setOnChildClickListener(Lorg/holoeverywhere/widget/ExpandableListView$OnChildClickListener;)V

    .line 64
    iget-object v1, p0, Lorg/holoeverywhere/app/ExpandableListActivity;->mList:Lorg/holoeverywhere/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Lorg/holoeverywhere/widget/ExpandableListView;->setOnGroupExpandListener(Lorg/holoeverywhere/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 65
    iget-object v1, p0, Lorg/holoeverywhere/app/ExpandableListActivity;->mList:Lorg/holoeverywhere/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Lorg/holoeverywhere/widget/ExpandableListView;->setOnGroupCollapseListener(Lorg/holoeverywhere/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 67
    iget-boolean v1, p0, Lorg/holoeverywhere/app/ExpandableListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 68
    iget-object v1, p0, Lorg/holoeverywhere/app/ExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/app/ExpandableListActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 70
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/holoeverywhere/app/ExpandableListActivity;->mFinishedStart:Z

    .line 71
    return-void
.end method

.method public onGroupCollapse(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 75
    return-void
.end method

.method public onGroupExpand(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 79
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/holoeverywhere/app/ExpandableListActivity;->ensureList()V

    .line 84
    invoke-super {p0, p1}, Lorg/holoeverywhere/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method

.method public setListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    invoke-direct {p0}, Lorg/holoeverywhere/app/ExpandableListActivity;->ensureList()V

    .line 90
    iput-object p1, p0, Lorg/holoeverywhere/app/ExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 91
    iget-object v0, p0, Lorg/holoeverywhere/app/ExpandableListActivity;->mList:Lorg/holoeverywhere/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 92
    monitor-exit p0

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelectedChild(IIZ)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lorg/holoeverywhere/app/ExpandableListActivity;->mList:Lorg/holoeverywhere/widget/ExpandableListView;

    invoke-virtual {v0, p1, p2, p3}, Lorg/holoeverywhere/widget/ExpandableListView;->setSelectedChild(IIZ)Z

    move-result v0

    return v0
.end method

.method public setSelectedGroup(I)V
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lorg/holoeverywhere/app/ExpandableListActivity;->mList:Lorg/holoeverywhere/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ExpandableListView;->setSelectedGroup(I)V

    .line 103
    return-void
.end method
