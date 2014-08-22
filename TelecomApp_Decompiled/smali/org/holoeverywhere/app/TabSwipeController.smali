.class public abstract Lorg/holoeverywhere/app/TabSwipeController;
.super Ljava/lang/Object;
.source "TabSwipeController.java"

# interfaces
.implements Lorg/holoeverywhere/app/TabSwipeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/app/TabSwipeController$TabSwipeAdapter;,
        Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/holoeverywhere/app/TabSwipeInterface",
        "<",
        "Lorg/holoeverywhere/app/TabSwipeController$TabInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActionBar:Lcom/actionbarsherlock/app/ActionBar;

.field private mAdapter:Lorg/holoeverywhere/app/TabSwipeController$TabSwipeAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mOnTabSelectedListener:Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;

.field private mPrevNavigationMode:I

.field private mSmoothScroll:Z

.field private mSwipeEnabled:Z

.field private mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/holoeverywhere/app/TabSwipeController$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Lorg/holoeverywhere/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/actionbarsherlock/app/ActionBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "actionBar"    # Lcom/actionbarsherlock/app/ActionBar;

    .prologue
    const/4 v1, 0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mPrevNavigationMode:I

    .line 115
    iput-boolean v1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mSmoothScroll:Z

    .line 116
    iput-boolean v1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mSwipeEnabled:Z

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mTabs:Ljava/util/List;

    .line 122
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 125
    :cond_1
    iput-object p1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lorg/holoeverywhere/app/TabSwipeController;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 127
    iput-object p3, p0, Lorg/holoeverywhere/app/TabSwipeController;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    .line 129
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getTabCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TabSwipeController doesn\'t support multiplue tab controllers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getNavigationMode()I

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mPrevNavigationMode:I

    .line 135
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lorg/holoeverywhere/app/TabSwipeController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/TabSwipeController;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mTabs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lorg/holoeverywhere/app/TabSwipeController;I)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/app/TabSwipeController;
    .param p1, "x1"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->dispatchTabSelected(I)V

    return-void
.end method

.method private dispatchTabSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "notify":Z
    iget-object v1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mViewPager:Lorg/holoeverywhere/widget/ViewPager;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 200
    iget-object v1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mViewPager:Lorg/holoeverywhere/widget/ViewPager;

    iget-boolean v2, p0, Lorg/holoeverywhere/app/TabSwipeController;->mSmoothScroll:Z

    invoke-virtual {v1, p1, v2}, Lorg/holoeverywhere/widget/ViewPager;->setCurrentItem(IZ)V

    .line 201
    const/4 v0, 0x1

    .line 203
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 204
    iget-object v1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v2, p0, Lorg/holoeverywhere/app/TabSwipeController;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v2, p1}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 205
    const/4 v0, 0x1

    .line 207
    :cond_1
    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->onTabSelected(I)V

    .line 210
    :cond_2
    return-void
.end method

.method private notifyChanged()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mAdapter:Lorg/holoeverywhere/app/TabSwipeController$TabSwipeAdapter;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mAdapter:Lorg/holoeverywhere/app/TabSwipeController$TabSwipeAdapter;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/TabSwipeController$TabSwipeAdapter;->notifyDataSetChanged()V

    .line 238
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(ILjava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 2
    .param p1, "title"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/Fragment;",
            ">;)",
            "Lorg/holoeverywhere/app/TabSwipeController$TabInfo;"
        }
    .end annotation

    .prologue
    .line 155
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lorg/holoeverywhere/app/TabSwipeController;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public addTab(ILjava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "title"    # I
    .param p3, "fragmentArguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lorg/holoeverywhere/app/TabSwipeController$TabInfo;"
        }
    .end annotation

    .prologue
    .line 161
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/holoeverywhere/app/TabSwipeController;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public addTab(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/Fragment;",
            ">;)",
            "Lorg/holoeverywhere/app/TabSwipeController$TabInfo;"
        }
    .end annotation

    .prologue
    .line 140
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/holoeverywhere/app/TabSwipeController;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public addTab(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p3, "fragmentArguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lorg/holoeverywhere/app/TabSwipeController$TabInfo;"
        }
    .end annotation

    .prologue
    .line 146
    .local p2, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/Fragment;>;"
    new-instance v0, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    invoke-direct {v0}, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;-><init>()V

    .line 147
    .local v0, "info":Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    # setter for: Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->mTitle:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->access$402(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 148
    # setter for: Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->mFragmentClass:Ljava/lang/Class;
    invoke-static {v0, p2}, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->access$102(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;Ljava/lang/Class;)Ljava/lang/Class;

    .line 149
    # setter for: Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->mFragmentArguments:Landroid/os/Bundle;
    invoke-static {v0, p3}, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->access$202(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 150
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/TabSwipeController;->addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v1

    return-object v1
.end method

.method public addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 2
    .param p1, "tabInfo"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->makeActionBarTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 168
    invoke-direct {p0}, Lorg/holoeverywhere/app/TabSwipeController;->notifyChanged()V

    .line 169
    return-object p1
.end method

.method public addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 2
    .param p1, "tabInfo"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .param p2, "position"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mTabs:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->makeActionBarTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;I)V

    .line 176
    invoke-direct {p0}, Lorg/holoeverywhere/app/TabSwipeController;->notifyChanged()V

    .line 177
    return-object p1
.end method

.method public bridge synthetic addTab(ILjava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Class;

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/app/TabSwipeController;->addTab(ILjava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(ILjava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lorg/holoeverywhere/app/TabSwipeController;->addTab(ILjava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Ljava/lang/Class;

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/app/TabSwipeController;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lorg/holoeverywhere/app/TabSwipeController;->addTab(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;

    .prologue
    .line 21
    check-cast p1, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .end local p1    # "x0":Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTab(Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;I)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .param p2, "x1"    # I

    .prologue
    .line 21
    check-cast p1, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .end local p1    # "x0":Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/app/TabSwipeController;->addTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lorg/holoeverywhere/widget/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Lorg/holoeverywhere/widget/ViewPager;

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mViewPager:Lorg/holoeverywhere/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mViewPager:Lorg/holoeverywhere/widget/ViewPager;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 183
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mViewPager:Lorg/holoeverywhere/widget/ViewPager;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 185
    :cond_0
    iput-object p1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mViewPager:Lorg/holoeverywhere/widget/ViewPager;

    .line 186
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mViewPager:Lorg/holoeverywhere/widget/ViewPager;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mAdapter:Lorg/holoeverywhere/app/TabSwipeController$TabSwipeAdapter;

    if-nez v0, :cond_1

    .line 188
    new-instance v0, Lorg/holoeverywhere/app/TabSwipeController$TabSwipeAdapter;

    iget-object v1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-direct {v0, p0, v1}, Lorg/holoeverywhere/app/TabSwipeController$TabSwipeAdapter;-><init>(Lorg/holoeverywhere/app/TabSwipeController;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mAdapter:Lorg/holoeverywhere/app/TabSwipeController$TabSwipeAdapter;

    .line 190
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeController;->reloadTabs()V

    .line 191
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mViewPager:Lorg/holoeverywhere/widget/ViewPager;

    iget-object v1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mAdapter:Lorg/holoeverywhere/app/TabSwipeController$TabSwipeAdapter;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 192
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mViewPager:Lorg/holoeverywhere/widget/ViewPager;

    iget-object v1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mAdapter:Lorg/holoeverywhere/app/TabSwipeController$TabSwipeAdapter;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 193
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mViewPager:Lorg/holoeverywhere/widget/ViewPager;

    iget-boolean v1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mSwipeEnabled:Z

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/ViewPager;->setSwipeEnabled(Z)V

    .line 195
    :cond_2
    return-void
.end method

.method public getOnTabSelectedListener()Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mOnTabSelectedListener:Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;

    return-object v0
.end method

.method public isSmoothScroll()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mSmoothScroll:Z

    return v0
.end method

.method public isSwipeEnabled()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mSwipeEnabled:Z

    return v0
.end method

.method protected makeActionBarTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 2
    .param p1, "tabInfo"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .prologue
    .line 228
    iget-object v1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v0

    .line 229
    .local v0, "tab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    # getter for: Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->mTitle:Ljava/lang/CharSequence;
    invoke-static {p1}, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->access$400(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 230
    iget-object v1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mAdapter:Lorg/holoeverywhere/app/TabSwipeController$TabSwipeAdapter;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 231
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->removeAllTabs()V

    .line 242
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    iget v1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mPrevNavigationMode:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 243
    return-void
.end method

.method protected abstract onHandleTabs()V
.end method

.method public onTabSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mOnTabSelectedListener:Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mOnTabSelectedListener:Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;

    invoke-interface {v0, p1}, Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;->onTabSelected(I)V

    .line 251
    :cond_0
    return-void
.end method

.method public reloadTabs()V
    .locals 0

    .prologue
    .line 255
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeController;->removeAllTabs()V

    .line 256
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TabSwipeController;->onHandleTabs()V

    .line 257
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->removeAllTabs()V

    .line 262
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 263
    invoke-direct {p0}, Lorg/holoeverywhere/app/TabSwipeController;->notifyChanged()V

    .line 264
    return-void
.end method

.method public removeTab(I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 268
    iget-object v1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mTabs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .line 269
    .local v0, "tabInfo":Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    iget-object v1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1, p1}, Lcom/actionbarsherlock/app/ActionBar;->removeTabAt(I)V

    .line 270
    invoke-direct {p0}, Lorg/holoeverywhere/app/TabSwipeController;->notifyChanged()V

    .line 271
    return-object v0
.end method

.method public removeTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    .locals 2
    .param p1, "tabInfo"    # Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .prologue
    .line 276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mTabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 277
    iget-object v1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mTabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 278
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/TabSwipeController;->removeTab(I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object p1

    .line 281
    .end local p1    # "tabInfo":Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    :cond_0
    return-object p1

    .line 276
    .restart local p1    # "tabInfo":Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic removeTab(I)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->removeTab(I)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTab(Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;)Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    .locals 1
    .param p1, "x0"    # Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;

    .prologue
    .line 21
    check-cast p1, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .end local p1    # "x0":Lorg/holoeverywhere/app/TabSwipeInterface$ITabInfo;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->removeTab(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentTab(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 286
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mTabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/holoeverywhere/app/TabSwipeController;->dispatchTabSelected(I)V

    .line 287
    return-void
.end method

.method public setOnTabSelectedListener(Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;)V
    .locals 0
    .param p1, "onTabSelectedListener"    # Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;

    .prologue
    .line 291
    iput-object p1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mOnTabSelectedListener:Lorg/holoeverywhere/app/TabSwipeInterface$OnTabSelectedListener;

    .line 292
    return-void
.end method

.method public setSmoothScroll(Z)V
    .locals 0
    .param p1, "smoothScroll"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mSmoothScroll:Z

    .line 300
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 1
    .param p1, "swipeEnabled"    # Z

    .prologue
    .line 304
    iget-boolean v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mSwipeEnabled:Z

    if-ne v0, p1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iput-boolean p1, p0, Lorg/holoeverywhere/app/TabSwipeController;->mSwipeEnabled:Z

    .line 308
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mViewPager:Lorg/holoeverywhere/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController;->mViewPager:Lorg/holoeverywhere/widget/ViewPager;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ViewPager;->setSwipeEnabled(Z)V

    goto :goto_0
.end method
