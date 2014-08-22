.class public Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;
.super Lnz/co/telecom/smartphone/fragments/FragBase;
.source "FragAlertsAndNotifications.java"

# interfaces
.implements Lnz/co/telecom/smartphone/fragments/AlertUpdateRequestHandler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alertsAndNotificationsView:Landroid/widget/ListView;

.field private alertsMessagesDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;

.field private alternateMobileViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private globalView:Landroid/view/View;

.field protected mAlertsAndNotificationsController:Lnz/co/telecom/smartphone/controller/AlertsAndNotificationsController;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private termsFooterView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsMessagesDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>(I)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsMessagesDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;

    .line 75
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;)Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;

    .prologue
    .line 50
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsMessagesDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;

    return-object p1
.end method

.method static synthetic access$200(Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;Lorg/holoeverywhere/widget/Switch;Z)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;
    .param p1, "x1"    # Lorg/holoeverywhere/widget/Switch;
    .param p2, "x2"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->handleAlertUpdateResponse(Lorg/holoeverywhere/widget/Switch;Z)V

    return-void
.end method

.method static synthetic access$300(Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;
    .param p1, "x1"    # Landroid/widget/Button;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->handleMDNUpdateResponse(Landroid/widget/Button;Ljava/lang/String;)V

    return-void
.end method

.method private displayDialog()V
    .locals 7

    .prologue
    .line 356
    const/4 v3, 0x0

    .line 357
    .local v3, "title":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .local v2, "message":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsMessagesDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsValuesDTO;

    .line 359
    .local v0, "alertMessage":Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsValuesDTO;
    if-nez v3, :cond_0

    .line 360
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsValuesDTO;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 365
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsValuesDTO;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 362
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsValuesDTO;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 368
    .end local v0    # "alertMessage":Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsValuesDTO;
    :cond_1
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsMessagesDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lnz/co/telecom/smartphone/fragments/OnDismiss;

    invoke-direct {v6}, Lnz/co/telecom/smartphone/fragments/OnDismiss;-><init>()V

    invoke-virtual {p0, v4, v3, v5, v6}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnz/co/telecom/smartphone/fragments/OnDismiss;)V

    .line 369
    return-void
.end method

.method private getOurAdapter()Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;
    .locals 2

    .prologue
    .line 308
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsAndNotificationsView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 309
    .local v0, "adapter":Landroid/widget/Adapter;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;

    if-nez v1, :cond_1

    .line 310
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 311
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .restart local v0    # "adapter":Landroid/widget/Adapter;
    goto :goto_0

    .line 313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 317
    :cond_1
    check-cast v0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    return-object v0
.end method

.method private handleAlertUpdateResponse(Lorg/holoeverywhere/widget/Switch;Z)V
    .locals 4
    .param p1, "switchWidget"    # Lorg/holoeverywhere/widget/Switch;
    .param p2, "isCopyTo"    # Z

    .prologue
    .line 321
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V

    .line 323
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->content_progressbar:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 325
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsMessagesDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;

    if-eqz v2, :cond_0

    const-string v2, "ERROR"

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsMessagesDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    :cond_0
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->getOurAdapter()Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;

    move-result-object v1

    .line 327
    .local v1, "alertsAndNotifications":Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;
    invoke-virtual {v1, p1, p2}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->resetUIWithAlert(Lorg/holoeverywhere/widget/Switch;Z)V

    .line 328
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->displayDialog()V

    .line 337
    .end local v1    # "alertsAndNotifications":Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;
    :cond_1
    :goto_0
    return-void

    .line 331
    :cond_2
    if-eqz p2, :cond_1

    .line 332
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->getOurAdapter()Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;

    move-result-object v0

    .line 333
    .local v0, "adapter":Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;
    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mdnCleared(Lorg/holoeverywhere/widget/Switch;)V

    goto :goto_0
.end method

.method private handleMDNUpdateResponse(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 3
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "mdn"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V

    .line 342
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->content_progressbar:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 343
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->displayDialog()V

    .line 344
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsMessagesDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;

    if-eqz v1, :cond_0

    const-string v1, "ERROR"

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsMessagesDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->getOurAdapter()Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;

    move-result-object v0

    .line 346
    .local v0, "adapter":Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;
    invoke-virtual {v0, p1, p2}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mdnSaved(Landroid/widget/Button;Ljava/lang/String;)V

    .line 348
    .end local v0    # "adapter":Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getDTO()V
    .locals 4

    .prologue
    .line 131
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;-><init>(Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;)V

    .line 132
    .local v0, "at":Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    return-void
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsAndNotificationsView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected initData()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 210
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->localInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001f

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->globalView:Landroid/view/View;

    .line 211
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->globalView:Landroid/view/View;

    const v1, 0x7f090095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->content_progressbar:Landroid/widget/RelativeLayout;

    .line 212
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->globalView:Landroid/view/View;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->content_no_data_error:Landroid/widget/RelativeLayout;

    .line 213
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->initData()Landroid/view/View;

    .line 215
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->globalView:Landroid/view/View;

    const v1, 0x7f090094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsAndNotificationsView:Landroid/widget/ListView;

    .line 217
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->localInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001d

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->termsFooterView:Landroid/view/View;

    .line 218
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->termsFooterView:Landroid/view/View;

    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$1;

    invoke-direct {v1, p0}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$1;-><init>(Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsAndNotificationsView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 226
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsAndNotificationsView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 228
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsAndNotificationsView:Landroid/widget/ListView;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->myHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 229
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsAndNotificationsView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 231
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsAndNotificationsView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 232
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsAndNotificationsView:Landroid/widget/ListView;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 234
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->globalView:Landroid/view/View;

    return-object v0
.end method

.method protected isDTOCached()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 138
    sget-boolean v1, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->s_isAlertsAndNotificationsCached:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->s_isLineExtendedCached:Z

    if-nez v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getAlertsAndNotificationsDTO()Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mAlertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    .line 143
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getLineExtendedDTO()Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    .line 145
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->mAlertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    if-eqz v1, :cond_2

    .line 146
    sput-boolean v2, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->s_isAlertsAndNotificationsCached:Z

    .line 151
    :goto_1
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    if-eqz v1, :cond_3

    .line 152
    sput-boolean v2, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->s_isLineExtendedCached:Z

    .line 157
    :goto_2
    sget-boolean v0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->s_isAlertsAndNotificationsCached:Z

    goto :goto_0

    .line 148
    :cond_2
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->s_isAlertsAndNotificationsCached:Z

    goto :goto_1

    .line 154
    :cond_3
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->s_isLineExtendedCached:Z

    goto :goto_2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->hideSoftKeyBoard()V

    .line 374
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->onPause()V

    .line 375
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lnz/co/telecom/smartphone/fragments/FragBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public processAlertUpdate(Landroid/widget/Button;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isOn"    # Z
    .param p4, "mdn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 275
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V

    .line 277
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;-><init>(Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;ZLjava/lang/String;Ljava/lang/String;Landroid/widget/Button;)V

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$3;->start()V

    .line 302
    return-void
.end method

.method public processAlertUpdate(Lorg/holoeverywhere/widget/Switch;Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "switchWidget"    # Lorg/holoeverywhere/widget/Switch;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isOn"    # Z
    .param p4, "isCopyTo"    # Z

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 244
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V

    .line 246
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$2;

    move-object v1, p0

    move v2, p3

    move-object v3, p2

    move-object v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$2;-><init>(Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;ZLjava/lang/String;Lorg/holoeverywhere/widget/Switch;Z)V

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$2;->start()V

    .line 270
    return-void
.end method

.method protected refreshPageDetails()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 165
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsAndNotificationsView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alternateMobileViews:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 167
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alternateMobileViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 168
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsAndNotificationsView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    .line 171
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsAndNotificationsView:Landroid/widget/ListView;

    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->termsFooterView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 172
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mAlertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    if-nez v4, :cond_2

    .line 173
    :cond_1
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsAndNotificationsView:Landroid/widget/ListView;

    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->termsFooterView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 174
    iput-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alternateMobileViews:Ljava/util/List;

    .line 175
    const/16 v4, 0x203

    invoke-virtual {p0, v4}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->createMessage(I)V

    .line 203
    :goto_1
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 204
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V

    .line 205
    return-void

    .line 177
    :cond_2
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->refreshPageDetails()V

    .line 178
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->globalView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 180
    new-instance v0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;

    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mAlertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    invoke-direct {v0, p0, v4, p0}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;-><init>(Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;Lnz/co/telecom/smartphone/fragments/AlertUpdateRequestHandler;)V

    .line 192
    .local v0, "adapter":Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alternateMobileViews:Ljava/util/List;

    .line 193
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->mAlertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;->getCopyTo()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 194
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->getCount()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0, v4, v6, v6}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 195
    .restart local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsAndNotificationsView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 196
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alternateMobileViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 198
    .end local v3    # "view":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsAndNotificationsView:Landroid/widget/ListView;

    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->termsFooterView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 200
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->alertsAndNotificationsView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method
