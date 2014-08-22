.class public Lnz/co/telecom/smartphone/fragments/FragMyAccount;
.super Lnz/co/telecom/smartphone/fragments/FragBase;
.source "FragMyAccount.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/fragments/FragMyAccount$APIServicesTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private globalView:Landroid/view/View;

.field private myAccountView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->TAG:Ljava/lang/String;

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
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getDTO()V
    .locals 4

    .prologue
    .line 90
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragMyAccount$APIServicesTask;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragMyAccount$APIServicesTask;-><init>(Lnz/co/telecom/smartphone/fragments/FragMyAccount;)V

    .line 91
    .local v0, "at":Lnz/co/telecom/smartphone/fragments/FragMyAccount$APIServicesTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragMyAccount$APIServicesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    return-void
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initData()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 137
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->localInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030024

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->globalView:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->globalView:Landroid/view/View;

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->content_progressbar:Landroid/widget/RelativeLayout;

    .line 139
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->globalView:Landroid/view/View;

    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->content_no_data_error:Landroid/widget/RelativeLayout;

    .line 140
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->initData()Landroid/view/View;

    .line 142
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->globalView:Landroid/view/View;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->myAccountView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->myAccountView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 150
    :goto_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->myAccountView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->myHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->addHeaderView(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->myAccountView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setHeaderDividersEnabled(Z)V

    .line 153
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->localInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001d

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->myFooterView:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->myAccountView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->myFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->addFooterView(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->myAccountView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setHeaderDividersEnabled(Z)V

    .line 157
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->myAccountView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setFooterDividersEnabled(Z)V

    .line 159
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->globalView:Landroid/view/View;

    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->myAccountView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setAreHeadersSticky(Z)V

    goto :goto_0
.end method

.method protected isDTOCached()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 97
    sget-boolean v1, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->s_isMyAccountCached:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->s_isLineExtendedCached:Z

    if-nez v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getMyAccountDTO()Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    .line 102
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getLineExtendedDTO()Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    .line 104
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    if-eqz v1, :cond_2

    .line 105
    sput-boolean v2, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->s_isMyAccountCached:Z

    .line 110
    :goto_1
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    if-eqz v1, :cond_3

    .line 111
    sput-boolean v2, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->s_isLineExtendedCached:Z

    .line 116
    :goto_2
    sget-boolean v0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->s_isMyAccountCached:Z

    goto :goto_0

    .line 107
    :cond_2
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->s_isMyAccountCached:Z

    goto :goto_1

    .line 113
    :cond_3
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->s_isLineExtendedCached:Z

    goto :goto_2
.end method

.method protected refreshPageDetails()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    if-nez v0, :cond_1

    .line 125
    :cond_0
    const/16 v0, 0x203

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->createMessage(I)V

    .line 132
    :goto_0
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V

    .line 133
    return-void

    .line 127
    :cond_1
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->refreshPageDetails()V

    .line 128
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->myAccountView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    new-instance v1, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    invoke-direct {v1, p0, v2}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;-><init>(Lnz/co/telecom/smartphone/fragments/FragMyAccount;Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;)V

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->globalView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method
