.class public abstract Lorg/holoeverywhere/app/ListActivity;
.super Lorg/holoeverywhere/app/Activity;
.source "ListActivity.java"


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field protected mList:Lorg/holoeverywhere/widget/ListView;

.field private mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/holoeverywhere/app/Activity;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/app/ListActivity;->mFinishedStart:Z

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/app/ListActivity;->mHandler:Landroid/os/Handler;

    .line 20
    new-instance v0, Lorg/holoeverywhere/app/ListActivity$1;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/ListActivity$1;-><init>(Lorg/holoeverywhere/app/ListActivity;)V

    iput-object v0, p0, Lorg/holoeverywhere/app/ListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 28
    new-instance v0, Lorg/holoeverywhere/app/ListActivity$2;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/ListActivity$2;-><init>(Lorg/holoeverywhere/app/ListActivity;)V

    iput-object v0, p0, Lorg/holoeverywhere/app/ListActivity;->mRequestFocus:Ljava/lang/Runnable;

    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/holoeverywhere/app/ListActivity;->mList:Lorg/holoeverywhere/widget/ListView;

    if-eqz v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    sget v0, Lorg/holoeverywhere/R$layout;->list_content:I

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/ListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/holoeverywhere/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Lorg/holoeverywhere/widget/ListView;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/holoeverywhere/app/ListActivity;->ensureList()V

    .line 48
    iget-object v0, p0, Lorg/holoeverywhere/app/ListActivity;->mList:Lorg/holoeverywhere/widget/ListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/holoeverywhere/app/ListActivity;->mList:Lorg/holoeverywhere/widget/ListView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/holoeverywhere/app/ListActivity;->mList:Lorg/holoeverywhere/widget/ListView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lorg/holoeverywhere/app/Activity;->onContentChanged()V

    .line 62
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "emptyView":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/widget/ListView;

    iput-object v1, p0, Lorg/holoeverywhere/app/ListActivity;->mList:Lorg/holoeverywhere/widget/ListView;

    .line 64
    iget-object v1, p0, Lorg/holoeverywhere/app/ListActivity;->mList:Lorg/holoeverywhere/widget/ListView;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_0
    if-eqz v0, :cond_1

    .line 70
    iget-object v1, p0, Lorg/holoeverywhere/app/ListActivity;->mList:Lorg/holoeverywhere/widget/ListView;

    invoke-virtual {v1, v0}, Lorg/holoeverywhere/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 72
    :cond_1
    iget-object v1, p0, Lorg/holoeverywhere/app/ListActivity;->mList:Lorg/holoeverywhere/widget/ListView;

    iget-object v2, p0, Lorg/holoeverywhere/app/ListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    iget-boolean v1, p0, Lorg/holoeverywhere/app/ListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 74
    iget-object v1, p0, Lorg/holoeverywhere/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    :cond_2
    iget-object v1, p0, Lorg/holoeverywhere/app/ListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/holoeverywhere/app/ListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/holoeverywhere/app/ListActivity;->mFinishedStart:Z

    .line 78
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/holoeverywhere/app/ListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/holoeverywhere/app/ListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    invoke-super {p0}, Lorg/holoeverywhere/app/Activity;->onDestroy()V

    .line 84
    return-void
.end method

.method protected onListItemClick(Lorg/holoeverywhere/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Lorg/holoeverywhere/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 87
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/holoeverywhere/app/ListActivity;->ensureList()V

    .line 92
    invoke-super {p0, p1}, Lorg/holoeverywhere/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 93
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    invoke-direct {p0}, Lorg/holoeverywhere/app/ListActivity;->ensureList()V

    .line 98
    iput-object p1, p0, Lorg/holoeverywhere/app/ListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 99
    iget-object v0, p0, Lorg/holoeverywhere/app/ListActivity;->mList:Lorg/holoeverywhere/widget/ListView;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    monitor-exit p0

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lorg/holoeverywhere/app/ListActivity;->mList:Lorg/holoeverywhere/widget/ListView;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ListView;->setSelection(I)V

    .line 105
    return-void
.end method
