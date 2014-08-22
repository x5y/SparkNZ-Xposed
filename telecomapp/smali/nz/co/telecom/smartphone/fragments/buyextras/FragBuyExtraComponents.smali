.class public Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;
.super Lnz/co/telecom/smartphone/fragments/FragBase;
.source "FragBuyExtraComponents.java"

# interfaces
.implements Lnz/co/telecom/smartphone/fragments/buyextras/BuyExtraRequestHandler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private buyExtraComponentView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

.field private extrasBuyMessageDTO:Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;

.field private globalView:Landroid/view/View;

.field protected mBuyExtrasController:Lnz/co/telecom/smartphone/controller/BuyExtrasController;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->extrasBuyMessageDTO:Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;

    .line 69
    return-void
.end method

.method public constructor <init>(ILnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "extrasCatalogueDTO"    # Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
    .param p3, "extrasCatalogueProductsDTO"    # Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>(I)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->extrasBuyMessageDTO:Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;

    .line 73
    iput-object p2, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    .line 74
    iput-object p3, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method static synthetic access$002(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;)Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    .prologue
    .line 52
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    return-object p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->s_isLineExtendedCached:Z

    return v0
.end method

.method static synthetic access$1000(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->createMessage(I)V

    return-void
.end method

.method static synthetic access$1100(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    .prologue
    .line 52
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    return-object v0
.end method

.method static synthetic access$1200(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    .prologue
    .line 52
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    return-object v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 52
    sput-boolean p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->s_isLineExtendedCached:Z

    return p0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 52
    sput-boolean p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->s_isExtrasCatalogueCached:Z

    return p0
.end method

.method static synthetic access$1500(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->createMessage(I)V

    return-void
.end method

.method static synthetic access$1602(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;)Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;

    .prologue
    .line 52
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->extrasBuyMessageDTO:Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;

    return-object p1
.end method

.method static synthetic access$1700(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    .prologue
    .line 52
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    return-object v0
.end method

.method static synthetic access$1800(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    .prologue
    .line 52
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->handleBuyExtraResponse()V

    return-void
.end method

.method static synthetic access$1900(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    .prologue
    .line 52
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    .prologue
    .line 52
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->content_no_data_error:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$202(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;)Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    .prologue
    .line 52
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    return-object p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->s_isExtrasCatalogueCached:Z

    return v0
.end method

.method static synthetic access$402(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;Lnz/co/telecom/smartphone/service/HttpServiceException;)Lnz/co/telecom/smartphone/service/HttpServiceException;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/service/HttpServiceException;

    .prologue
    .line 52
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    return-object p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->createMessage(I)V

    return-void
.end method

.method static synthetic access$700(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->createMessage(I)V

    return-void
.end method

.method static synthetic access$802(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;Lnz/co/telecom/smartphone/service/HttpServiceException;)Lnz/co/telecom/smartphone/service/HttpServiceException;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/service/HttpServiceException;

    .prologue
    .line 52
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    return-object p1
.end method

.method static synthetic access$900(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->createMessage(I)V

    return-void
.end method

.method private handleBuyExtraResponse()V
    .locals 21

    .prologue
    .line 265
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    check-cast v18, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->content_progressbar:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 268
    const/4 v7, 0x0

    .line 269
    .local v7, "isProcessBuyRequestError":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->extrasBuyMessageDTO:Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->content_no_data_error:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->content_no_data_error:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const v19, 0x7f090122

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 272
    .local v3, "btnTryAgain":Lnz/co/telecom/smartphone/widget/TMYButton;
    new-instance v18, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$4;-><init>(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    .end local v3    # "btnTryAgain":Lnz/co/telecom/smartphone/widget/TMYButton;
    :goto_0
    return-void

    .line 282
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->isPostPaid()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 283
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragBase;->requestRefreshForExtrasBuyPostPaid()V

    .line 288
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->extrasBuyMessageDTO:Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;->getType()Ljava/lang/String;

    move-result-object v18

    const-string v19, "SUCCESS"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 289
    sget-object v18, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "isProcessBuyRequestError : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 295
    .local v4, "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    const-string v18, "extrasId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v18, "extrasTitle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getTitle()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v18, "extrasCode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getCode()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_2
    if-eqz v7, :cond_2

    .line 301
    const-string v18, "buyextras:detail:success"

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 305
    :goto_3
    const/4 v8, 0x0

    .line 306
    .local v8, "messageCounter":I
    const-string v10, ""

    .line 307
    .local v10, "myTitle":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 308
    .local v16, "sbDialogMessage":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->extrasBuyMessageDTO:Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;->getValues()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyValuesDTO;

    .line 309
    .local v5, "extrasBuyMessage":Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyValuesDTO;
    if-nez v8, :cond_3

    .line 310
    iget-object v10, v5, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyValuesDTO;->title:Ljava/lang/String;

    .line 315
    :goto_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyValuesDTO;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    add-int/lit8 v8, v8, 0x1

    .line 317
    goto :goto_4

    .line 285
    .end local v4    # "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "extrasBuyMessage":Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyValuesDTO;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "messageCounter":I
    .end local v10    # "myTitle":Ljava/lang/String;
    .end local v16    # "sbDialogMessage":Ljava/lang/StringBuffer;
    :cond_1
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragBase;->requestRefreshForExtrasBuyPrePaid()V

    goto/16 :goto_1

    .line 303
    .restart local v4    # "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const-string v18, "buyextras:detail:fail"

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_3

    .line 312
    .restart local v5    # "extrasBuyMessage":Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyValuesDTO;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "messageCounter":I
    .restart local v10    # "myTitle":Ljava/lang/String;
    .restart local v16    # "sbDialogMessage":Ljava/lang/StringBuffer;
    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyValuesDTO;->getTitle()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 319
    .end local v5    # "extrasBuyMessage":Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyValuesDTO;
    :cond_4
    new-instance v17, Landroid/app/Dialog;

    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 320
    .local v17, "subDialog":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->localInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f030045

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 322
    .local v9, "myDialogView":Landroid/view/View;
    const v18, 0x7f090130

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 324
    .local v11, "popup_dialog_close_error_IV":Landroid/widget/ImageView;
    const v18, 0x7f090132

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 326
    .local v15, "popup_dialog_title_TV":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    const v18, 0x7f090133

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 328
    .local v13, "popup_dialog_content_TV":Lnz/co/telecom/smartphone/widget/TMYTextView;
    const v18, 0x7f090136

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 330
    .local v14, "popup_dialog_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const v18, 0x7f090131

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 332
    .local v12, "popup_dialog_content":Landroid/view/ViewGroup;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 333
    if-eqz v7, :cond_5

    .line 334
    const v18, 0x7f020140

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b0050

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setTextColor(I)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b004f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setTextColor(I)V

    .line 339
    const v18, 0x7f0201d0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 350
    :goto_6
    invoke-virtual {v15, v10}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    new-instance v18, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$5;-><init>(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;Landroid/app/Dialog;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 359
    new-instance v18, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$6;-><init>(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;Landroid/app/Dialog;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 369
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 370
    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    new-instance v19, Landroid/graphics/drawable/ColorDrawable;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 372
    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 342
    :cond_5
    const v18, 0x7f020141

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 343
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b0071

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setTextColor(I)V

    .line 345
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b0070

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setTextColor(I)V

    .line 347
    const v18, 0x7f020211

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_6

    .line 298
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "messageCounter":I
    .end local v9    # "myDialogView":Landroid/view/View;
    .end local v10    # "myTitle":Ljava/lang/String;
    .end local v11    # "popup_dialog_close_error_IV":Landroid/widget/ImageView;
    .end local v12    # "popup_dialog_content":Landroid/view/ViewGroup;
    .end local v13    # "popup_dialog_content_TV":Lnz/co/telecom/smartphone/widget/TMYTextView;
    .end local v14    # "popup_dialog_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    .end local v15    # "popup_dialog_title_TV":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    .end local v16    # "sbDialogMessage":Ljava/lang/StringBuffer;
    .end local v17    # "subDialog":Landroid/app/Dialog;
    :catch_0
    move-exception v18

    goto/16 :goto_2
.end method

.method private isInsufficientCreditAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 209
    const-wide/16 v1, 0x0

    .line 211
    .local v1, "priceDouble":D
    :try_start_0
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getPrice()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 217
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->isPostPaid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v3

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    sget-object v4, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->TAG:Ljava/lang/String;

    const-string v5, "Unable to parse product price"

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;->getBalance()D

    move-result-wide v4

    cmpg-double v4, v4, v1

    if-gez v4, :cond_0

    .line 221
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getDTO()V
    .locals 4

    .prologue
    .line 93
    new-instance v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;-><init>(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)V

    .line 94
    .local v0, "at":Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    return-void
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initData()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->localInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030021

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->globalView:Landroid/view/View;

    .line 171
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->globalView:Landroid/view/View;

    const v1, 0x7f09009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->content_progressbar:Landroid/widget/RelativeLayout;

    .line 172
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->globalView:Landroid/view/View;

    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->content_no_data_error:Landroid/widget/RelativeLayout;

    .line 173
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->initData()Landroid/view/View;

    .line 175
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->globalView:Landroid/view/View;

    const v1, 0x7f09009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->buyExtraComponentView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->buyExtraComponentView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 181
    :goto_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->buyExtraComponentView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->myHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 183
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->localInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001d

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->myFooterView:Landroid/view/View;

    .line 184
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->buyExtraComponentView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->myFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->addFooterView(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->myFooterView:Landroid/view/View;

    new-instance v1, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$2;

    invoke-direct {v1, p0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$2;-><init>(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->buyExtraComponentView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setHeaderDividersEnabled(Z)V

    .line 193
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->buyExtraComponentView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setFooterDividersEnabled(Z)V

    .line 194
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->buyExtraComponentView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setChoiceMode(I)V

    .line 195
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->myHeaderView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->globalView:Landroid/view/View;

    return-object v0

    .line 179
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->buyExtraComponentView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setAreHeadersSticky(Z)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    if-eqz p3, :cond_0

    .line 88
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnz/co/telecom/smartphone/fragments/FragBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 202
    return-void
.end method

.method public processBuyExtraRequest()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->isInsufficientCreditAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;-><init>(ILnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)V

    .line 232
    .local v0, "topUpFrag":Lnz/co/telecom/smartphone/fragments/FragBase;
    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->switchFragment(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    .line 257
    .end local v0    # "topUpFrag":Lnz/co/telecom/smartphone/fragments/FragBase;
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 236
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V

    .line 238
    new-instance v1, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3;

    invoke-direct {v1, p0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3;-><init>(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)V

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3;->start()V

    goto :goto_0
.end method

.method protected refreshPageDetails()V
    .locals 8

    .prologue
    .line 149
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->refreshPageDetails()V

    .line 150
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->buyExtraComponentView:Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;

    new-instance v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;-><init>(Landroid/content/Context;Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;Lnz/co/telecom/smartphone/fragments/buyextras/BuyExtraRequestHandler;)V

    invoke-virtual {v7, v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CompatibleStickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_topup_button:Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 152
    .local v6, "btnBuyExtraTopUp":Landroid/widget/Button;
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->isInsufficientCreditAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const v0, 0x7f0e0024

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(I)V

    .line 157
    :goto_0
    invoke-virtual {v6}, Landroid/widget/Button;->invalidate()V

    .line 158
    new-instance v0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$1;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$1;-><init>(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V

    .line 165
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->globalView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 166
    return-void

    .line 155
    :cond_0
    const v0, 0x7f0e0020

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
