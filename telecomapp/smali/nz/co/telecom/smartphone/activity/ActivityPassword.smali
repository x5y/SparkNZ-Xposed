.class public Lnz/co/telecom/smartphone/activity/ActivityPassword;
.super Lroboguice/activity/RoboActivity;
.source "ActivityPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler;
    }
.end annotation

.annotation runtime Lroboguice/inject/ContentView;
    value = 0x7f030084
.end annotation


# static fields
.field public static final NETWORK_ERROR_DIALOG_ID:I = 0x3e6

.field public static final REGISTRATION_ERROR_DIALOG_ID:I = 0x3e5

.field public static final REGISTRATION_ERROR_DIALOG_NOTIFIER:I = 0x20d

.field public static final REGISTRATION_FIELDS_INVALID_ID:I = 0x3e4

.field public static final SERVER_ERROR_DIALOG_ID:I = 0x3e7

.field public static final STATUS_ERROR_NONE_NOTIFIER:I = 0x205

.field public static final STATUS_FORCE_UPDATE_ERROR_NOTIFIER:I = 0x206

.field public static final STATUS_NETWORK_ERROR_DIALOG_NOTIFIER:I = 0x209

.field public static final STATUS_NETWORK_ERROR_NOTIFIER:I = 0x207

.field public static final STATUS_ONNET_REGISTRATION_NOTIFIER:I = 0x20c

.field public static final STATUS_REGISTRATION_COMPLETE_NOTIFIER:I = 0x20e

.field public static final STATUS_SERVER_ERROR_DIALOG_NOTIFIER:I = 0x20a

.field public static final STATUS_SERVER_ERROR_NOTIFIER:I = 0x208

.field public static final STATUS_START_APP_NOTIFIER:I = 0x203

.field public static final STATUS_START_CONFIG_NOTIFIER:I = 0x201

.field public static final STATUS_START_LOGIN_NOTIFIER:I = 0x202

.field public static final STATUS_START_REGISTRATION_ERROR_NOTIFIER:I = 0x20b

.field public static final STATUS_START_REGISTRATION_NOTIFIER:I = 0x204

.field public static final STATUS_STOP_NOTIFIER:I = 0x200


# instance fields
.field TAG:Ljava/lang/String;

.field private content_frame_top_actionbar_center_logo:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f09008e
    .end annotation
.end field

.field protected dataServices:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private debug:Z

.field private errorMessageFromServer:Ljava/lang/String;

.field private fieldsInvalidMessage:Ljava/lang/String;

.field private isExplanationDisplayed:Z

.field private isSoftLock:Z

.field protected mAccessControlController:Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutInflater:Landroid/view/LayoutInflater;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mMobilePhoneNumber:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectExtra;
        value = "mobile.phone.number"
    .end annotation
.end field

.field private mNetworkUtils:Lnz/co/telecom/smartphone/util/NetworkUtils;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private minimumChars:I

.field private no_data_error_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f09011c
    .end annotation
.end field

.field private no_data_error_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f09011b
    .end annotation
.end field

.field no_data_icons_layout:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f09011e
    .end annotation
.end field

.field private rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

.field private register_on_or_off_net:Z
    .annotation runtime Lroboguice/inject/InjectExtra;
        value = "register_on_or_off_net"
    .end annotation
.end field

.field private register_password_content_no_data_error:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901fe
    .end annotation
.end field

.field private register_password_explanation_layout:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f090201
    .end annotation
.end field

.field private register_password_main_message:Lnz/co/telecom/smartphone/widget/TMYTextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901f4
    .end annotation
.end field

.field private register_password_non_text_device_text_link:Lnz/co/telecom/smartphone/widget/TMYTextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901f7
    .end annotation
.end field

.field private register_password_password:Lnz/co/telecom/smartphone/widget/TMYEditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901fb
    .end annotation
.end field

.field private register_password_password_confirm_edit_text:Lnz/co/telecom/smartphone/widget/TMYEditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901fc
    .end annotation
.end field

.field private register_password_request_new_code_tv:Lnz/co/telecom/smartphone/widget/TMYTextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901f6
    .end annotation
.end field

.field private register_password_sign_in_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901fd
    .end annotation
.end field

.field private register_password_splash_layout:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f090200
    .end annotation
.end field

.field private register_password_verification_code_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901f5
    .end annotation
.end field

.field private register_session_id:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectExtra;
        value = "register_session_id"
    .end annotation
.end field

.field private register_token_id:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectExtra;
        optional = true
        value = "register_token_id"
    .end annotation
.end field

.field protected registrationController:Lnz/co/telecom/smartphone/controller/RegistrationControllerInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private reset_password_flag:Z
    .annotation runtime Lroboguice/inject/InjectExtra;
        value = "reset_password_flag"
    .end annotation
.end field

.field private sharePref:Landroid/content/SharedPreferences;

.field protected textViewSplashBuildDisplay:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901ba
    .end annotation
.end field

.field private validatePassword:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lroboguice/activity/RoboActivity;-><init>()V

    .line 60
    const-string v0, "ActivityPassword"

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->errorMessageFromServer:Ljava/lang/String;

    .line 94
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z

    .line 160
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->isSoftLock:Z

    .line 161
    const/4 v0, 0x1

    iput v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->minimumChars:I

    .line 162
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->validatePassword:Z

    .line 163
    const-string v0, ""

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->fieldsInvalidMessage:Ljava/lang/String;

    .line 164
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->isExplanationDisplayed:Z

    .line 362
    return-void
.end method

.method static synthetic access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 59
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z

    return v0
.end method

.method static synthetic access$100(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 59
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->validatePassword:Z

    return v0
.end method

.method static synthetic access$1000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 59
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->validateAllFields()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lnz/co/telecom/smartphone/activity/ActivityPassword;Z)Z
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->validatePassword:Z

    return p1
.end method

.method static synthetic access$1100(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/widget/TMYEditText;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 59
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_password:Lnz/co/telecom/smartphone/widget/TMYEditText;

    return-object v0
.end method

.method static synthetic access$1200(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 59
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_token_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 59
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_session_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/widget/TMYEditText;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 59
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_verification_code_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    return-object v0
.end method

.method static synthetic access$1500(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 59
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->mMobilePhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 59
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    return-object v0
.end method

.method static synthetic access$1602(Lnz/co/telecom/smartphone/activity/ActivityPassword;Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    .prologue
    .line 59
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    return-object p1
.end method

.method static synthetic access$1700(Lnz/co/telecom/smartphone/activity/ActivityPassword;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->createMessage(I)V

    return-void
.end method

.method static synthetic access$1802(Lnz/co/telecom/smartphone/activity/ActivityPassword;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->errorMessageFromServer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lnz/co/telecom/smartphone/activity/ActivityPassword;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 59
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->displayRegistrationFieldsDialog()V

    return-void
.end method

.method static synthetic access$200(Lnz/co/telecom/smartphone/activity/ActivityPassword;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->verifyPassword(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lnz/co/telecom/smartphone/activity/ActivityPassword;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->displayRequestCodeError(I)V

    return-void
.end method

.method static synthetic access$2100(Lnz/co/telecom/smartphone/activity/ActivityPassword;Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->accessControlLoginHandler(Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lnz/co/telecom/smartphone/activity/ActivityPassword;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 59
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->showErrorOnAutoLogin()V

    return-void
.end method

.method static synthetic access$2300(Lnz/co/telecom/smartphone/activity/ActivityPassword;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 59
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->displayMainFrame()V

    return-void
.end method

.method static synthetic access$2400(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 59
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lnz/co/telecom/smartphone/activity/ActivityPassword;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->toggleProgressBar(I)V

    return-void
.end method

.method static synthetic access$400(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 59
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_content_no_data_error:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 59
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->no_data_error_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    return-object v0
.end method

.method static synthetic access$600(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 59
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->no_data_error_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object v0
.end method

.method static synthetic access$700(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 59
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_on_or_off_net:Z

    return v0
.end method

.method static synthetic access$800(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 59
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->isSoftLock:Z

    return v0
.end method

.method static synthetic access$900(Lnz/co/telecom/smartphone/activity/ActivityPassword;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 59
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->displayTooManyAttempsDialog()V

    return-void
.end method

.method private accessControlLoginHandler(Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;)Z
    .locals 2
    .param p1, "accessControlLoginDTO"    # Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;

    .prologue
    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "isErrorPresent":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;->getTokenId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;->getException()Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 574
    :cond_0
    const/4 v0, 0x1

    .line 577
    :cond_1
    return v0
.end method

.method private createMessage(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 649
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 650
    .local v0, "m":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 651
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 652
    return-void
.end method

.method private displayExplainFlows()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_explanation_layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->isExplanationDisplayed:Z

    .line 317
    const-string v0, "register:notextinfo"

    invoke-static {v0}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method private displayMainFrame()V
    .locals 2

    .prologue
    .line 629
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragBase;->requestRefreshAll()V

    .line 631
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 632
    .local v0, "signInIntent":Landroid/content/Intent;
    const-class v1, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 633
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 634
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 635
    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->startActivity(Landroid/content/Intent;)V

    .line 636
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->finish()V

    .line 637
    return-void
.end method

.method private displayRegistrationFieldsDialog()V
    .locals 8

    .prologue
    .line 684
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 685
    .local v4, "subDialog":Landroid/app/Dialog;
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030045

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 686
    .local v0, "fieldsErrorDialog":Landroid/view/View;
    const v5, 0x7f090132

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 687
    .local v3, "popup_dialog_title_TV":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    const v5, 0x7f090133

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 688
    .local v1, "popup_dialog_content_TV":Lnz/co/telecom/smartphone/widget/TMYTextView;
    const v5, 0x7f090136

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 689
    .local v2, "popup_dialog_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 690
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->fieldsInvalidMessage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    new-instance v5, Lnz/co/telecom/smartphone/activity/ActivityPassword$7;

    invoke-direct {v5, p0, v4}, Lnz/co/telecom/smartphone/activity/ActivityPassword$7;-><init>(Lnz/co/telecom/smartphone/activity/ActivityPassword;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    new-instance v5, Lnz/co/telecom/smartphone/activity/ActivityPassword$8;

    invoke-direct {v5, p0, v4}, Lnz/co/telecom/smartphone/activity/ActivityPassword$8;-><init>(Lnz/co/telecom/smartphone/activity/ActivityPassword;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 704
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 705
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 706
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 707
    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 708
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 709
    return-void
.end method

.method private displayRequestCodeError(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 640
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_request_new_code_tv:Lnz/co/telecom/smartphone/widget/TMYTextView;

    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    .line 641
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->toggleProgressBar(I)V

    .line 642
    return-void
.end method

.method private displayTooManyAttempsDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 655
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 656
    .local v4, "subDialog":Landroid/app/Dialog;
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030045

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 657
    .local v0, "fieldsErrorDialog":Landroid/view/View;
    const v5, 0x7f090132

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 658
    .local v3, "popup_dialog_title_TV":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    const v5, 0x7f090133

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 659
    .local v1, "popup_dialog_content_TV":Lnz/co/telecom/smartphone/widget/TMYTextView;
    const v5, 0x7f090136

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 660
    .local v2, "popup_dialog_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-virtual {v3, v8}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 661
    const v5, 0x7f0e0064

    invoke-virtual {p0, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    const v5, 0x7f0e00c8

    invoke-virtual {p0, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    new-instance v5, Lnz/co/telecom/smartphone/activity/ActivityPassword$5;

    invoke-direct {v5, p0, v4}, Lnz/co/telecom/smartphone/activity/ActivityPassword$5;-><init>(Lnz/co/telecom/smartphone/activity/ActivityPassword;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    new-instance v5, Lnz/co/telecom/smartphone/activity/ActivityPassword$6;

    invoke-direct {v5, p0, v4}, Lnz/co/telecom/smartphone/activity/ActivityPassword$6;-><init>(Lnz/co/telecom/smartphone/activity/ActivityPassword;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 676
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 677
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 678
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 679
    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 680
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 681
    return-void
.end method

.method private hideExplainFlows()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_explanation_layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->isExplanationDisplayed:Z

    .line 323
    return-void
.end method

.method private replaceNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "oneVal"    # Ljava/lang/String;

    .prologue
    .line 622
    if-nez p1, :cond_0

    .line 623
    const-string p1, ""

    .line 624
    :cond_0
    return-object p1
.end method

.method private showErrorOnAutoLogin()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 581
    const v7, 0x7f0e00bc

    invoke-virtual {p0, v7}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "errorMessage":Ljava/lang/String;
    const v7, 0x7f0e00c7

    invoke-virtual {p0, v7}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, "errorMessageTitle":Ljava/lang/String;
    new-instance v6, Landroid/app/Dialog;

    invoke-direct {v6, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 584
    .local v6, "subDialog":Landroid/app/Dialog;
    iget-object v7, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030045

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 585
    .local v2, "myDialogView":Landroid/view/View;
    const v7, 0x7f090132

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 586
    .local v5, "popup_dialog_title_TV":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    const v7, 0x7f090133

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 587
    .local v3, "popup_dialog_content_TV":Lnz/co/telecom/smartphone/widget/TMYTextView;
    const v7, 0x7f090136

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 588
    .local v4, "popup_dialog_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    new-instance v7, Lnz/co/telecom/smartphone/activity/ActivityPassword$4;

    invoke-direct {v7, p0, v6}, Lnz/co/telecom/smartphone/activity/ActivityPassword$4;-><init>(Lnz/co/telecom/smartphone/activity/ActivityPassword;Landroid/app/Dialog;)V

    invoke-virtual {v4, v7}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    invoke-virtual {v5, v10}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 599
    invoke-virtual {v5, v1}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    invoke-virtual {v3, v0}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 602
    invoke-virtual {v6, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 603
    invoke-virtual {v6, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 604
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 605
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 606
    invoke-virtual {v6, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 607
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 608
    return-void
.end method

.method private showRegister()V
    .locals 3

    .prologue
    .line 611
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->mContext:Landroid/content/Context;

    const-class v2, Lnz/co/telecom/smartphone/activity/ActivityRegister;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 612
    .local v0, "registerIntent":Landroid/content/Intent;
    const v1, 0x7f0e00ad

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_on_or_off_net:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 613
    const v1, 0x7f0e00b0

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_token_id:Ljava/lang/String;

    invoke-direct {p0, v2}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    const v1, 0x7f0e00af

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_session_id:Ljava/lang/String;

    invoke-direct {p0, v2}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    const-string v1, "reset_password_flag"

    iget-boolean v2, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->reset_password_flag:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 616
    const-string v1, "mobile.phone.number"

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->mMobilePhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->startActivity(Landroid/content/Intent;)V

    .line 618
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->finish()V

    .line 619
    return-void
.end method

.method private toggleProgressBar(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 645
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_splash_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 646
    return-void
.end method

.method private validateAllFields()Z
    .locals 6

    .prologue
    const v5, 0x7f0e0085

    const v4, 0x7f0e0051

    const v3, 0x7f0e0052

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "allValid":Z
    iget-boolean v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_on_or_off_net:Z

    if-eqz v1, :cond_5

    .line 271
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_password:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_password_confirm_edit_text:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 272
    :cond_0
    invoke-virtual {p0, v3}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->fieldsInvalidMessage:Ljava/lang/String;

    .line 295
    :goto_0
    iget-boolean v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validatePassword "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->validatePassword:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1
    return v0

    .line 273
    :cond_2
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_password:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_password_confirm_edit_text:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 274
    invoke-virtual {p0, v4}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->fieldsInvalidMessage:Ljava/lang/String;

    goto :goto_0

    .line 275
    :cond_3
    iget-boolean v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->validatePassword:Z

    if-nez v1, :cond_4

    .line 276
    invoke-virtual {p0, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->fieldsInvalidMessage:Ljava/lang/String;

    goto :goto_0

    .line 278
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 281
    :cond_5
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_verification_code_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_password:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_password_confirm_edit_text:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 282
    :cond_6
    invoke-virtual {p0, v3}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->fieldsInvalidMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 283
    :cond_7
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_verification_code_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    .line 284
    const v1, 0x7f0e00fd

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->fieldsInvalidMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 285
    :cond_8
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_password:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_password_confirm_edit_text:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 286
    :cond_9
    invoke-virtual {p0, v3}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->fieldsInvalidMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 287
    :cond_a
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_password:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_password_confirm_edit_text:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 288
    invoke-virtual {p0, v4}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->fieldsInvalidMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 289
    :cond_b
    iget-boolean v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->validatePassword:Z

    if-nez v1, :cond_c

    .line 290
    invoke-virtual {p0, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->fieldsInvalidMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 292
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private verifyPassword(Ljava/lang/String;)Z
    .locals 7
    .param p1, "onePassword"    # Ljava/lang/String;

    .prologue
    .line 241
    const/4 v3, 0x0

    .line 242
    .local v3, "valid":Z
    const/4 v0, 0x0

    .line 243
    .local v0, "chars":I
    const/4 v2, 0x0

    .line 244
    .local v2, "numbers":I
    iget-boolean v4, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z

    if-eqz v4, :cond_0

    .line 245
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyPassword "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 247
    iget-boolean v4, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z

    if-eqz v4, :cond_1

    .line 248
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyPassword onePassword.charAt(i) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 250
    add-int/lit8 v0, v0, 0x1

    .line 252
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 253
    add-int/lit8 v2, v2, 0x1

    .line 246
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_4
    iget-boolean v4, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z

    if-eqz v4, :cond_5

    .line 257
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyPassword chars "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_5
    iget-boolean v4, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z

    if-eqz v4, :cond_6

    .line 259
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyPassword numbers "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_6
    iget v4, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->minimumChars:I

    if-lt v0, v4, :cond_7

    const/4 v4, 0x1

    if-lt v2, v4, :cond_7

    .line 261
    const/4 v3, 0x1

    .line 265
    :goto_1
    return v3

    .line 263
    :cond_7
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected displayExitWarningDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 326
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 327
    .local v3, "subDialog":Landroid/app/Dialog;
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03001b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 328
    .local v0, "myDialogView":Landroid/view/View;
    const v4, 0x7f09008a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 329
    .local v2, "popup_dialog_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const v4, 0x7f09008b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 330
    .local v1, "popup_dialog_cancel_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    new-instance v4, Lnz/co/telecom/smartphone/activity/ActivityPassword$2;

    invoke-direct {v4, p0, v3}, Lnz/co/telecom/smartphone/activity/ActivityPassword$2;-><init>(Lnz/co/telecom/smartphone/activity/ActivityPassword;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    new-instance v4, Lnz/co/telecom/smartphone/activity/ActivityPassword$3;

    invoke-direct {v4, p0, v3}, Lnz/co/telecom/smartphone/activity/ActivityPassword$3;-><init>(Lnz/co/telecom/smartphone/activity/ActivityPassword;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 346
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 347
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 349
    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 350
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 351
    return-void
.end method

.method public initializeHandler()V
    .locals 1

    .prologue
    .line 564
    new-instance v0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler;-><init>(Lnz/co/telecom/smartphone/activity/ActivityPassword;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->mHandler:Landroid/os/Handler;

    .line 565
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->isExplanationDisplayed:Z

    if-eqz v0, :cond_0

    .line 356
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->hideExplainFlows()V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->displayExitWarningDialog()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 301
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->mNetworkUtils:Lnz/co/telecom/smartphone/util/NetworkUtils;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/util/NetworkUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    const/16 v0, 0x209

    invoke-direct {p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->createMessage(I)V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901fd

    if-ne v0, v1, :cond_2

    .line 305
    const/16 v0, 0x204

    invoke-direct {p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->createMessage(I)V

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901f6

    if-ne v0, v1, :cond_3

    .line 307
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->showRegister()V

    goto :goto_0

    .line 308
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901f7

    if-ne v0, v1, :cond_0

    .line 309
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->displayExplainFlows()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 168
    invoke-super {p0, p1}, Lroboguice/activity/RoboActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    iput-object p0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->mContext:Landroid/content/Context;

    .line 170
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->sharePref:Landroid/content/SharedPreferences;

    .line 171
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->sharePref:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->isSoftLock:Z

    .line 172
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->allowDeviceLogging()Z

    move-result v0

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z

    .line 174
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register_on_or_off_net "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_on_or_off_net:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register_token_id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_token_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register_session_id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_session_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset_password_flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->reset_password_flag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_sign_in_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v0, p0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_on_or_off_net:Z

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_verification_code_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v0, v4}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_main_message:Lnz/co/telecom/smartphone/widget/TMYTextView;

    invoke-virtual {v0, v4}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_request_new_code_tv:Lnz/co/telecom/smartphone/widget/TMYTextView;

    invoke-virtual {v0, v4}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_non_text_device_text_link:Lnz/co/telecom/smartphone/widget/TMYTextView;

    invoke-virtual {v0, v4}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    .line 197
    :goto_0
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->reset_password_flag:Z

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->content_frame_top_actionbar_center_logo:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    const v1, 0x7f0e001a

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(I)V

    .line 202
    :goto_1
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_password:Lnz/co/telecom/smartphone/widget/TMYEditText;

    new-instance v1, Lnz/co/telecom/smartphone/activity/ActivityPassword$1;

    invoke-direct {v1, p0}, Lnz/co/telecom/smartphone/activity/ActivityPassword$1;-><init>(Lnz/co/telecom/smartphone/activity/ActivityPassword;)V

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 232
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_non_text_device_text_link:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 233
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->hideExplainFlows()V

    .line 234
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->initializeHandler()V

    .line 235
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 237
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->textViewSplashBuildDisplay:Landroid/widget/TextView;

    invoke-static {}, Lnz/co/telecom/smartphone/util/AndroidUtils;->getBuildVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_verification_code_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_main_message:Lnz/co/telecom/smartphone/widget/TMYTextView;

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_request_new_code_tv:Lnz/co/telecom/smartphone/widget/TMYTextView;

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_request_new_code_tv:Lnz/co/telecom/smartphone/widget/TMYTextView;

    invoke-virtual {v0, p0}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_non_text_device_text_link:Lnz/co/telecom/smartphone/widget/TMYTextView;

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_non_text_device_text_link:Lnz/co/telecom/smartphone/widget/TMYTextView;

    invoke-virtual {v0, p0}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->content_frame_top_actionbar_center_logo:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    const v1, 0x7f0e00aa

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(I)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 714
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 715
    .local v4, "subDialog":Landroid/app/Dialog;
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030045

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 716
    .local v0, "myDialogView":Landroid/view/View;
    const v5, 0x7f090132

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 717
    .local v3, "popup_dialog_title_TV":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    const v5, 0x7f090133

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 718
    .local v1, "popup_dialog_content_TV":Lnz/co/telecom/smartphone/widget/TMYTextView;
    const v5, 0x7f090136

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 719
    .local v2, "popup_dialog_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 720
    new-instance v5, Lnz/co/telecom/smartphone/activity/ActivityPassword$9;

    invoke-direct {v5, p0, v4}, Lnz/co/telecom/smartphone/activity/ActivityPassword$9;-><init>(Lnz/co/telecom/smartphone/activity/ActivityPassword;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 727
    new-instance v5, Lnz/co/telecom/smartphone/activity/ActivityPassword$10;

    invoke-direct {v5, p0, v4}, Lnz/co/telecom/smartphone/activity/ActivityPassword$10;-><init>(Lnz/co/telecom/smartphone/activity/ActivityPassword;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    packed-switch p1, :pswitch_data_0

    .line 750
    :goto_0
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 751
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 752
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 753
    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 754
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 755
    invoke-super {p0, p1}, Lroboguice/activity/RoboActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    return-object v5

    .line 736
    :pswitch_0
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->errorMessageFromServer:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 739
    :pswitch_1
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0079

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 742
    :pswitch_2
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->mContext:Landroid/content/Context;

    const v6, 0x7f0e00c5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 745
    :pswitch_3
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->fieldsInvalidMessage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 733
    nop

    :pswitch_data_0
    .packed-switch 0x3e4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
