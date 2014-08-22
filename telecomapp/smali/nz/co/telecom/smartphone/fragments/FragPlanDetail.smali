.class public Lnz/co/telecom/smartphone/fragments/FragPlanDetail;
.super Lnz/co/telecom/smartphone/fragments/FragBase;
.source "FragPlanDetail.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment",
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/fragments/FragPlanDetail$APIServicesTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private globalView:Landroid/view/View;

.field mLineExtendedUsageMetersDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;

.field private planDetailsView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->mLineExtendedUsageMetersDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>(I)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->mLineExtendedUsageMetersDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;

    .line 36
    return-void
.end method

.method public constructor <init>(ILnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "lineExtendedUsageMetersDTO"    # Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>(I)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->mLineExtendedUsageMetersDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;

    .line 40
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in constructor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->getUsageType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iput-object p2, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->mLineExtendedUsageMetersDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;

    .line 42
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getDTO()V
    .locals 4

    .prologue
    .line 51
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail$APIServicesTask;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragPlanDetail$APIServicesTask;-><init>(Lnz/co/telecom/smartphone/fragments/FragPlanDetail;)V

    .line 52
    .local v0, "at":Lnz/co/telecom/smartphone/fragments/FragPlanDetail$APIServicesTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragPlanDetail$APIServicesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 53
    return-void
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initData()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->localInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030029

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->globalView:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->globalView:Landroid/view/View;

    const v1, 0x7f0900c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->content_progressbar:Landroid/widget/RelativeLayout;

    .line 144
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->globalView:Landroid/view/View;

    const v1, 0x7f0900c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->content_no_data_error:Landroid/widget/RelativeLayout;

    .line 145
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->initData()Landroid/view/View;

    .line 147
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->globalView:Landroid/view/View;

    const v1, 0x7f0900c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->planDetailsView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->planDetailsView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 153
    :goto_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->planDetailsView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->myHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->addHeaderView(Landroid/view/View;)V

    .line 155
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->planDetailsView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->myFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->addFooterView(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->planDetailsView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setHeaderDividersEnabled(Z)V

    .line 157
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->planDetailsView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setFooterDividersEnabled(Z)V

    .line 158
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->myHeaderView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->globalView:Landroid/view/View;

    return-object v0

    .line 151
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->planDetailsView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setAreHeadersSticky(Z)V

    goto :goto_0
.end method

.method protected isDTOCached()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->s_isLineExtendedCached:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->s_isLineProductCached:Z

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 123
    :cond_1
    :goto_0
    return v0

    .line 108
    :cond_2
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getLineExtendedDTO()Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    move-result-object v2

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    .line 109
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getLineProductsDTO()Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    move-result-object v2

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->mLineProductsDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    .line 111
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    if-eqz v2, :cond_4

    .line 112
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->s_isLineExtendedCached:Z

    .line 117
    :goto_1
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->mLineProductsDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    if-eqz v2, :cond_5

    .line 118
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->s_isLineProductCached:Z

    .line 123
    :goto_2
    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->s_isLineExtendedCached:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->s_isLineProductCached:Z

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 114
    :cond_4
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->s_isLineExtendedCached:Z

    goto :goto_1

    .line 120
    :cond_5
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->s_isLineProductCached:Z

    goto :goto_2
.end method

.method protected refreshPageDetails()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 128
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->refreshPageDetails()V

    .line 129
    new-instance v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineProductsDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->mLineExtendedUsageMetersDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;

    invoke-direct {v0, v1, p0, v2, v3}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;-><init>(Landroid/content/Context;Lnz/co/telecom/smartphone/fragments/FragPlanDetail;Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;)V

    .line 131
    .local v0, "ape":Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->planDetailsView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v1, v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->getDefaultSelectedId()I

    move-result v1

    if-le v1, v5, :cond_0

    .line 133
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->planDetailsView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->getDefaultSelectedId()I

    move-result v2

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setSelectionFromTop(II)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    invoke-virtual {v1, v5}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V

    .line 136
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->globalView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 138
    return-void
.end method
