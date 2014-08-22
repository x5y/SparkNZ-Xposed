.class public abstract Lnz/co/telecom/smartphone/fragments/FragBase;
.super Lroboguice/fragment/RoboFragment;
.source "FragBase.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/fragments/FragBase$MyHandler;,
        Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field protected static s_isAccountInfoCached:Z

.field protected static s_isAlertsAndNotificationsCached:Z

.field protected static s_isExtrasCatalogueCached:Z

.field protected static s_isLineExtendedCached:Z

.field protected static s_isLineProductCached:Z

.field protected static s_isMyAccountCached:Z

.field protected static s_isOrdersListCached:Z

.field protected static s_isRecentActivityCached:Z


# instance fields
.field protected content_no_data_error:Landroid/widget/RelativeLayout;

.field protected content_progressbar:Landroid/widget/RelativeLayout;

.field protected currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

.field private debug:Z

.field protected header_message_block_all_messages_layout:Landroid/widget/RelativeLayout;

.field protected header_message_block_allocation_expiry_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field protected header_message_block_as_at_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field protected header_message_block_linear_all_messages_layout:Landroid/widget/LinearLayout;

.field protected header_message_block_manage_extras_button:Lnz/co/telecom/smartphone/widget/TMYButton;

.field protected header_message_block_money:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field protected header_message_block_my_number:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

.field protected header_message_block_page_header:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

.field protected header_message_block_phone_no:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field protected header_message_block_postpaid_left_layout:Landroid/widget/RelativeLayout;

.field protected header_message_block_postpaid_right_layout:Landroid/widget/RelativeLayout;

.field protected header_message_block_prepaid_center_layout:Landroid/widget/RelativeLayout;

.field protected header_message_block_prepaid_left_layout:Landroid/widget/RelativeLayout;

.field protected header_message_block_prepaid_right_layout:Landroid/widget/RelativeLayout;

.field protected header_message_block_topup_button:Lnz/co/telecom/smartphone/widget/TMYButton;

.field protected header_message_block_your_balance:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

.field protected localInflater:Landroid/view/LayoutInflater;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mAccountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

.field protected mAlertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

.field protected mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

.field protected mHandler:Landroid/os/Handler;

.field protected mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

.field protected mLineProductsDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

.field protected mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

.field protected mOrdersListDTO:Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

.field protected mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

.field protected mPos:I

.field protected mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

.field protected mScrollState:I

.field protected myFooterView:Landroid/view/View;

.field protected myHeaderView:Landroid/view/View;

.field protected noDataErrorTryAgainBtn:Lnz/co/telecom/smartphone/widget/TMYButton;

.field protected no_data_error_IV:Landroid/widget/ImageView;

.field protected no_data_error_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field protected no_data_error_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

.field protected no_data_icons_layout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 252
    const-class v0, Lnz/co/telecom/smartphone/fragments/FragBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/fragments/FragBase;->TAG:Ljava/lang/String;

    .line 299
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineExtendedCached:Z

    .line 300
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineProductCached:Z

    .line 301
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isExtrasCatalogueCached:Z

    .line 302
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isOrdersListCached:Z

    .line 303
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isAccountInfoCached:Z

    .line 304
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isAlertsAndNotificationsCached:Z

    .line 305
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isRecentActivityCached:Z

    .line 306
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isMyAccountCached:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 315
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    .line 254
    iput-boolean v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->debug:Z

    .line 255
    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mScrollState:I

    .line 256
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mPos:I

    .line 316
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    const/4 v0, 0x0

    .line 318
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    .line 254
    iput-boolean v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->debug:Z

    .line 255
    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mScrollState:I

    .line 256
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mPos:I

    .line 319
    iput p1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mPos:I

    .line 320
    return-void
.end method

.method static synthetic access$000(Lnz/co/telecom/smartphone/fragments/FragBase;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragBase;

    .prologue
    .line 57
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->debug:Z

    return v0
.end method

.method private initializeHandler()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragBase$MyHandler;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragBase$MyHandler;-><init>(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mHandler:Landroid/os/Handler;

    .line 449
    :cond_0
    return-void
.end method

.method public static requestRefreshAll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 390
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineExtendedCached:Z

    .line 391
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineProductCached:Z

    .line 392
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isExtrasCatalogueCached:Z

    .line 393
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isOrdersListCached:Z

    .line 394
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isAccountInfoCached:Z

    .line 395
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isAlertsAndNotificationsCached:Z

    .line 396
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isRecentActivityCached:Z

    .line 397
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isMyAccountCached:Z

    .line 398
    return-void
.end method

.method public static requestRefreshForExtrasBuyPostPaid()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 413
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineExtendedCached:Z

    .line 414
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineProductCached:Z

    .line 415
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isExtrasCatalogueCached:Z

    .line 416
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isOrdersListCached:Z

    .line 417
    return-void
.end method

.method public static requestRefreshForExtrasBuyPrePaid()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 424
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineExtendedCached:Z

    .line 425
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineProductCached:Z

    .line 426
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isExtrasCatalogueCached:Z

    .line 427
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isOrdersListCached:Z

    .line 428
    return-void
.end method

.method public static requestRefreshForExtrasUpdate()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 404
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineProductCached:Z

    .line 405
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isOrdersListCached:Z

    .line 406
    return-void
.end method

.method public static requestRefreshForPayBillCreditCard()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 441
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineExtendedCached:Z

    .line 442
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isAccountInfoCached:Z

    .line 443
    return-void
.end method

.method public static requestRefreshForTopupCreditCard()V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineExtendedCached:Z

    .line 435
    return-void
.end method


# virtual methods
.method protected createMessage(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 452
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 453
    .local v0, "m":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 454
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 455
    return-void
.end method

.method protected getDTO()V
    .locals 4

    .prologue
    .line 368
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;-><init>(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    .line 369
    .local v0, "at":Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 370
    return-void
.end method

.method public getFooterView()Landroid/view/View;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->myHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public abstract getFragmentTag()Ljava/lang/String;
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->myHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mPos:I

    return v0
.end method

.method protected initData()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 610
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->content_no_data_error:Landroid/widget/RelativeLayout;

    const v2, 0x7f09011d

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->no_data_error_IV:Landroid/widget/ImageView;

    .line 612
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->content_no_data_error:Landroid/widget/RelativeLayout;

    const v2, 0x7f09011b

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->no_data_error_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 614
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->content_no_data_error:Landroid/widget/RelativeLayout;

    const v2, 0x7f09011c

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->no_data_error_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 616
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->content_no_data_error:Landroid/widget/RelativeLayout;

    const v2, 0x7f09011e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->no_data_icons_layout:Landroid/widget/RelativeLayout;

    .line 620
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->localInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03003a

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->myHeaderView:Landroid/view/View;

    .line 622
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->localInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001d

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->myFooterView:Landroid/view/View;

    .line 625
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->myHeaderView:Landroid/view/View;

    const v2, 0x7f090103

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_prepaid_left_layout:Landroid/widget/RelativeLayout;

    .line 627
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->myHeaderView:Landroid/view/View;

    const v2, 0x7f09010d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_prepaid_center_layout:Landroid/widget/RelativeLayout;

    .line 629
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->myHeaderView:Landroid/view/View;

    const v2, 0x7f090109

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_prepaid_right_layout:Landroid/widget/RelativeLayout;

    .line 631
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->myHeaderView:Landroid/view/View;

    const v2, 0x7f090106

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_postpaid_left_layout:Landroid/widget/RelativeLayout;

    .line 633
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->myHeaderView:Landroid/view/View;

    const v2, 0x7f09010b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_postpaid_right_layout:Landroid/widget/RelativeLayout;

    .line 636
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->myHeaderView:Landroid/view/View;

    const v2, 0x7f090105

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_phone_no:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 638
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->myHeaderView:Landroid/view/View;

    const v2, 0x7f09010e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_money:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 640
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->myHeaderView:Landroid/view/View;

    const v2, 0x7f09010a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYButton;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_topup_button:Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 643
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->myHeaderView:Landroid/view/View;

    const v2, 0x7f090107

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_my_number:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 645
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->myHeaderView:Landroid/view/View;

    const v2, 0x7f090108

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_allocation_expiry_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 647
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->myHeaderView:Landroid/view/View;

    const v2, 0x7f09010c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYButton;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_manage_extras_button:Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 650
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->myHeaderView:Landroid/view/View;

    const v2, 0x7f090110

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_as_at_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 652
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->myHeaderView:Landroid/view/View;

    const v2, 0x7f090112

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_linear_all_messages_layout:Landroid/widget/LinearLayout;

    .line 654
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->myHeaderView:Landroid/view/View;

    const v2, 0x7f090111

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_all_messages_layout:Landroid/widget/RelativeLayout;

    .line 657
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->myFooterView:Landroid/view/View;

    const v2, 0x7f090090

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 659
    .local v0, "tcLink":Lnz/co/telecom/smartphone/widget/TMYTextView;
    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragBase$1;

    invoke-direct {v1, p0}, Lnz/co/telecom/smartphone/fragments/FragBase$1;-><init>(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->content_no_data_error:Landroid/widget/RelativeLayout;

    const v2, 0x7f090122

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYButton;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->noDataErrorTryAgainBtn:Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 671
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->noDataErrorTryAgainBtn:Lnz/co/telecom/smartphone/widget/TMYButton;

    new-instance v2, Lnz/co/telecom/smartphone/fragments/FragBase$2;

    invoke-direct {v2, p0}, Lnz/co/telecom/smartphone/fragments/FragBase$2;-><init>(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_topup_button:Lnz/co/telecom/smartphone/widget/TMYButton;

    new-instance v2, Lnz/co/telecom/smartphone/fragments/FragBase$3;

    invoke-direct {v2, p0}, Lnz/co/telecom/smartphone/fragments/FragBase$3;-><init>(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_manage_extras_button:Lnz/co/telecom/smartphone/widget/TMYButton;

    new-instance v2, Lnz/co/telecom/smartphone/fragments/FragBase$4;

    invoke-direct {v2, p0}, Lnz/co/telecom/smartphone/fragments/FragBase$4;-><init>(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    return-object v3
.end method

.method protected isDTOCached()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 374
    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineExtendedCached:Z

    if-nez v2, :cond_1

    .line 383
    :cond_0
    :goto_0
    return v0

    .line 378
    :cond_1
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getLineExtendedDTO()Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    move-result-object v2

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    .line 379
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    if-eqz v2, :cond_0

    .line 380
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineExtendedCached:Z

    move v0, v1

    .line 381
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 354
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 355
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 349
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onAttach(Landroid/app/Activity;)V

    .line 350
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 360
    iget v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    if-eqz p3, :cond_0

    .line 361
    const-string v0, "mPos"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mPos:I

    .line 362
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->allowDeviceLogging()Z

    move-result v0

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->debug:Z

    .line 363
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->localInflater:Landroid/view/LayoutInflater;

    .line 364
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->initData()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 328
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onPause()V

    .line 329
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 333
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onResume()V

    .line 334
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    if-nez v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v0, v1}, Lroboguice/inject/RoboInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    .line 338
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    if-nez v0, :cond_1

    .line 339
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    const-class v1, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v0, v1}, Lroboguice/inject/RoboInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    .line 342
    :cond_1
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->initializeHandler()V

    .line 343
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V

    .line 344
    const/16 v0, 0x201

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/fragments/FragBase;->createMessage(I)V

    .line 345
    return-void
.end method

.method protected refreshPageDetails()V
    .locals 19

    .prologue
    .line 459
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v11}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->isPrePaid()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 460
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_prepaid_left_layout:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 462
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_prepaid_center_layout:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 464
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_prepaid_right_layout:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 466
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_phone_no:Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v12}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v11}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getBalance()D

    move-result-wide v11

    const-wide v13, -0x408b851eb851eb85L

    cmpg-double v11, v11, v13

    if-gez v11, :cond_b

    .line 472
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_money:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const v12, 0x7f0e001e

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "-"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v15}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getBalance()D

    move-result-wide v15

    const-wide/high16 v17, -0x4010000000000000L

    mul-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lnz/co/telecom/smartphone/fragments/FragBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v11}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getBalanceDateTime()Ljava/util/Date;

    move-result-object v11

    if-nez v11, :cond_d

    .line 488
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_as_at_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const-string v12, ""

    invoke-virtual {v11, v12}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_page_header:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    if-eqz v11, :cond_1

    .line 518
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080002

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, "fragmentNames":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_page_header:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    move-object/from16 v0, p0

    iget v12, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->mPos:I

    aget-object v12, v2, v12

    invoke-virtual {v11, v12}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    .end local v2    # "fragmentNames":[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v11}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getMessages()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_14

    .line 524
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->debug:Z

    if-eqz v11, :cond_2

    .line 525
    sget-object v11, Lnz/co/telecom/smartphone/fragments/FragBase;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " refreshPageDetails oneLine.messages.length "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v13}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getMessages()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_linear_all_messages_layout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 529
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_all_messages_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 530
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_linear_all_messages_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 535
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v11}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getMessages()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;

    .line 537
    .local v10, "tempMessage":Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->debug:Z

    if-eqz v11, :cond_4

    .line 538
    sget-object v11, Lnz/co/telecom/smartphone/fragments/FragBase;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " refreshPageDetails One message "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->debug:Z

    if-eqz v11, :cond_5

    .line 541
    sget-object v11, Lnz/co/telecom/smartphone/fragments/FragBase;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " refreshPageDetails One message type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->debug:Z

    if-eqz v11, :cond_6

    .line 544
    sget-object v11, Lnz/co/telecom/smartphone/fragments/FragBase;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " refreshPageDetails One message oneValue.title "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->debug:Z

    if-eqz v11, :cond_7

    .line 548
    sget-object v11, Lnz/co/telecom/smartphone/fragments/FragBase;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " refreshPageDetails One message oneValue.getValues "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;->getValues()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_7
    invoke-virtual {v10}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;->getValues()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 552
    const/4 v5, 0x0

    .line 553
    .local v5, "levdto":Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-virtual {v10}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;->getValues()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_12

    .line 554
    invoke-virtual {v10}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;->getValues()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "levdto":Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;
    check-cast v5, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;

    .line 555
    .restart local v5    # "levdto":Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->debug:Z

    if-eqz v11, :cond_8

    .line 556
    sget-object v11, Lnz/co/telecom/smartphone/fragments/FragBase;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " refreshPageDetails levdto.getScreens()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;->getScreens()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_8
    sget v11, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_9

    sget v11, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    if-nez v11, :cond_11

    .line 561
    :cond_9
    const v6, 0x7f03004d

    .line 562
    .local v6, "messageTypeResId":I
    sget-object v11, Lnz/co/telecom/smartphone/TelecomConstants;->MESSAGE_TYPE_ERROR:Ljava/lang/String;

    invoke-virtual {v10}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 564
    const v6, 0x7f03004c

    .line 566
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->localInflater:Landroid/view/LayoutInflater;

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 568
    .local v8, "oneMessageLinearView":Landroid/view/View;
    const v11, 0x7f090142

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 570
    .local v9, "oneTitle":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    const v11, 0x7f090143

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 572
    .local v7, "oneContent":Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    invoke-virtual {v9}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 574
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 578
    :goto_4
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_linear_all_messages_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 553
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 475
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "levdto":Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;
    .end local v6    # "messageTypeResId":I
    .end local v7    # "oneContent":Lnz/co/telecom/smartphone/widget/TMYTextView;
    .end local v8    # "oneMessageLinearView":Landroid/view/View;
    .end local v9    # "oneTitle":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    .end local v10    # "tempMessage":Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v11}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getBalance()D

    move-result-wide v11

    const-wide v13, 0x3f747ae147ae147bL

    cmpg-double v11, v11, v13

    if-gez v11, :cond_c

    .line 478
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_money:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const v12, 0x7f0e001e

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v15}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getBalance()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lnz/co/telecom/smartphone/fragments/FragBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 601
    :catch_0
    move-exception v1

    .line 602
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v11, Lnz/co/telecom/smartphone/fragments/FragBase;->TAG:Ljava/lang/String;

    invoke-static {v11, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    sget-object v11, Lnz/co/telecom/smartphone/fragments/FragBase;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error in refreshPageDetails "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 607
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    return-void

    .line 482
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_money:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const v12, 0x7f0e001e

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v15}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getBalance()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lnz/co/telecom/smartphone/fragments/FragBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 605
    :catchall_0
    move-exception v11

    invoke-static {}, Ljava/lang/System;->gc()V

    throw v11

    .line 490
    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_as_at_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const v12, 0x7f0e0016

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v15}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getBalanceDateTime()Ljava/util/Date;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lnz/co/telecom/smartphone/fragments/FragBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 494
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v11}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->isPostPaid()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 495
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_postpaid_left_layout:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 497
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_postpaid_right_layout:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 499
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_manage_extras_button:Lnz/co/telecom/smartphone/widget/TMYButton;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 501
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_my_number:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    const v12, 0x7f0e006c

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v15}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lnz/co/telecom/smartphone/fragments/FragBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v11}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getNextBillDueDateTime()Ljava/util/Date;

    move-result-object v11

    if-nez v11, :cond_f

    .line 506
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_allocation_expiry_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const-string v12, ""

    invoke-virtual {v11, v12}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_as_at_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const v12, 0x7f0e0016

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v15}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getTimestamp()Ljava/util/Date;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lnz/co/telecom/smartphone/fragments/FragBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 508
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_allocation_expiry_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const v12, 0x7f0e0011

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v15}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getNextBillDueDateTime()Ljava/util/Date;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lnz/co/telecom/smartphone/fragments/FragBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 576
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "levdto":Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;
    .restart local v6    # "messageTypeResId":I
    .restart local v7    # "oneContent":Lnz/co/telecom/smartphone/widget/TMYTextView;
    .restart local v8    # "oneMessageLinearView":Landroid/view/View;
    .restart local v9    # "oneTitle":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    .restart local v10    # "tempMessage":Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;
    :cond_10
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 582
    .end local v6    # "messageTypeResId":I
    .end local v7    # "oneContent":Lnz/co/telecom/smartphone/widget/TMYTextView;
    .end local v8    # "oneMessageLinearView":Landroid/view/View;
    .end local v9    # "oneTitle":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_linear_all_messages_layout:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 588
    :cond_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_linear_all_messages_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->invalidate()V

    goto/16 :goto_2

    .line 592
    .end local v3    # "i":I
    .end local v5    # "levdto":Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;
    .end local v10    # "tempMessage":Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;
    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_all_messages_layout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_linear_all_messages_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_all_messages_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 600
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    check-cast v11, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 605
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_5

    .line 597
    :cond_14
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_linear_all_messages_layout:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7
.end method

.method public showConfirmDialog(Ljava/lang/String;Ljava/lang/String;Lnz/co/telecom/smartphone/fragments/OnDismiss;)V
    .locals 1
    .param p1, "confirmTitle"    # Ljava/lang/String;
    .param p2, "confirmMessage"    # Ljava/lang/String;
    .param p3, "onDismiss"    # Lnz/co/telecom/smartphone/fragments/OnDismiss;

    .prologue
    .line 842
    const-string v0, "CONFIRM"

    invoke-virtual {p0, v0, p1, p2, p3}, Lnz/co/telecom/smartphone/fragments/FragBase;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnz/co/telecom/smartphone/fragments/OnDismiss;)V

    .line 843
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnz/co/telecom/smartphone/fragments/OnDismiss;)V
    .locals 15
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "onDismiss"    # Lnz/co/telecom/smartphone/fragments/OnDismiss;

    .prologue
    .line 731
    const/4 v12, 0x1

    new-array v1, v12, [Z

    .line 732
    .local v1, "isClickedOK":[Z
    const/4 v12, 0x0

    const/4 v13, 0x0

    aput-boolean v13, v1, v12

    .line 734
    new-instance v11, Landroid/app/Dialog;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 735
    .local v11, "subDialog":Landroid/app/Dialog;
    iget-object v12, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->localInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f030045

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 737
    .local v2, "myDialogView":Landroid/view/View;
    const v12, 0x7f090130

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 739
    .local v3, "popup_dialog_IV":Landroid/widget/ImageView;
    const v12, 0x7f090131

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 741
    .local v5, "popup_dialog_content":Landroid/view/ViewGroup;
    const v12, 0x7f090132

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 743
    .local v9, "popup_dialog_title_TV":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    const v12, 0x7f090133

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 745
    .local v6, "popup_dialog_content_TV":Lnz/co/telecom/smartphone/widget/TMYTextView;
    const v12, 0x7f090136

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 747
    .local v7, "popup_dialog_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const v12, 0x7f090137

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 749
    .local v4, "popup_dialog_cancel_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const v12, 0x7f090138

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 752
    .local v8, "popup_dialog_retry_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const v12, 0x7f09012f

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 754
    .local v10, "popup_dialog_top_layout":Landroid/widget/RelativeLayout;
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 756
    const-string v12, "ERROR"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 757
    const v12, 0x7f020141

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 758
    const v12, 0x7f020211

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 760
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0071

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v9, v12}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setTextColor(I)V

    .line 762
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0070

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v6, v12}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setTextColor(I)V

    .line 779
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 780
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 781
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    new-instance v12, Lnz/co/telecom/smartphone/fragments/FragBase$5;

    invoke-direct {v12, p0, v11}, Lnz/co/telecom/smartphone/fragments/FragBase$5;-><init>(Lnz/co/telecom/smartphone/fragments/FragBase;Landroid/app/Dialog;)V

    invoke-virtual {v2, v12}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 793
    new-instance v12, Lnz/co/telecom/smartphone/fragments/FragBase$6;

    invoke-direct {v12, p0, v11}, Lnz/co/telecom/smartphone/fragments/FragBase$6;-><init>(Lnz/co/telecom/smartphone/fragments/FragBase;Landroid/app/Dialog;)V

    invoke-virtual {v7, v12}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    new-instance v12, Lnz/co/telecom/smartphone/fragments/FragBase$7;

    invoke-direct {v12, p0, v11}, Lnz/co/telecom/smartphone/fragments/FragBase$7;-><init>(Lnz/co/telecom/smartphone/fragments/FragBase;Landroid/app/Dialog;)V

    invoke-virtual {v4, v12}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 805
    new-instance v12, Lnz/co/telecom/smartphone/fragments/FragBase$8;

    invoke-direct {v12, p0, v1, v11}, Lnz/co/telecom/smartphone/fragments/FragBase$8;-><init>(Lnz/co/telecom/smartphone/fragments/FragBase;[ZLandroid/app/Dialog;)V

    invoke-virtual {v8, v12}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    new-instance v12, Lnz/co/telecom/smartphone/fragments/FragBase$9;

    move-object/from16 v0, p4

    invoke-direct {v12, p0, v1, v0}, Lnz/co/telecom/smartphone/fragments/FragBase$9;-><init>(Lnz/co/telecom/smartphone/fragments/FragBase;[ZLnz/co/telecom/smartphone/fragments/OnDismiss;)V

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 824
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 825
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 826
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v12, v13}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 828
    invoke-virtual {v11, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 829
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 830
    return-void

    .line 765
    :cond_1
    const v12, 0x7f020140

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 766
    const v12, 0x7f0201d0

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 768
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0050

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v9, v12}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setTextColor(I)V

    .line 770
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b004f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v6, v12}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setTextColor(I)V

    .line 772
    const-string v12, "CONFIRM"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 773
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 774
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 775
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 783
    :cond_2
    const/16 v12, 0x8

    invoke-virtual {v9, v12}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public switchFragment(Lnz/co/telecom/smartphone/fragments/FragBase;)V
    .locals 1
    .param p1, "fragment"    # Lnz/co/telecom/smartphone/fragments/FragBase;

    .prologue
    .line 704
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->switchContent(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    goto :goto_0
.end method

.method public toggleTermsAndConditions(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 62
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    .line 63
    .local v0, "ra":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->toggleTermsAndConditions(I)V

    .line 64
    return-void
.end method
