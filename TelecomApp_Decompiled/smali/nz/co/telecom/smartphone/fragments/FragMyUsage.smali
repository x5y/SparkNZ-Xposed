.class public Lnz/co/telecom/smartphone/fragments/FragMyUsage;
.super Lnz/co/telecom/smartphone/fragments/FragBase;
.source "FragMyUsage.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private globalView:Landroid/view/View;

.field private myUsageView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initData()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 49
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->localInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030025

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->globalView:Landroid/view/View;

    .line 50
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->globalView:Landroid/view/View;

    const v3, 0x7f0900a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->content_progressbar:Landroid/widget/RelativeLayout;

    .line 51
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->globalView:Landroid/view/View;

    const v3, 0x7f0900a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->content_no_data_error:Landroid/widget/RelativeLayout;

    .line 52
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->initData()Landroid/view/View;

    .line 54
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->localInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030026

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 55
    .local v0, "myUsageDisclaimer":Landroid/view/ViewGroup;
    const v2, 0x7f0900aa

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 56
    .local v1, "tcContainer":Landroid/view/ViewGroup;
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->myFooterView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->globalView:Landroid/view/View;

    const v3, 0x7f0900a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->myUsageView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    .line 59
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 60
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->myUsageView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v2, v4}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 64
    :goto_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->myUsageView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->myHeaderView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->addHeaderView(Landroid/view/View;)V

    .line 65
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->myUsageView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v2, v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->addFooterView(Landroid/view/View;)V

    .line 66
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->myUsageView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v2, v4}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setHeaderDividersEnabled(Z)V

    .line 67
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->myUsageView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v2, v4}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setFooterDividersEnabled(Z)V

    .line 69
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->globalView:Landroid/view/View;

    return-object v2

    .line 62
    :cond_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->myUsageView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setAreHeadersSticky(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method protected refreshPageDetails()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->refreshPageDetails()V

    .line 38
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->myUsageView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    new-instance v1, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-direct {v1, v2, v3}, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;-><init>(Landroid/support/v4/app/FragmentActivity;Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;)V

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->isPostPaid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->header_message_block_manage_extras_button:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v0, v4}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V

    .line 43
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    invoke-virtual {v0, v4}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->setCurrentNavigationMenuFragment(I)V

    .line 44
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->globalView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 45
    return-void
.end method
