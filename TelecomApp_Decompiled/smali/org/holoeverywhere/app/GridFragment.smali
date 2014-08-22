.class public Lorg/holoeverywhere/app/GridFragment;
.super Lorg/holoeverywhere/app/Fragment;
.source "GridFragment.java"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mEmptyText:Ljava/lang/CharSequence;

.field private mEmptyView:Landroid/view/View;

.field private mGrid:Lorg/holoeverywhere/widget/GridView;

.field private mGridContainer:Landroid/view/View;

.field private mGridShown:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/holoeverywhere/app/Fragment;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mHandler:Landroid/os/Handler;

    .line 25
    new-instance v0, Lorg/holoeverywhere/app/GridFragment$1;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/GridFragment$1;-><init>(Lorg/holoeverywhere/app/GridFragment;)V

    iput-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 33
    new-instance v0, Lorg/holoeverywhere/app/GridFragment$2;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/GridFragment$2;-><init>(Lorg/holoeverywhere/app/GridFragment;)V

    iput-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mRequestFocus:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lorg/holoeverywhere/app/GridFragment;)Lorg/holoeverywhere/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/GridFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mGrid:Lorg/holoeverywhere/widget/GridView;

    return-object v0
.end method

.method private ensureGrid()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 42
    iget-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mGrid:Lorg/holoeverywhere/widget/GridView;

    if-eqz v3, :cond_0

    .line 92
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/app/GridFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 46
    .local v2, "root":Landroid/view/View;
    if-nez v2, :cond_1

    .line 47
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Content view not yet created"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 49
    :cond_1
    instance-of v3, v2, Lorg/holoeverywhere/widget/GridView;

    if-eqz v3, :cond_4

    .line 50
    check-cast v2, Lorg/holoeverywhere/widget/GridView;

    .end local v2    # "root":Landroid/view/View;
    iput-object v2, p0, Lorg/holoeverywhere/app/GridFragment;->mGrid:Lorg/holoeverywhere/widget/GridView;

    .line 80
    :cond_2
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/holoeverywhere/app/GridFragment;->mGridShown:Z

    .line 81
    iget-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mGrid:Lorg/holoeverywhere/widget/GridView;

    iget-object v4, p0, Lorg/holoeverywhere/app/GridFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    iget-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_9

    .line 83
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 84
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 85
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/GridFragment;->setGridAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    :goto_2
    iget-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lorg/holoeverywhere/app/GridFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 52
    .restart local v2    # "root":Landroid/view/View;
    :cond_4
    sget v3, Lorg/holoeverywhere/R$id;->internalEmpty:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 54
    iget-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v3, :cond_5

    .line 55
    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mEmptyView:Landroid/view/View;

    .line 59
    :goto_3
    sget v3, Lorg/holoeverywhere/R$id;->progressContainer:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mProgressContainer:Landroid/view/View;

    .line 60
    sget v3, Lorg/holoeverywhere/R$id;->listContainer:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mGridContainer:Landroid/view/View;

    .line 61
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, "rawGridVIew":Landroid/view/View;
    instance-of v3, v1, Lorg/holoeverywhere/widget/GridView;

    if-nez v3, :cond_7

    .line 63
    if-nez v1, :cond_6

    .line 64
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Your content must have a GridVIew whose id attribute is \'android.R.id.list\'"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    .end local v1    # "rawGridVIew":Landroid/view/View;
    :cond_5
    iget-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 68
    .restart local v1    # "rawGridVIew":Landroid/view/View;
    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Content has view with id attribute \'android.R.id.list\' that is not a GridVIew class"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_7
    check-cast v1, Lorg/holoeverywhere/widget/GridView;

    .end local v1    # "rawGridVIew":Landroid/view/View;
    iput-object v1, p0, Lorg/holoeverywhere/app/GridFragment;->mGrid:Lorg/holoeverywhere/widget/GridView;

    .line 73
    iget-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_8

    .line 74
    iget-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mGrid:Lorg/holoeverywhere/widget/GridView;

    iget-object v4, p0, Lorg/holoeverywhere/app/GridFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/widget/GridView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 75
    :cond_8
    iget-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 76
    iget-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/holoeverywhere/app/GridFragment;->mEmptyText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mGrid:Lorg/holoeverywhere/widget/GridView;

    iget-object v4, p0, Lorg/holoeverywhere/app/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/widget/GridView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 87
    .end local v2    # "root":Landroid/view/View;
    :cond_9
    iget-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 88
    invoke-direct {p0, v5, v5}, Lorg/holoeverywhere/app/GridFragment;->setGridShown(ZZ)V

    goto :goto_2
.end method

.method private setGridShown(ZZ)V
    .locals 5
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 173
    invoke-direct {p0}, Lorg/holoeverywhere/app/GridFragment;->ensureGrid()V

    .line 174
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mProgressContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iget-boolean v0, p0, Lorg/holoeverywhere/app/GridFragment;->mGridShown:Z

    if-ne v0, p1, :cond_1

    .line 207
    :goto_0
    return-void

    .line 181
    :cond_1
    iput-boolean p1, p0, Lorg/holoeverywhere/app/GridFragment;->mGridShown:Z

    .line 182
    if-eqz p1, :cond_3

    .line 183
    if-eqz p2, :cond_2

    .line 184
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Lorg/holoeverywhere/app/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lorg/holoeverywhere/R$anim;->fade_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 186
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {p0}, Lorg/holoeverywhere/app/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lorg/holoeverywhere/R$anim;->fade_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 192
    :goto_1
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 190
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_1

    .line 195
    :cond_3
    if-eqz p2, :cond_4

    .line 196
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Lorg/holoeverywhere/app/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lorg/holoeverywhere/R$anim;->fade_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 198
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {p0}, Lorg/holoeverywhere/app/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lorg/holoeverywhere/R$anim;->fade_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 204
    :goto_2
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 201
    :cond_4
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 202
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_2
.end method


# virtual methods
.method protected getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getGridView()Lorg/holoeverywhere/widget/GridView;
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/holoeverywhere/app/GridFragment;->ensureGrid()V

    .line 100
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mGrid:Lorg/holoeverywhere/widget/GridView;

    return-object v0
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/holoeverywhere/app/GridFragment;->ensureGrid()V

    .line 109
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mGrid:Lorg/holoeverywhere/widget/GridView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/GridView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/holoeverywhere/app/GridFragment;->ensureGrid()V

    .line 114
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mGrid:Lorg/holoeverywhere/widget/GridView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/GridView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onCreateView(Lorg/holoeverywhere/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Lorg/holoeverywhere/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    sget v0, Lorg/holoeverywhere/R$layout;->grid_content:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/holoeverywhere/app/GridFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    iput-object v2, p0, Lorg/holoeverywhere/app/GridFragment;->mGrid:Lorg/holoeverywhere/widget/GridView;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/app/GridFragment;->mGridShown:Z

    .line 128
    iput-object v2, p0, Lorg/holoeverywhere/app/GridFragment;->mGridContainer:Landroid/view/View;

    iput-object v2, p0, Lorg/holoeverywhere/app/GridFragment;->mProgressContainer:Landroid/view/View;

    iput-object v2, p0, Lorg/holoeverywhere/app/GridFragment;->mEmptyView:Landroid/view/View;

    .line 129
    iput-object v2, p0, Lorg/holoeverywhere/app/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 130
    invoke-super {p0}, Lorg/holoeverywhere/app/Fragment;->onDestroyView()V

    .line 131
    return-void
.end method

.method public onGridItemClick(Lorg/holoeverywhere/widget/GridView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Lorg/holoeverywhere/widget/GridView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 134
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lorg/holoeverywhere/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 139
    invoke-direct {p0}, Lorg/holoeverywhere/app/GridFragment;->ensureGrid()V

    .line 140
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 143
    invoke-direct {p0}, Lorg/holoeverywhere/app/GridFragment;->ensureGrid()V

    .line 144
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mGrid:Lorg/holoeverywhere/widget/GridView;

    iget-object v1, p0, Lorg/holoeverywhere/app/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 152
    :cond_1
    iput-object p1, p0, Lorg/holoeverywhere/app/GridFragment;->mEmptyText:Ljava/lang/CharSequence;

    .line 153
    return-void
.end method

.method public setGridAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 156
    iget-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    move v0, v1

    .line 157
    .local v0, "hadAdapter":Z
    :goto_0
    iput-object p1, p0, Lorg/holoeverywhere/app/GridFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 158
    iget-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mGrid:Lorg/holoeverywhere/widget/GridView;

    if-eqz v3, :cond_1

    .line 159
    iget-object v3, p0, Lorg/holoeverywhere/app/GridFragment;->mGrid:Lorg/holoeverywhere/widget/GridView;

    invoke-virtual {v3, p1}, Lorg/holoeverywhere/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    iget-boolean v3, p0, Lorg/holoeverywhere/app/GridFragment;->mGridShown:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 163
    invoke-virtual {p0}, Lorg/holoeverywhere/app/GridFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v1, v2}, Lorg/holoeverywhere/app/GridFragment;->setGridShown(ZZ)V

    .line 166
    :cond_1
    return-void

    .end local v0    # "hadAdapter":Z
    :cond_2
    move v0, v2

    .line 156
    goto :goto_0
.end method

.method public setGridShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/app/GridFragment;->setGridShown(ZZ)V

    .line 170
    return-void
.end method

.method public setGridShownNoAnimation(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/app/GridFragment;->setGridShown(ZZ)V

    .line 211
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 214
    invoke-direct {p0}, Lorg/holoeverywhere/app/GridFragment;->ensureGrid()V

    .line 215
    iget-object v0, p0, Lorg/holoeverywhere/app/GridFragment;->mGrid:Lorg/holoeverywhere/widget/GridView;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/GridView;->setSelection(I)V

    .line 216
    return-void
.end method
