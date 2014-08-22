.class public Lnz/co/telecom/smartphone/fragments/MainFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "MainFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;,
        Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;,
        Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;,
        Lnz/co/telecom/smartphone/fragments/MainFragment$MyChromeClient;
    }
.end annotation


# static fields
.field private static final ERROR_OCCURED_DIALOG:I = 0x3e7

.field public static final EXTRA_RESULTS_ERROR:Ljava/lang/String; = "EXTRA_ERROR"

.field public static final EXTRA_RESULTS_ERROR_INT:I = 0x0

.field public static final EXTRA_RESULTS_RECEIVER:Ljava/lang/String; = "EXTRA_RESULTS"

.field public static final EXTRA_RESULTS_SUCCESS:Ljava/lang/String; = "EXTRA_SUCCESS"

.field public static final EXTRA_RESULTS_SUCCESS_INT:I = 0x1

.field public static final FRAGMENT_ALERTS_AND_NOTIFICATIONS:I = 0x8

.field public static final FRAGMENT_AUTOSIGNIN:I = 0x6

.field public static final FRAGMENT_BUYEXTRA:I = 0x4

.field public static final FRAGMENT_BUYEXTRA_COMPONENTS:I = 0x1f

.field public static final FRAGMENT_HELPANDSUPPORT:I = 0x9

.field public static final FRAGMENT_LOGOUT:I = 0xa

.field public static final FRAGMENT_MYUSAGE:I = 0x0

.field public static final FRAGMENT_PAYBILL:I = 0x3

.field public static final FRAGMENT_PLANDETAIL:I = 0x1

.field public static final FRAGMENT_RECENTACTIVITIES:I = 0x7

.field public static final FRAGMENT_TOPUP:I = 0x2

.field public static final FRAGMENT_VERSION_INFO:I = 0xb

.field public static final FRAGMENT_VIEW_ACTIVITY:I = 0x5

.field public static final NETWORK_CONNECTIONS_CONNECTED:I = 0x1

.field public static final NETWORK_CONNECTIONS_DISCONNECTED:I = 0x0

.field public static final NETWORK_CONNECTIONS_RESULTS:Ljava/lang/String; = "NETWORK_CONNECTIONS_RESULTS"

.field public static final TAG:Ljava/lang/String;

.field public static final TOPUP_RESULTS_RECEIVER:Ljava/lang/String; = "TOPUP_RESULTS"

.field private static mActionBar:Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

.field protected static mFragmentTopTitles:[Ljava/lang/String;

.field public static mfProperties:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field public static myCurrentFragmentId:I


# instance fields
.field public TandCDisplaying:Z

.field private TandCWebView:Landroid/webkit/WebView;

.field private cachedTermsAndConds:Z

.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentFragmentTag:Ljava/lang/String;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerToggle:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;

.field private mFragAlertsAndNotifications:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

.field private mFragBuyExtra:Lnz/co/telecom/smartphone/fragments/FragBuyExtra;

.field private mFragHelpAndSupport:Lnz/co/telecom/smartphone/fragments/FragHelpSupport;

.field private mFragMyAccount:Lnz/co/telecom/smartphone/fragments/FragMyAccount;

.field private mFragMyUsage:Lnz/co/telecom/smartphone/fragments/FragMyUsage;

.field private mFragPayBill:Lnz/co/telecom/smartphone/fragments/FragPayBill;

.field private mFragPlanDetail:Lnz/co/telecom/smartphone/fragments/FragPlanDetail;

.field private mFragRecentTransactions:Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;

.field private mFragTopUp:Lnz/co/telecom/smartphone/fragments/FragTopUp;

.field private mFragViewActivityPager:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

.field private mFragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;

.field mIsRefreshVisible:Z

.field private mListView:Landroid/widget/ListView;

.field private mOfflineIndictor:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/fragments/MainFragment;->TAG:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    sput v0, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mIsRefreshVisible:Z

    .line 97
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;

    .line 99
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mCurrentFragmentTag:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragMyUsage:Lnz/co/telecom/smartphone/fragments/FragMyUsage;

    .line 107
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragPlanDetail:Lnz/co/telecom/smartphone/fragments/FragPlanDetail;

    .line 108
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragTopUp:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .line 109
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragPayBill:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .line 110
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragBuyExtra:Lnz/co/telecom/smartphone/fragments/FragBuyExtra;

    .line 111
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragRecentTransactions:Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;

    .line 112
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragHelpAndSupport:Lnz/co/telecom/smartphone/fragments/FragHelpSupport;

    .line 113
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragViewActivityPager:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    .line 114
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragAlertsAndNotifications:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    .line 115
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragMyAccount:Lnz/co/telecom/smartphone/fragments/FragMyAccount;

    .line 194
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->cachedTermsAndConds:Z

    .line 210
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->TandCDisplaying:Z

    .line 611
    return-void
.end method

.method static synthetic access$200(Lnz/co/telecom/smartphone/fragments/MainFragment;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/MainFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->TandCWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lnz/co/telecom/smartphone/fragments/MainFragment;)Lnz/co/telecom/smartphone/fragments/FragBase;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/MainFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;

    return-object v0
.end method

.method static synthetic access$302(Lnz/co/telecom/smartphone/fragments/MainFragment;Lnz/co/telecom/smartphone/fragments/FragBase;)Lnz/co/telecom/smartphone/fragments/FragBase;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/MainFragment;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/fragments/FragBase;

    .prologue
    .line 49
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;

    return-object p1
.end method

.method static synthetic access$400(Lnz/co/telecom/smartphone/fragments/MainFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/MainFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lnz/co/telecom/smartphone/fragments/MainFragment;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/MainFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic access$600(Lnz/co/telecom/smartphone/fragments/MainFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/MainFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mCurrentFragmentTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lnz/co/telecom/smartphone/fragments/MainFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/MainFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mCurrentFragmentTag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700()Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mActionBar:Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

    return-object v0
.end method

.method static synthetic access$800(Lnz/co/telecom/smartphone/fragments/MainFragment;)Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/MainFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mDrawerToggle:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;

    return-object v0
.end method

.method private configureConnectivityManager()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 318
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 320
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 321
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 322
    invoke-virtual {p0, v3}, Lnz/co/telecom/smartphone/fragments/MainFragment;->toggleNetworkStatus(I)V

    .line 328
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 324
    invoke-virtual {p0, v3}, Lnz/co/telecom/smartphone/fragments/MainFragment;->toggleNetworkStatus(I)V

    goto :goto_0

    .line 326
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/fragments/MainFragment;->toggleNetworkStatus(I)V

    goto :goto_0
.end method

.method private createActionBarHelper()Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;
    .locals 2

    .prologue
    .line 608
    new-instance v0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;-><init>(Lnz/co/telecom/smartphone/fragments/MainFragment;Lnz/co/telecom/smartphone/fragments/MainFragment$1;)V

    return-object v0
.end method

.method private getBackStackChangeListener()Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
    .locals 1

    .prologue
    .line 683
    new-instance v0, Lnz/co/telecom/smartphone/fragments/MainFragment$3;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/MainFragment$3;-><init>(Lnz/co/telecom/smartphone/fragments/MainFragment;)V

    .line 707
    .local v0, "result":Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
    return-object v0
.end method

.method public static newInstance()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-direct {v0}, Lnz/co/telecom/smartphone/fragments/MainFragment;-><init>()V

    .line 103
    .local v0, "f":Landroid/support/v4/app/Fragment;
    return-object v0
.end method


# virtual methods
.method public getCurrentFragment(IZ)Lnz/co/telecom/smartphone/fragments/FragBase;
    .locals 4
    .param p1, "position"    # I
    .param p2, "isForRefresh"    # Z

    .prologue
    const/4 v2, 0x0

    .line 382
    const/4 v0, 0x0

    .line 384
    .local v0, "fragmentContent":Lnz/co/telecom/smartphone/fragments/FragBase;
    sparse-switch p1, :sswitch_data_0

    .line 462
    :goto_0
    return-object v0

    .line 386
    :sswitch_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragMyUsage:Lnz/co/telecom/smartphone/fragments/FragMyUsage;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    .line 387
    :cond_0
    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragMyUsage:Lnz/co/telecom/smartphone/fragments/FragMyUsage;

    .line 388
    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragMyUsage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnz/co/telecom/smartphone/fragments/FragMyUsage;-><init>(I)V

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragMyUsage:Lnz/co/telecom/smartphone/fragments/FragMyUsage;

    .line 390
    :cond_1
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragMyUsage:Lnz/co/telecom/smartphone/fragments/FragMyUsage;

    .line 391
    goto :goto_0

    .line 394
    :sswitch_1
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragPlanDetail:Lnz/co/telecom/smartphone/fragments/FragPlanDetail;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_3

    .line 395
    :cond_2
    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragPlanDetail:Lnz/co/telecom/smartphone/fragments/FragPlanDetail;

    .line 396
    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;-><init>(I)V

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragPlanDetail:Lnz/co/telecom/smartphone/fragments/FragPlanDetail;

    .line 398
    :cond_3
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragPlanDetail:Lnz/co/telecom/smartphone/fragments/FragPlanDetail;

    .line 399
    goto :goto_0

    .line 402
    :sswitch_2
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragPayBill:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    if-eqz v1, :cond_4

    if-eqz p2, :cond_5

    .line 403
    :cond_4
    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragPayBill:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .line 404
    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lnz/co/telecom/smartphone/fragments/FragPayBill;-><init>(I)V

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragPayBill:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .line 406
    :cond_5
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragPayBill:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .line 407
    goto :goto_0

    .line 410
    :sswitch_3
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragTopUp:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    if-eqz v1, :cond_6

    if-eqz p2, :cond_7

    .line 411
    :cond_6
    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragTopUp:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .line 412
    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragTopUp;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lnz/co/telecom/smartphone/fragments/FragTopUp;-><init>(I)V

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragTopUp:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .line 414
    :cond_7
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragTopUp:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .line 415
    goto :goto_0

    .line 419
    :sswitch_4
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragBuyExtra:Lnz/co/telecom/smartphone/fragments/FragBuyExtra;

    if-eqz v1, :cond_8

    if-eqz p2, :cond_9

    .line 420
    :cond_8
    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragBuyExtra:Lnz/co/telecom/smartphone/fragments/FragBuyExtra;

    .line 421
    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;

    const/4 v2, 0x4

    const-string v3, "Bundle"

    invoke-direct {v1, v2, v3}, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragBuyExtra:Lnz/co/telecom/smartphone/fragments/FragBuyExtra;

    .line 423
    :cond_9
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragBuyExtra:Lnz/co/telecom/smartphone/fragments/FragBuyExtra;

    .line 424
    goto :goto_0

    .line 432
    :sswitch_5
    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;-><init>(I)V

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragViewActivityPager:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    .line 434
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragViewActivityPager:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    .line 435
    goto :goto_0

    .line 437
    :sswitch_6
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragRecentTransactions:Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;

    if-eqz v1, :cond_a

    if-eqz p2, :cond_b

    .line 438
    :cond_a
    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragRecentTransactions:Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;

    .line 439
    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;-><init>(I)V

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragRecentTransactions:Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;

    .line 441
    :cond_b
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragRecentTransactions:Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;

    .line 442
    goto :goto_0

    .line 445
    :sswitch_7
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragHelpAndSupport:Lnz/co/telecom/smartphone/fragments/FragHelpSupport;

    if-eqz v1, :cond_c

    if-eqz p2, :cond_d

    .line 446
    :cond_c
    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragHelpAndSupport:Lnz/co/telecom/smartphone/fragments/FragHelpSupport;

    .line 447
    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;-><init>(I)V

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragHelpAndSupport:Lnz/co/telecom/smartphone/fragments/FragHelpSupport;

    .line 449
    :cond_d
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragHelpAndSupport:Lnz/co/telecom/smartphone/fragments/FragHelpSupport;

    .line 450
    goto/16 :goto_0

    .line 453
    :sswitch_8
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragAlertsAndNotifications:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    if-eqz v1, :cond_e

    if-eqz p2, :cond_f

    .line 454
    :cond_e
    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragAlertsAndNotifications:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    .line 455
    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;-><init>(I)V

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragAlertsAndNotifications:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    .line 457
    :cond_f
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragAlertsAndNotifications:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    goto/16 :goto_0

    .line 384
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_8
        0x9 -> :sswitch_7
        0x1f -> :sswitch_4
    .end sparse-switch
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 711
    sget-object v0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mActionBar:Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 282
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 283
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mDrawerToggle:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 284
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 119
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0, v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->setRetainInstance(Z)V

    .line 121
    invoke-virtual {p0, v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->setHasOptionsMenu(Z)V

    .line 123
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentTopTitles:[Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 126
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragMyUsage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnz/co/telecom/smartphone/fragments/FragMyUsage;-><init>(I)V

    .line 127
    .local v1, "mFragMyUsage":Lnz/co/telecom/smartphone/fragments/FragMyUsage;
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mCurrentFragmentTag:Ljava/lang/String;

    .line 129
    const v2, 0x7f0900fc

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mCurrentFragmentTag:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 131
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getBackStackChangeListener()Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 132
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 247
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object p2

    .line 248
    const/high16 v0, 0x7f100000

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 249
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 250
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 136
    const v0, 0x7f030038

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 138
    .local v7, "view":Landroid/view/View;
    const v0, 0x7f0900fb

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 139
    const v0, 0x7f0900fe

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mListView:Landroid/widget/ListView;

    .line 141
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;

    invoke-direct {v1, p0, v4}, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;-><init>(Lnz/co/telecom/smartphone/fragments/MainFragment;Lnz/co/telecom/smartphone/fragments/MainFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 142
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f020111

    const v2, 0x800003

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    .line 144
    new-instance v6, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v6, v0}, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;-><init>(Landroid/content/Context;)V

    .line 145
    .local v6, "adapterMenuList":Lnz/co/telecom/smartphone/adapter/AdapterMenuList;
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;

    invoke-direct {v1, p0, v4}, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;-><init>(Lnz/co/telecom/smartphone/fragments/MainFragment;Lnz/co/telecom/smartphone/fragments/MainFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 149
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 150
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setScrollContainer(Z)V

    .line 151
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 152
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setSmoothScrollbarEnabled(Z)V

    .line 153
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 155
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->createActionBarHelper()Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mActionBar:Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

    .line 156
    sget-object v0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mActionBar:Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->init()V

    .line 164
    new-instance v0, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v3, 0x7f02012f

    const v4, 0x7f0e004a

    const v5, 0x7f0e0049

    invoke-direct/range {v0 .. v5}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mDrawerToggle:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;

    .line 167
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mDrawerToggle:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;

    invoke-virtual {v0}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->syncState()V

    .line 169
    const v0, 0x7f0900fa

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mOfflineIndictor:Landroid/view/View;

    .line 170
    const v0, 0x7f0900fd

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->TandCWebView:Landroid/webkit/WebView;

    .line 171
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lnz/co/telecom/smartphone/fragments/MainFragment$1;

    invoke-direct {v1, p0}, Lnz/co/telecom/smartphone/fragments/MainFragment$1;-><init>(Lnz/co/telecom/smartphone/fragments/MainFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 189
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->configureConnectivityManager()V

    .line 190
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->toggleTermsAndConditions(I)V

    .line 191
    return-object v7
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/16 v5, 0x3e7

    const/4 v2, 0x1

    .line 259
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mDrawerToggle:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;

    invoke-virtual {v3, p1}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    :goto_0
    return v2

    .line 263
    :cond_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f090202

    if-ne v3, v4, :cond_1

    .line 264
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 266
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 267
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-nez v0, :cond_2

    .line 268
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentActivity;->showDialog(I)V

    .line 277
    .end local v0    # "activeNetInfo":Landroid/net/NetworkInfo;
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 269
    .restart local v0    # "activeNetInfo":Landroid/net/NetworkInfo;
    .restart local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_3

    .line 270
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentActivity;->showDialog(I)V

    goto :goto_1

    .line 272
    :cond_3
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragBase;->requestRefreshAll()V

    .line 273
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lnz/co/telecom/smartphone/fragments/MainFragment;->showRefreshButton(Z)V

    .line 274
    sget v3, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    invoke-virtual {p0, v3, v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getCurrentFragment(IZ)Lnz/co/telecom/smartphone/fragments/FragBase;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->switchContent(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mIsRefreshVisible:Z

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 296
    return-void
.end method

.method public refreshNavigationMenu(ZZZ)V
    .locals 2
    .param p1, "isPrepaid"    # Z
    .param p2, "isPostpaid"    # Z
    .param p3, "billPaymentAvailable"    # Z

    .prologue
    .line 716
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;

    .line 717
    .local v0, "menuAdapter":Lnz/co/telecom/smartphone/adapter/AdapterMenuList;
    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->setShowAlertsNotifications(Z)V

    .line 718
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->setShowPayBill(Z)V

    .line 719
    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->setShowViewActivities(Z)V

    .line 720
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/adapter/AdapterMenuList;->notifyDataSetChanged()V

    .line 721
    return-void

    .line 718
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCurrentNavigationMenuFragment(I)V
    .locals 2
    .param p1, "fragmentId"    # I

    .prologue
    .line 287
    sput p1, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    .line 288
    sget-object v0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentTopTitles:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 289
    sget-object v0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mActionBar:Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

    sget-object v1, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentTopTitles:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    :cond_0
    return-void
.end method

.method public showRefreshButton(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mIsRefreshVisible:Z

    .line 301
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 303
    .local v0, "sherlockFragmentActivity":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    .line 310
    sget-object v1, Lnz/co/telecom/smartphone/fragments/MainFragment;->mActionBar:Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

    invoke-virtual {v1, p1}, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->setEnabled(Z)V

    .line 311
    return-void

    .line 306
    :cond_0
    sget-object v1, Lnz/co/telecom/smartphone/fragments/MainFragment;->TAG:Ljava/lang/String;

    const-string v2, "sherlockFragmentActivity has come back as null???"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "sherlockFragmentActivity has come back as null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public switchContent(Lnz/co/telecom/smartphone/fragments/FragBase;)V
    .locals 2
    .param p1, "fragmentContent"    # Lnz/co/telecom/smartphone/fragments/FragBase;

    .prologue
    .line 342
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 343
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lnz/co/telecom/smartphone/fragments/MainFragment$2;

    invoke-direct {v1, p0, p1}, Lnz/co/telecom/smartphone/fragments/MainFragment$2;-><init>(Lnz/co/telecom/smartphone/fragments/MainFragment;Lnz/co/telecom/smartphone/fragments/FragBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    return-void
.end method

.method public toggleNetworkStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mOfflineIndictor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mOfflineIndictor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    :cond_0
    return-void
.end method

.method public toggleTermsAndConditions(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->TandCWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 214
    if-nez p1, :cond_0

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->TandCDisplaying:Z

    .line 228
    sget-object v0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mActionBar:Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

    const v1, 0x7f0e00d1

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    const-string v0, "termsAndConditions"

    sget-object v1, Lnz/co/telecom/smartphone/fragments/MainFragment;->mfProperties:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->getTermsAndConditionsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageLinkOff(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->TandCWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 243
    :goto_1
    return-void

    .line 231
    :cond_0
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->TandCDisplaying:Z

    .line 232
    sget v0, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    .line 233
    sget-object v0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mActionBar:Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

    sget-object v1, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentTopTitles:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 235
    :cond_1
    sget-object v0, Lnz/co/telecom/smartphone/fragments/MainFragment;->mActionBar:Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

    sget-object v1, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentTopTitles:[Ljava/lang/String;

    sget v2, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 241
    :cond_2
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment;->TandCDisplaying:Z

    goto :goto_1
.end method
