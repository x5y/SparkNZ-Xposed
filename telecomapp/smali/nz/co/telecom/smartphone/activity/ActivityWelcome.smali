.class public Lnz/co/telecom/smartphone/activity/ActivityWelcome;
.super Lroboguice/activity/RoboActivity;
.source "ActivityWelcome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyCountDownTimer;,
        Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler;
    }
.end annotation

.annotation runtime Lroboguice/inject/ContentView;
    value = 0x7f030081
.end annotation


# static fields
.field public static final EK_IS_FROM_CRASH:Ljava/lang/String; = "is.from.crash"

.field public static final EK_IS_FROM_LOGOUT_ACTIVITY:Ljava/lang/String; = "is.from.logout.activity"

.field public static final EK_IS_FROM_SESSION_EXPIRY:Ljava/lang/String; = "is.from.session.expiry"

.field public static final NETWORK_ERROR_DIALOG_ID:I = 0x3e6

.field public static final SERVER_ERROR_DIALOG_ID:I = 0x3e7

.field public static final STATUS_ERROR_NONE_NOTIFIER:I = 0x205

.field public static final STATUS_FORCE_UPDATE_ERROR_NOTIFIER:I = 0x206

.field public static final STATUS_NETWORK_ERROR_DIALOG_NOTIFIER:I = 0x209

.field public static final STATUS_NETWORK_ERROR_NOTIFIER:I = 0x207

.field public static final STATUS_SERVER_ERROR_DIALOG_NOTIFIER:I = 0x20a

.field public static final STATUS_SERVER_ERROR_NOTIFIER:I = 0x208

.field public static final STATUS_SOFTLOCK_NOTIFIER:I = 0x20c

.field public static final STATUS_START_APP_NOTIFIER:I = 0x203

.field public static final STATUS_START_AUTO_LOGIN_NOTIFIER:I = 0x20b

.field public static final STATUS_START_CONFIG_NOTIFIER:I = 0x201

.field public static final STATUS_START_LOGIN_NOTIFIER:I = 0x202

.field public static final STATUS_STOP_NOTIFIER:I = 0x200

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private SOFT_LOCK_TIME:I

.field protected content_no_data_error:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901d9
    .end annotation
.end field

.field protected mAccessControlController:Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mConfigProfileDTO:Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;

.field private mContext:Landroid/content/Context;

.field protected mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHandler:Landroid/os/Handler;

.field mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mIsFromCrash:Z
    .annotation runtime Lroboguice/inject/InjectExtra;
        optional = true
        value = "is.from.crash"
    .end annotation
.end field

.field protected mIsFromLogout:Z
    .annotation runtime Lroboguice/inject/InjectExtra;
        optional = true
        value = "is.from.logout.activity"
    .end annotation
.end field

.field protected mIsFromSessionExpiry:Z
    .annotation runtime Lroboguice/inject/InjectExtra;
        optional = true
        value = "is.from.session.expiry"
    .end annotation
.end field

.field private mIsProcessingLoginRequest:Z

.field private mIsUserNameSetFromWhoAmI:Z

.field protected mLayoutInflater:Landroid/view/LayoutInflater;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNetworkUtils:Lnz/co/telecom/smartphone/util/NetworkUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mRegistrationController:Lnz/co/telecom/smartphone/controller/RegistrationControllerInterface;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRunnableHideKeyboard:Ljava/lang/Runnable;

.field private mTelecomMobileNumberTextWatcher:Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;

.field private mTopContainerPaddingBottom:I

.field private mTopLayoutContainer:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901ce
    .end annotation
.end field

.field private mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

.field protected no_data_error_IV:Landroid/widget/ImageView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f09011d
    .end annotation
.end field

.field protected no_data_error_TV:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f09011c
    .end annotation
.end field

.field protected no_data_error_title_TV:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f09011b
    .end annotation
.end field

.field protected no_data_error_try_again_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f090122
    .end annotation
.end field

.field protected no_data_icons_layout:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f09011e
    .end annotation
.end field

.field private sharePref:Landroid/content/SharedPreferences;

.field protected textViewSplashBuildDisplay:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901ba
    .end annotation
.end field

.field protected textViewVersionBuildDisplay:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901da
    .end annotation
.end field

.field private welcomeScrollercontainer:Landroid/widget/ScrollView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901cd
    .end annotation
.end field

.field protected welcome_main_forgot_password:Lnz/co/telecom/smartphone/widget/TMYTextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901d7
    .end annotation
.end field

.field private welcome_main_main_layout:Landroid/widget/LinearLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901cb
    .end annotation
.end field

.field private welcome_main_mobile_no_ET:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901d0
    .end annotation
.end field

.field protected welcome_main_password_ET:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901d2
    .end annotation
.end field

.field protected welcome_progress_bar:Landroid/widget/ProgressBar;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901d8
    .end annotation
.end field

.field protected welcome_register_btn:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901d6
    .end annotation
.end field

.field protected welcome_signin_btn:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901d4
    .end annotation
.end field

.field protected welcome_splash_layout:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901cc
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lroboguice/activity/RoboActivity;-><init>()V

    .line 172
    iput-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mIsProcessingLoginRequest:Z

    .line 176
    iput-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mIsUserNameSetFromWhoAmI:Z

    .line 573
    new-instance v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$2;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$2;-><init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mRunnableHideKeyboard:Ljava/lang/Runnable;

    .line 853
    const v0, 0xdbba0

    iput v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->SOFT_LOCK_TIME:I

    .line 862
    return-void
.end method

.method static synthetic access$000(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityWelcome;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V

    return-void
.end method

.method static synthetic access$100(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityWelcome;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->toggleSplashScreen(I)V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    .prologue
    .line 72
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->processUserRegistration()V

    return-void
.end method

.method static synthetic access$1200(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    .prologue
    .line 72
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->loginCallbackHandler()V

    return-void
.end method

.method static synthetic access$1302(Lnz/co/telecom/smartphone/activity/ActivityWelcome;Z)Z
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityWelcome;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mIsUserNameSetFromWhoAmI:Z

    return p1
.end method

.method static synthetic access$1400(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    .prologue
    .line 72
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->sharePref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityWelcome;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->toggleProgressBar(I)V

    return-void
.end method

.method static synthetic access$300(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    .prologue
    .line 72
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->softLockCOuntdown()V

    return-void
.end method

.method static synthetic access$400(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    .prologue
    .line 72
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->startMainNavigationPage()V

    return-void
.end method

.method static synthetic access$500(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    .prologue
    .line 72
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lnz/co/telecom/smartphone/activity/ActivityWelcome;Z)Z
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityWelcome;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mIsProcessingLoginRequest:Z

    return p1
.end method

.method static synthetic access$700(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    .prologue
    .line 72
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    return-object v0
.end method

.method static synthetic access$800(Lnz/co/telecom/smartphone/activity/ActivityWelcome;Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityWelcome;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->accessControlLoginHandler(Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;)V

    return-void
.end method

.method static synthetic access$900(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    .prologue
    .line 72
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_mobile_no_ET:Landroid/widget/EditText;

    return-object v0
.end method

.method private accessControlLoginHandler(Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;)V
    .locals 8
    .param p1, "accessControlLoginDTO"    # Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;

    .prologue
    const/16 v6, 0x20a

    .line 762
    const/4 v5, 0x0

    iput-boolean v5, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mIsProcessingLoginRequest:Z

    .line 764
    const/4 v4, 0x0

    .line 766
    .local v4, "isErrorPresent":Z
    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;->getTokenId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;->getException()Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;

    move-result-object v5

    if-nez v5, :cond_0

    .line 767
    invoke-direct {p0, v6}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V

    .line 842
    :goto_0
    return-void

    .line 771
    :cond_0
    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;->getTokenId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;->getException()Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 772
    const/4 v4, 0x1

    .line 773
    const/4 v0, 0x0

    .line 774
    .local v0, "errorMessage":Ljava/lang/String;
    const v5, 0x7f0e00c7

    invoke-virtual {p0, v5}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, "errorMessageTitle":Ljava/lang/String;
    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;->getException()Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;->isExceptionTypeInvalidCredentials()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 777
    const v5, 0x7f0e0062

    invoke-virtual {p0, v5}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 789
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 790
    move-object v1, v0

    .line 791
    .local v1, "errorMessageForDisplay":Ljava/lang/String;
    move-object v3, v2

    .line 793
    .local v3, "errorMessageTitleForDisplay":Ljava/lang/String;
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mHandler:Landroid/os/Handler;

    new-instance v6, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9;

    invoke-direct {v6, p0, v3, v1}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9;-><init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 832
    .end local v1    # "errorMessageForDisplay":Ljava/lang/String;
    .end local v3    # "errorMessageTitleForDisplay":Ljava/lang/String;
    :cond_2
    const/16 v5, 0x205

    invoke-direct {p0, v5}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V

    goto :goto_0

    .line 779
    :cond_3
    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;->getException()Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;->isExceptionTypeIdentitySoftLocked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 780
    const v5, 0x7f0e0064

    invoke-virtual {p0, v5}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 781
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->sharePref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mContext:Landroid/content/Context;

    const v7, 0x7f0e00c9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 782
    const/16 v5, 0x20c

    invoke-direct {p0, v5}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V

    .line 783
    const v5, 0x7f0e00c8

    invoke-virtual {p0, v5}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 785
    :cond_4
    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;->getException()Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;->isExceptionTypeMaximumSessionsExceeded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 786
    const v5, 0x7f0e0063

    invoke-virtual {p0, v5}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 836
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v2    # "errorMessageTitle":Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_6

    .line 837
    invoke-direct {p0, v6}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V

    goto/16 :goto_0

    .line 841
    :cond_6
    const/16 v5, 0x203

    invoke-direct {p0, v5}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V

    goto/16 :goto_0
.end method

.method private createMessage(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 536
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 537
    .local v0, "m":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 538
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 539
    return-void
.end method

.method private loginButtonHandler()V
    .locals 2

    .prologue
    .line 589
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mIsProcessingLoginRequest:Z

    if-eqz v0, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_mobile_no_ET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_mobile_no_ET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_password_ET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_password_ET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_mobile_no_ET:Landroid/widget/EditText;

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mRunnableHideKeyboard:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private loginCallbackHandler()V
    .locals 3

    .prologue
    .line 615
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_mobile_no_ET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "mobileNumberUI":Ljava/lang/String;
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_mobile_no_ET:Landroid/widget/EditText;

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_mobile_no_ET:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_password_ET:Landroid/widget/EditText;

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_password_ET:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getUserCredentials()Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    .line 622
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserMobileNumber()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserMobileNumberPrevious()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserMobileNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 623
    :cond_0
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragBase;->requestRefreshAll()V

    .line 624
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->clearCache()V

    .line 627
    :cond_1
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserMobileNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserMobileNumberPrevious(Ljava/lang/String;)V

    .line 629
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-virtual {v1, v0}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserMobileNumber(Ljava/lang/String;)V

    .line 630
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_password_ET:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserPassword(Ljava/lang/String;)V

    .line 631
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setSessionToken(Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-interface {v1, v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->storeUserCredentials(Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;)V

    .line 635
    const/16 v1, 0x202

    invoke-direct {p0, v1}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V

    .line 636
    return-void
.end method

.method private performSessionLogout(Z)V
    .locals 2
    .param p1, "clearTokenOnly"    # Z

    .prologue
    .line 845
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnz/co/telecom/smartphone/activity/ActivityWelcome$10;

    invoke-direct {v1, p0, p1}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$10;-><init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 851
    return-void
.end method

.method private processUserRegistration()V
    .locals 6

    .prologue
    .line 692
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->performSessionLogout(Z)V

    .line 693
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v4}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getUserCredentials()Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    .line 698
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->isAutoSignin()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 700
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserMobileNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserMobileNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserPassword()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 701
    new-instance v2, Lnz/co/telecom/smartphone/activity/ActivityWelcome$5;

    invoke-direct {v2, p0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$5;-><init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V

    .line 707
    .local v2, "ru":Ljava/lang/Runnable;
    new-instance v1, Lnz/co/telecom/smartphone/activity/ActivityWelcome$6;

    invoke-direct {v1, p0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$6;-><init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V

    .line 714
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 754
    .end local v1    # "r":Ljava/lang/Runnable;
    .end local v2    # "ru":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 718
    :cond_0
    const/16 v4, 0x205

    invoke-direct {p0, v4}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V

    .line 721
    :cond_1
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mNetworkUtils:Lnz/co/telecom/smartphone/util/NetworkUtils;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/util/NetworkUtils;->isOnNet()Z

    move-result v0

    .line 726
    .local v0, "isOnNet":Z
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserMobileNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserMobileNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 727
    :cond_2
    if-eqz v0, :cond_3

    .line 728
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mAccessControlController:Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;

    invoke-interface {v4}, Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;->invokeWhoAmI()Lnz/co/telecom/smartphone/dto/registration/WhoAmIDTO;

    move-result-object v3

    .line 729
    .local v3, "whoAmIDTOa":Lnz/co/telecom/smartphone/dto/registration/WhoAmIDTO;
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserMobileNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserMobileNumberPrevious(Ljava/lang/String;)V

    .line 730
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/registration/WhoAmIDTO;->getMdn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserMobileNumber(Ljava/lang/String;)V

    .line 731
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setSessionToken(Ljava/lang/String;)V

    .line 735
    .end local v3    # "whoAmIDTOa":Lnz/co/telecom/smartphone/dto/registration/WhoAmIDTO;
    :cond_3
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    invoke-interface {v4, v5}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->storeUserCredentials(Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;)V

    .line 737
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_mobile_no_ET:Landroid/widget/EditText;

    new-instance v5, Lnz/co/telecom/smartphone/activity/ActivityWelcome$7;

    invoke-direct {v5, p0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$7;-><init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 745
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_password_ET:Landroid/widget/EditText;

    new-instance v5, Lnz/co/telecom/smartphone/activity/ActivityWelcome$8;

    invoke-direct {v5, p0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$8;-><init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private registerButtonHandler()V
    .locals 3

    .prologue
    .line 559
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnz/co/telecom/smartphone/activity/ActivityRegister;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 560
    .local v0, "registerIntent":Landroid/content/Intent;
    const-string v1, "mobile.phone.number"

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_mobile_no_ET:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    const-string v1, "reset_password_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 562
    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->startActivity(Landroid/content/Intent;)V

    .line 563
    return-void
.end method

.method private resetLinkHandler()V
    .locals 3

    .prologue
    .line 567
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnz/co/telecom/smartphone/activity/ActivityRegister;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 568
    .local v0, "resetIntent":Landroid/content/Intent;
    const-string v1, "mobile.phone.number"

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_mobile_no_ET:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string v1, "reset_password_flag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 570
    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->startActivity(Landroid/content/Intent;)V

    .line 571
    return-void
.end method

.method private softLockCOuntdown()V
    .locals 6

    .prologue
    .line 858
    new-instance v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyCountDownTimer;

    iget v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->SOFT_LOCK_TIME:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyCountDownTimer;-><init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome;JJ)V

    .line 859
    .local v0, "softLockTimer":Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyCountDownTimer;
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyCountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 860
    return-void
.end method

.method private startMainNavigationPage()V
    .locals 2

    .prologue
    .line 527
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 528
    .local v0, "mainNavigation":Landroid/content/Intent;
    const-class v1, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 529
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 530
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 531
    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->startActivity(Landroid/content/Intent;)V

    .line 532
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->finish()V

    .line 533
    return-void
.end method

.method private toggleProgressBar(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 514
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_progress_bar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 515
    return-void
.end method

.method private toggleSplashScreen(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x0

    .line 518
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_splash_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 519
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 520
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mTopLayoutContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mTopLayoutContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mTopLayoutContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mTopContainerPaddingBottom:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 524
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mTopLayoutContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mTopLayoutContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mTopLayoutContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public getIsUserNameSetFromWhoAmI()Z
    .locals 1

    .prologue
    .line 884
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mIsUserNameSetFromWhoAmI:Z

    return v0
.end method

.method public getTelecomMobileNumberTextWatcher()Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mTelecomMobileNumberTextWatcher:Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;

    return-object v0
.end method

.method public initializeHandler()V
    .locals 1

    .prologue
    .line 510
    new-instance v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler;-><init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mHandler:Landroid/os/Handler;

    .line 511
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 542
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mNetworkUtils:Lnz/co/telecom/smartphone/util/NetworkUtils;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/util/NetworkUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    const/16 v0, 0x209

    invoke-direct {p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901d4

    if-ne v0, v1, :cond_2

    .line 546
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->loginButtonHandler()V

    goto :goto_0

    .line 547
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901d6

    if-ne v0, v1, :cond_3

    .line 548
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->registerButtonHandler()V

    goto :goto_0

    .line 549
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901d7

    if-ne v0, v1, :cond_0

    .line 550
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->resetLinkHandler()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0e00c9

    const/4 v4, 0x0

    .line 223
    invoke-super {p0, p1}, Lroboguice/activity/RoboActivity;->onCreate(Landroid/os/Bundle;)V

    .line 228
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mIsFromLogout:Z

    if-eqz v3, :cond_1

    .line 229
    :cond_0
    iget-boolean v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mIsFromLogout:Z

    if-nez v3, :cond_6

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v3}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->performSessionLogout(Z)V

    .line 235
    :cond_1
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_error_try_again_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v3, p0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_error_try_again_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    new-instance v5, Lnz/co/telecom/smartphone/activity/ActivityWelcome$1;

    invoke-direct {v5, p0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$1;-><init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V

    invoke-virtual {v3, v5}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_forgot_password:Lnz/co/telecom/smartphone/widget/TMYTextView;

    invoke-virtual {v3, p0}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_forgot_password:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const/16 v5, 0xf

    invoke-static {v3, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 244
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->initializeHandler()V

    .line 246
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_signin_btn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_register_btn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iput-object p0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mContext:Landroid/content/Context;

    .line 250
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->sharePref:Landroid/content/SharedPreferences;

    .line 251
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->sharePref:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 252
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->sharePref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    :cond_2
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mTopLayoutContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v3

    iput v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mTopContainerPaddingBottom:I

    .line 257
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 258
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 259
    sget-object v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Metrics.densityDpi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget-object v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Metrics.scaledDensity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget-object v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Metrics.density = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Metrics.widthPixels = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget-object v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Metrics.heightPixels = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    sget-object v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VERSION.RELEASE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VERSION.INCREMENTAL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    sget-object v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VERSION.SDK_INT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-object v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BOARD = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-object v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BRAND = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEVICE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FINGERPRINT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    sget-object v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HOST = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v3, Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;

    invoke-direct {v3}, Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;-><init>()V

    iput-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mTelecomMobileNumberTextWatcher:Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;

    .line 275
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_mobile_no_ET:Landroid/widget/EditText;

    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mTelecomMobileNumberTextWatcher:Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 277
    invoke-static {}, Lnz/co/telecom/smartphone/util/AndroidUtils;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 279
    .local v0, "info":Landroid/content/pm/PackageInfo;
    sget-object v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VersionCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VersionName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-le v3, v4, :cond_3

    .line 283
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-interface {v3, v4, v5}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->setFirstInstalledTime(J)V

    .line 285
    :cond_3
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->setAppVersionName(Ljava/lang/String;)V

    .line 286
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-interface {v3, v4}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->setAppVersionCode(I)V

    .line 288
    invoke-static {}, Lnz/co/telecom/smartphone/util/AndroidUtils;->getBuildVersion()Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "versionBuildDisplay":Ljava/lang/String;
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->textViewVersionBuildDisplay:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->textViewSplashBuildDisplay:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-static {p0}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->configureAppMeasurement(Landroid/app/Activity;)V

    .line 292
    const/16 v3, 0x201

    invoke-direct {p0, v3}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V

    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, "toastMessage":Ljava/lang/String;
    iget-boolean v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mIsFromCrash:Z

    if-eqz v3, :cond_7

    .line 296
    const v3, 0x7f0e006a

    invoke-virtual {p0, v3}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 306
    :cond_5
    return-void

    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "toastMessage":Ljava/lang/String;
    .end local v2    # "versionBuildDisplay":Ljava/lang/String;
    :cond_6
    move v3, v4

    .line 229
    goto/16 :goto_0

    .line 297
    .restart local v0    # "info":Landroid/content/pm/PackageInfo;
    .restart local v1    # "toastMessage":Ljava/lang/String;
    .restart local v2    # "versionBuildDisplay":Ljava/lang/String;
    :cond_7
    iget-boolean v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mIsFromSessionExpiry:Z

    if-eqz v3, :cond_4

    .line 298
    const v3, 0x7f0e006b

    invoke-virtual {p0, v3}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .param p1, "id"    # I

    .prologue
    const v11, 0x7f0e007a

    const v10, 0x7f0e0079

    const/4 v9, 0x0

    .line 641
    new-instance v5, Landroid/app/Dialog;

    invoke-direct {v5, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 642
    .local v5, "subDialog":Landroid/app/Dialog;
    iget-object v6, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030045

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 643
    .local v0, "myDialogView":Landroid/view/View;
    const v6, 0x7f090132

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 644
    .local v4, "popup_dialog_title_TV":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    const v6, 0x7f090133

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 645
    .local v2, "popup_dialog_content_TV":Lnz/co/telecom/smartphone/widget/TMYTextView;
    const v6, 0x7f090136

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 646
    .local v3, "popup_dialog_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-virtual {v4, v9}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 648
    new-instance v6, Lnz/co/telecom/smartphone/activity/ActivityWelcome$3;

    invoke-direct {v6, p0, v5}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$3;-><init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome;Landroid/app/Dialog;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 655
    new-instance v6, Lnz/co/telecom/smartphone/activity/ActivityWelcome$4;

    invoke-direct {v6, p0, v5}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$4;-><init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome;Landroid/app/Dialog;)V

    invoke-virtual {v3, v6}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    packed-switch p1, :pswitch_data_0

    .line 677
    :goto_0
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 678
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 679
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 680
    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 681
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 682
    invoke-super {p0, p1}, Lroboguice/activity/RoboActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v6

    return-object v6

    .line 663
    :pswitch_0
    invoke-virtual {p0, v11}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v6, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 667
    :pswitch_1
    new-instance v1, Lnz/co/telecom/smartphone/util/NetworkUtils;

    invoke-direct {v1}, Lnz/co/telecom/smartphone/util/NetworkUtils;-><init>()V

    .line 668
    .local v1, "nu":Lnz/co/telecom/smartphone/util/NetworkUtils;
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/util/NetworkUtils;->isNetworkAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 669
    const v6, 0x7f0e00c5

    invoke-virtual {p0, v6}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v6, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mContext:Landroid/content/Context;

    const v7, 0x7f0e00c6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 672
    :cond_0
    invoke-virtual {p0, v11}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v6, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 661
    nop

    :pswitch_data_0
    .packed-switch 0x3e6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 197
    invoke-super {p0, p1}, Lroboguice/activity/RoboActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 198
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 217
    invoke-super {p0}, Lroboguice/activity/RoboActivity;->onPause()V

    .line 218
    invoke-static {}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->stopActivity()V

    .line 219
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Lroboguice/activity/RoboActivity;->onResume()V

    .line 211
    invoke-static {p0}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->startActivity(Landroid/app/Activity;)V

    .line 212
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Lroboguice/activity/RoboActivity;->onStart()V

    .line 203
    return-void
.end method
