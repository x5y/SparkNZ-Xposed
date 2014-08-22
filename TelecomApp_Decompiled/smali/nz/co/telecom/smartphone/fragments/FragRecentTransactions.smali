.class public Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;
.super Lnz/co/telecom/smartphone/fragments/FragBase;
.source "FragRecentTransactions.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/fragments/FragRecentTransactions$APIServicesTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private globalView:Landroid/view/View;

.field private recentTransactionsView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>(I)V

    .line 34
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getDTO()V
    .locals 4

    .prologue
    .line 89
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions$APIServicesTask;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions$APIServicesTask;-><init>(Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;)V

    .line 90
    .local v0, "at":Lnz/co/telecom/smartphone/fragments/FragRecentTransactions$APIServicesTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions$APIServicesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    return-void
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initData()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->localInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03002a

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->globalView:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->globalView:Landroid/view/View;

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->content_progressbar:Landroid/widget/RelativeLayout;

    .line 138
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->globalView:Landroid/view/View;

    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->content_no_data_error:Landroid/widget/RelativeLayout;

    .line 139
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->initData()Landroid/view/View;

    .line 140
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->globalView:Landroid/view/View;

    const v1, 0x7f0900c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->recentTransactionsView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->recentTransactionsView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 146
    :goto_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->recentTransactionsView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->myHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->addHeaderView(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->localInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001d

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->myFooterView:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->myFooterView:Landroid/view/View;

    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions$1;

    invoke-direct {v1, p0}, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions$1;-><init>(Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->recentTransactionsView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->myFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->addFooterView(Landroid/view/View;)V

    .line 155
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->recentTransactionsView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setHeaderDividersEnabled(Z)V

    .line 156
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->recentTransactionsView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setFooterDividersEnabled(Z)V

    .line 158
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->globalView:Landroid/view/View;

    return-object v0

    .line 144
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->recentTransactionsView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setAreHeadersSticky(Z)V

    goto :goto_0
.end method

.method protected isDTOCached()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->s_isLineExtendedCached:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->s_isOrdersListCached:Z

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 115
    :cond_1
    :goto_0
    return v0

    .line 100
    :cond_2
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getLineExtendedDTO()Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    move-result-object v2

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    .line 101
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getOrdersListDTO()Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    move-result-object v2

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mOrdersListDTO:Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    .line 103
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->mOrdersListDTO:Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    if-eqz v2, :cond_4

    .line 104
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->s_isLineExtendedCached:Z

    .line 109
    :goto_1
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->mOrdersListDTO:Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    if-eqz v2, :cond_5

    .line 110
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->s_isOrdersListCached:Z

    .line 115
    :goto_2
    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->s_isLineExtendedCached:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->s_isOrdersListCached:Z

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 106
    :cond_4
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->s_isLineExtendedCached:Z

    goto :goto_1

    .line 112
    :cond_5
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->s_isOrdersListCached:Z

    goto :goto_2
.end method

.method protected refreshPageDetails()V
    .locals 5

    .prologue
    .line 123
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mOrdersListDTO:Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    if-nez v0, :cond_1

    .line 124
    :cond_0
    const/16 v0, 0x203

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->createMessage(I)V

    .line 131
    :goto_0
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V

    .line 132
    return-void

    .line 126
    :cond_1
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->refreshPageDetails()V

    .line 127
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->recentTransactionsView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    new-instance v1, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mOrdersListDTO:Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-direct {v1, v2, v3, v4}, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;-><init>(Landroid/support/v4/app/FragmentActivity;Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;)V

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->globalView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method
