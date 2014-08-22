.class public Lnz/co/telecom/smartphone/activity/ActivityRegister;
.super Lroboguice/activity/RoboActivity;
.source "ActivityRegister.java"

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
        Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler;
    }
.end annotation

.annotation runtime Lroboguice/inject/ContentView;
    value = 0x7f030082
.end annotation


# static fields
.field public static final NETWORK_ERROR_DIALOG_ID:I = 0x3e6

.field public static final REGISTRATION_ERROR_DIALOG_ID:I = 0x3e5

.field public static final REGISTRATION_ERROR_DIALOG_NOTIFIER:I = 0x20d

.field public static final REGISTRATION_TAKING_TO_SIGNIN_NOTIFIER:I = 0x20e

.field public static final SERVER_ERROR_DIALOG_ID:I = 0x3e7

.field public static final STATUS_ERROR_NONE_NOTIFIER:I = 0x205

.field public static final STATUS_FORCE_UPDATE_ERROR_NOTIFIER:I = 0x206

.field public static final STATUS_NETWORK_ERROR_DIALOG_NOTIFIER:I = 0x209

.field public static final STATUS_NETWORK_ERROR_NOTIFIER:I = 0x207

.field public static final STATUS_SERVER_ERROR_DIALOG_NOTIFIER:I = 0x20a

.field public static final STATUS_SERVER_ERROR_NOTIFIER:I = 0x208

.field public static final STATUS_START_APP_NOTIFIER:I = 0x203

.field public static final STATUS_START_CONFIG_NOTIFIER:I = 0x201

.field public static final STATUS_START_LOGIN_NOTIFIER:I = 0x202

.field public static final STATUS_START_REGISTRATION_COMPLETE_NOTIFIER:I = 0x20b

.field public static final STATUS_START_REGISTRATION_NOTIFIER:I = 0x204

.field public static final STATUS_START_REGISTRATION_NOT_TELECOM_NOTIFIER:I = 0x20c

.field public static final STATUS_STOP_NOTIFIER:I = 0x200


# instance fields
.field TAG:Ljava/lang/String;

.field private content_frame_top_actionbar_center_logo:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f09008e
    .end annotation
.end field

.field private debug:Z

.field private errorMessageFromServer:Ljava/lang/String;

.field private explain_registration_ok_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0900f9
    .end annotation
.end field

.field private fieldsInvalidMessage:Ljava/lang/String;

.field private imManager:Landroid/view/inputmethod/InputMethodManager;

.field private isExplanationDisplayed:Z

.field private isExplanationPopUp:Z

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

.field private mShowImeRunnable:Ljava/lang/Runnable;

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

.field private register:Ljava/lang/String;

.field private register_content_no_data_error:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901e5
    .end annotation
.end field

.field private register_explanation_layout:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901dd
    .end annotation
.end field

.field private register_mobile_number_extra_info:Lnz/co/telecom/smartphone/widget/TMYTextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901e4
    .end annotation
.end field

.field private register_mobile_number_only_layout:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901de
    .end annotation
.end field

.field private register_mobile_number_only_layout_Title:Lnz/co/telecom/smartphone/widget/TMYTextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901e1
    .end annotation
.end field

.field private register_mobile_number_only_layout_mobileNo:Lnz/co/telecom/smartphone/widget/TMYEditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901e2
    .end annotation
.end field

.field private register_mobile_number_only_layout_next_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901e3
    .end annotation
.end field

.field private register_not_with_telecom_title:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901e0
    .end annotation
.end field

.field private register_progress_bar:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901e6
    .end annotation
.end field

.field protected registrationController:Lnz/co/telecom/smartphone/controller/RegistrationController;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private reset_password_flag:Z
    .annotation runtime Lroboguice/inject/InjectExtra;
        value = "reset_password_flag"
    .end annotation
.end field

.field protected welcom_register_main_layout:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901db
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lroboguice/activity/RoboActivity;-><init>()V

    .line 57
    const-string v0, "ActitityRegister"

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->TAG:Ljava/lang/String;

    .line 77
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->isExplanationPopUp:Z

    .line 78
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->isExplanationDisplayed:Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->errorMessageFromServer:Ljava/lang/String;

    .line 128
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->debug:Z

    .line 129
    const-string v0, "register"

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register:Ljava/lang/String;

    .line 187
    new-instance v0, Lnz/co/telecom/smartphone/activity/ActivityRegister$2;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/activity/ActivityRegister$2;-><init>(Lnz/co/telecom/smartphone/activity/ActivityRegister;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 504
    const-string v0, ""

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->fieldsInvalidMessage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/widget/TMYEditText;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityRegister;

    .prologue
    .line 56
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout_mobileNo:Lnz/co/telecom/smartphone/widget/TMYEditText;

    return-object v0
.end method

.method static synthetic access$100(Lnz/co/telecom/smartphone/activity/ActivityRegister;Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityRegister;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/widget/TMYEditText;
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->setImeVisibility(Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V

    return-void
.end method

.method static synthetic access$1000(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityRegister;

    .prologue
    .line 56
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->validateAllFields()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityRegister;

    .prologue
    .line 56
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    return-object v0
.end method

.method static synthetic access$1102(Lnz/co/telecom/smartphone/activity/ActivityRegister;Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityRegister;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    .prologue
    .line 56
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    return-object p1
.end method

.method static synthetic access$1202(Lnz/co/telecom/smartphone/activity/ActivityRegister;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityRegister;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->errorMessageFromServer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lnz/co/telecom/smartphone/activity/ActivityRegister;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityRegister;

    .prologue
    .line 56
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->displayRegistrationFieldsDialog()V

    return-void
.end method

.method static synthetic access$1400(Lnz/co/telecom/smartphone/activity/ActivityRegister;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityRegister;

    .prologue
    .line 56
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->createPassword()V

    return-void
.end method

.method static synthetic access$1500(Lnz/co/telecom/smartphone/activity/ActivityRegister;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityRegister;

    .prologue
    .line 56
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->createNewCustomer()V

    return-void
.end method

.method static synthetic access$200(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityRegister;

    .prologue
    .line 56
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->imManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$300(Lnz/co/telecom/smartphone/activity/ActivityRegister;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityRegister;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->createMessage(I)V

    return-void
.end method

.method static synthetic access$400(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityRegister;

    .prologue
    .line 56
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->debug:Z

    return v0
.end method

.method static synthetic access$500(Lnz/co/telecom/smartphone/activity/ActivityRegister;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityRegister;

    .prologue
    .line 56
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->displaySigninPage()V

    return-void
.end method

.method static synthetic access$600(Lnz/co/telecom/smartphone/activity/ActivityRegister;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityRegister;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->toggleProgressBar(I)V

    return-void
.end method

.method static synthetic access$700(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityRegister;

    .prologue
    .line 56
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_content_no_data_error:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityRegister;

    .prologue
    .line 56
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->no_data_error_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    return-object v0
.end method

.method static synthetic access$900(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityRegister;

    .prologue
    .line 56
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->no_data_error_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object v0
.end method

.method private createMessage(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 456
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 457
    .local v0, "m":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 458
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 459
    return-void
.end method

.method private createNewCustomer()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_not_with_telecom_title:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout_Title:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const v1, 0x7f0e007b

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout_next_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    const v1, 0x7f0e001c

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYButton;->setText(I)V

    .line 426
    return-void
.end method

.method private createPassword()V
    .locals 3

    .prologue
    .line 429
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->isOnNetCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":resetonnet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register:Ljava/lang/String;

    .line 434
    :goto_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register:Ljava/lang/String;

    invoke-static {v1}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;)V

    .line 435
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->mContext:Landroid/content/Context;

    const-class v2, Lnz/co/telecom/smartphone/activity/ActivityPassword;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 436
    .local v0, "passwordContet":Landroid/content/Intent;
    const v1, 0x7f0e00ad

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->isOnNetCheck()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 437
    const v1, 0x7f0e00b0

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getTokenID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const v1, 0x7f0e00af

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v1, "mobile.phone.number"

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout_mobileNo:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v1, "reset_password_flag"

    iget-boolean v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->reset_password_flag:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->startActivity(Landroid/content/Intent;)V

    .line 442
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->finish()V

    .line 443
    return-void

    .line 432
    .end local v0    # "passwordContet":Landroid/content/Intent;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":resetoffnet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register:Ljava/lang/String;

    goto :goto_0
.end method

.method private displayExplainFlows()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_explanation_layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->explain_registration_ok_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    new-instance v1, Lnz/co/telecom/smartphone/activity/ActivityRegister$3;

    invoke-direct {v1, p0}, Lnz/co/telecom/smartphone/activity/ActivityRegister$3;-><init>(Lnz/co/telecom/smartphone/activity/ActivityRegister;)V

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->isExplanationDisplayed:Z

    .line 224
    return-void
.end method

.method private displayExplainFlowsPopUp()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 242
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 243
    .local v2, "subDialog":Landroid/app/Dialog;
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030037

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 244
    .local v1, "myDialogView":Landroid/view/View;
    const v3, 0x7f0900f9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 245
    .local v0, "explain_registration_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    new-instance v3, Lnz/co/telecom/smartphone/activity/ActivityRegister$4;

    invoke-direct {v3, p0, v2}, Lnz/co/telecom/smartphone/activity/ActivityRegister$4;-><init>(Lnz/co/telecom/smartphone/activity/ActivityRegister;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 254
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 255
    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 256
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 257
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 259
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 260
    return-void
.end method

.method private displayRegistrationFieldsDialog()V
    .locals 11

    .prologue
    .line 474
    new-instance v7, Landroid/app/Dialog;

    invoke-direct {v7, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 475
    .local v7, "subDialog":Landroid/app/Dialog;
    iget-object v8, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030045

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 476
    .local v0, "fieldsErrorDialog":Landroid/view/View;
    const v8, 0x7f090130

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 477
    .local v2, "popup_dialog_close_error_IV":Landroid/widget/ImageView;
    const v8, 0x7f090132

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 478
    .local v6, "popup_dialog_title_TV":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    const v8, 0x7f090133

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 479
    .local v3, "popup_dialog_content_TV":Lnz/co/telecom/smartphone/widget/TMYTextView;
    const v8, 0x7f090137

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 480
    .local v1, "popup_dialog_cancel_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const v8, 0x7f090138

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 481
    .local v5, "popup_dialog_retry_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const v8, 0x7f090136

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 482
    .local v4, "popup_dialog_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 483
    iget-object v8, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->fieldsInvalidMessage:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    new-instance v8, Lnz/co/telecom/smartphone/activity/ActivityRegister$5;

    invoke-direct {v8, p0, v7}, Lnz/co/telecom/smartphone/activity/ActivityRegister$5;-><init>(Lnz/co/telecom/smartphone/activity/ActivityRegister;Landroid/app/Dialog;)V

    invoke-virtual {v4, v8}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    new-instance v8, Lnz/co/telecom/smartphone/activity/ActivityRegister$6;

    invoke-direct {v8, p0, v7}, Lnz/co/telecom/smartphone/activity/ActivityRegister$6;-><init>(Lnz/co/telecom/smartphone/activity/ActivityRegister;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 497
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 498
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 499
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 500
    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 501
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 502
    return-void
.end method

.method private displaySigninPage()V
    .locals 3

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 275
    .local v0, "activityWelcomeIntent":Landroid/content/Intent;
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->mContext:Landroid/content/Context;

    const-class v2, Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 276
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 277
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 278
    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->startActivity(Landroid/content/Intent;)V

    .line 279
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->finish()V

    .line 280
    return-void
.end method

.method private hideExplainFlows()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_explanation_layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 229
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->isExplanationDisplayed:Z

    .line 230
    return-void
.end method

.method private replaceNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "oneVal"    # Ljava/lang/String;

    .prologue
    .line 446
    if-nez p1, :cond_0

    .line 447
    const-string p1, ""

    .line 448
    :cond_0
    return-object p1
.end method

.method private setImeVisibility(Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V
    .locals 3
    .param p1, "oneText"    # Lnz/co/telecom/smartphone/widget/TMYEditText;
    .param p2, "visible"    # Z

    .prologue
    .line 178
    if-eqz p2, :cond_1

    .line 179
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout_mobileNo:Lnz/co/telecom/smartphone/widget/TMYEditText;

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->post(Ljava/lang/Runnable;)Z

    .line 182
    :goto_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->imManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->imManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout_mobileNo:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 185
    :cond_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout_mobileNo:Lnz/co/telecom/smartphone/widget/TMYEditText;

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private toggleProgressBar(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_progress_bar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 453
    return-void
.end method

.method private validateAllFields()Z
    .locals 3

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "allValid":Z
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout_mobileNo:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout_mobileNo:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    .line 465
    :cond_0
    const v1, 0x7f0e005c

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->fieldsInvalidMessage:Ljava/lang/String;

    .line 469
    :goto_0
    return v0

    .line 467
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public initializeHandler()V
    .locals 1

    .prologue
    .line 419
    new-instance v0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler;-><init>(Lnz/co/telecom/smartphone/activity/ActivityRegister;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->mHandler:Landroid/os/Handler;

    .line 420
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->isExplanationDisplayed:Z

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->hideExplainFlows()V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-super {p0}, Lroboguice/activity/RoboActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 196
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->mNetworkUtils:Lnz/co/telecom/smartphone/util/NetworkUtils;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/util/NetworkUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    const/16 v0, 0x209

    invoke-direct {p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->createMessage(I)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901e3

    if-ne v0, v1, :cond_3

    .line 200
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->imManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->imManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout_mobileNo:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 203
    :cond_2
    const/16 v0, 0x204

    invoke-direct {p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->createMessage(I)V

    goto :goto_0

    .line 204
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901e4

    if-ne v0, v1, :cond_0

    .line 205
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->isExplanationPopUp:Z

    if-eqz v0, :cond_4

    .line 206
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->displayExplainFlowsPopUp()V

    goto :goto_0

    .line 208
    :cond_4
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->displayExplainFlows()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lroboguice/activity/RoboActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    iput-object p0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->mContext:Landroid/content/Context;

    .line 141
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->imManager:Landroid/view/inputmethod/InputMethodManager;

    .line 142
    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v2}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->allowDeviceLogging()Z

    move-result v2

    iput-boolean v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->debug:Z

    .line 143
    iget-boolean v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->debug:Z

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile.phone.number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->mMobilePhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->mMobilePhoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->mMobilePhoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout_mobileNo:Lnz/co/telecom/smartphone/widget/TMYEditText;

    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->mMobilePhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_1
    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout_mobileNo:Lnz/co/telecom/smartphone/widget/TMYEditText;

    new-instance v3, Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;

    invoke-direct {v3}, Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;-><init>()V

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout_mobileNo:Lnz/co/telecom/smartphone/widget/TMYEditText;

    new-instance v3, Lnz/co/telecom/smartphone/activity/ActivityRegister$1;

    invoke-direct {v3, p0}, Lnz/co/telecom/smartphone/activity/ActivityRegister$1;-><init>(Lnz/co/telecom/smartphone/activity/ActivityRegister;)V

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 158
    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout_next_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v2, p0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-boolean v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->reset_password_flag:Z

    if-eqz v2, :cond_3

    .line 160
    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->content_frame_top_actionbar_center_logo:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    const v3, 0x7f0e001a

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(I)V

    .line 166
    :goto_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_extra_info:Lnz/co/telecom/smartphone/widget/TMYTextView;

    invoke-virtual {v2, p0}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_extra_info:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const/16 v3, 0xf

    invoke-static {v2, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 169
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->initializeHandler()V

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 171
    .local v0, "currentapiVersion":I
    const/16 v2, 0x8

    if-le v0, v2, :cond_2

    .line 172
    sget-object v1, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    .line 173
    .local v1, "tp":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 175
    .end local v1    # "tp":Landroid/os/StrictMode$ThreadPolicy;
    :cond_2
    return-void

    .line 163
    .end local v0    # "currentapiVersion":I
    :cond_3
    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->content_frame_top_actionbar_center_logo:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    const v3, 0x7f0e00aa

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 509
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 510
    .local v4, "subDialog":Landroid/app/Dialog;
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030045

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 511
    .local v0, "myDialogView":Landroid/view/View;
    const v5, 0x7f090132

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 512
    .local v3, "popup_dialog_title_TV":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    const v5, 0x7f090133

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 513
    .local v1, "popup_dialog_content_TV":Lnz/co/telecom/smartphone/widget/TMYTextView;
    const v5, 0x7f090136

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 514
    .local v2, "popup_dialog_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 515
    new-instance v5, Lnz/co/telecom/smartphone/activity/ActivityRegister$7;

    invoke-direct {v5, p0, v4}, Lnz/co/telecom/smartphone/activity/ActivityRegister$7;-><init>(Lnz/co/telecom/smartphone/activity/ActivityRegister;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 522
    new-instance v5, Lnz/co/telecom/smartphone/activity/ActivityRegister$8;

    invoke-direct {v5, p0, v4}, Lnz/co/telecom/smartphone/activity/ActivityRegister$8;-><init>(Lnz/co/telecom/smartphone/activity/ActivityRegister;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    packed-switch p1, :pswitch_data_0

    .line 539
    :goto_0
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 540
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 541
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 542
    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 543
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 544
    invoke-super {p0, p1}, Lroboguice/activity/RoboActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    return-object v5

    .line 530
    :pswitch_0
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->errorMessageFromServer:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 533
    :pswitch_1
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0079

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 536
    :pswitch_2
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->mContext:Landroid/content/Context;

    const v6, 0x7f0e00c5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x3e5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->welcom_register_main_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivitySwitcher;->animationOut(Landroid/view/View;Landroid/view/WindowManager;)V

    .line 270
    invoke-super {p0}, Lroboguice/activity/RoboActivity;->onPause()V

    .line 271
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->welcom_register_main_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivitySwitcher;->animationIn(Landroid/view/View;Landroid/view/WindowManager;)V

    .line 265
    invoke-super {p0}, Lroboguice/activity/RoboActivity;->onResume()V

    .line 266
    return-void
.end method
