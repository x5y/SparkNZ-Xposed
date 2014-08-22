.class public Lnz/co/telecom/smartphone/fragments/FragBuyExtra;
.super Lnz/co/telecom/smartphone/fragments/FragBase;
.source "FragBuyExtra.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/fragments/FragBuyExtra$APIServicesTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private buyExtraView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

.field private globalView:Landroid/view/View;

.field private mSort:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mSort:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "sort"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>(I)V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mSort:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mSort:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lnz/co/telecom/smartphone/fragments/FragBuyExtra;Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragBuyExtra;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->openBuyExtrasComponentFragment(Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;)V

    return-void
.end method

.method private openBuyExtrasComponentFragment(Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;)V
    .locals 6
    .param p1, "extrasCatalogueProductsDTO"    # Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    .prologue
    .line 224
    new-instance v2, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    const/16 v3, 0x1f

    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    invoke-direct {v2, v3, v4, p1}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;-><init>(ILnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;)V

    .line 225
    .local v2, "fragBuyExtraComponents":Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 226
    .local v1, "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "extrasTitle"

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v3, "extrasPrice"

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getPrice()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v3, "extrasId"

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v3, "buyextras:detail"

    invoke-static {v3, v1}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 230
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    .line 231
    .local v0, "activityNavigationDrawer":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->setCurrentNavigationMenuFragment(I)V

    .line 232
    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->switchContent(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    .line 233
    return-void
.end method


# virtual methods
.method protected getDTO()V
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra$APIServicesTask;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragBuyExtra$APIServicesTask;-><init>(Lnz/co/telecom/smartphone/fragments/FragBuyExtra;)V

    .line 72
    .local v0, "at":Lnz/co/telecom/smartphone/fragments/FragBuyExtra$APIServicesTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragBuyExtra$APIServicesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    return-void
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initData()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->localInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030020

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->globalView:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->globalView:Landroid/view/View;

    const v1, 0x7f090098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->content_progressbar:Landroid/widget/RelativeLayout;

    .line 178
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->globalView:Landroid/view/View;

    const v1, 0x7f090099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->content_no_data_error:Landroid/widget/RelativeLayout;

    .line 179
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->initData()Landroid/view/View;

    .line 181
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->globalView:Landroid/view/View;

    const v1, 0x7f090097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->buyExtraView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->buyExtraView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 187
    :goto_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->buyExtraView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->myHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->addHeaderView(Landroid/view/View;)V

    .line 189
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->localInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001d

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->myFooterView:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->myFooterView:Landroid/view/View;

    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragBuyExtra$1;

    invoke-direct {v1, p0}, Lnz/co/telecom/smartphone/fragments/FragBuyExtra$1;-><init>(Lnz/co/telecom/smartphone/fragments/FragBuyExtra;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->buyExtraView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->myFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->addFooterView(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->buyExtraView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setHeaderDividersEnabled(Z)V

    .line 198
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->buyExtraView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setFooterDividersEnabled(Z)V

    .line 200
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->buyExtraView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0, v4}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setChoiceMode(I)V

    .line 201
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->buyExtraView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragBuyExtra$2;

    invoke-direct {v1, p0}, Lnz/co/telecom/smartphone/fragments/FragBuyExtra$2;-><init>(Lnz/co/telecom/smartphone/fragments/FragBuyExtra;)V

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 213
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->myHeaderView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->globalView:Landroid/view/View;

    return-object v0

    .line 185
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->buyExtraView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0, v4}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setAreHeadersSticky(Z)V

    goto :goto_0
.end method

.method protected isDTOCached()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 126
    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->s_isLineExtendedCached:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->s_isLineProductCached:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->s_isExtrasCatalogueCached:Z

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 152
    :cond_1
    :goto_0
    return v0

    .line 130
    :cond_2
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getLineExtendedDTO()Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    move-result-object v2

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    .line 131
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getLineProductsDTO()Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    move-result-object v2

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mLineProductsDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    .line 132
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getExtrasCatalogueDTO()Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    move-result-object v2

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    .line 134
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    if-eqz v2, :cond_4

    .line 135
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->s_isLineExtendedCached:Z

    .line 140
    :goto_1
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mLineProductsDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    if-eqz v2, :cond_5

    .line 141
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->s_isLineProductCached:Z

    .line 146
    :goto_2
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mLineProductsDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    if-eqz v2, :cond_6

    .line 147
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->s_isExtrasCatalogueCached:Z

    .line 152
    :goto_3
    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->s_isLineExtendedCached:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->s_isLineProductCached:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->s_isExtrasCatalogueCached:Z

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 137
    :cond_4
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->s_isLineExtendedCached:Z

    goto :goto_1

    .line 143
    :cond_5
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->s_isLineProductCached:Z

    goto :goto_2

    .line 149
    :cond_6
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->s_isExtrasCatalogueCached:Z

    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    if-eqz p3, :cond_0

    .line 52
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mSort:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-string v0, "mSort"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mSort:Ljava/lang/String;

    .line 56
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnz/co/telecom/smartphone/fragments/FragBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->onResume()V

    .line 62
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 219
    invoke-super {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 220
    const-string v0, "mSort"

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mSort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method protected refreshPageDetails()V
    .locals 4

    .prologue
    .line 160
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mLineProductsDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    if-nez v1, :cond_1

    .line 161
    :cond_0
    const/16 v1, 0x203

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->createMessage(I)V

    .line 171
    :goto_0
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V

    .line 172
    return-void

    .line 163
    :cond_1
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->refreshPageDetails()V

    .line 164
    new-instance v0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->mSort:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;-><init>(Landroid/content/Context;Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;Ljava/lang/String;)V

    .line 165
    .local v0, "abe":Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->buyExtraView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v1, v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->notifyDataSetChanged()V

    .line 168
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->globalView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method
