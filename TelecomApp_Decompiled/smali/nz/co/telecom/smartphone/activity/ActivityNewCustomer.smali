.class public Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;
.super Lroboguice/activity/RoboActivity;
.source "ActivityNewCustomer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/activity/ActivityNewCustomer$MyHandler;
    }
.end annotation

.annotation runtime Lroboguice/inject/ContentView;
    value = 0x7f030083
.end annotation


# static fields
.field public static final NETWORK_ERROR_DIALOG_ID:I = 0x3e6

.field public static final REGISTRATION_ERROR_DIALOG_ID:I = 0x3e5

.field public static final REGISTRATION_ERROR_DIALOG_NOTIFIER:I = 0x20d

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

.field public static final STATUS_START_REGISTRATION_ERROR_NOTIFIER:I = 0x20b

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

.field private errorMessageFromServer:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

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

.field private register_newcustomer_content_no_data_error:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901ed
    .end annotation
.end field

.field private register_newcustomer_main_mobile_no_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901eb
    .end annotation
.end field

.field private register_newcustomer_progress_bar:Landroid/widget/ProgressBar;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901ee
    .end annotation
.end field

.field private register_newcustomer_retry_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0901ec
    .end annotation
.end field

.field private register_on_or_off_net:Z
    .annotation runtime Lroboguice/inject/InjectExtra;
        value = "register_on_or_off_net"
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

.field protected registrationController:Lnz/co/telecom/smartphone/controller/RegistrationController;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private reset_password_flag:Z
    .annotation runtime Lroboguice/inject/InjectExtra;
        value = "reset_password_flag"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lroboguice/activity/RoboActivity;-><init>()V

    .line 147
    const-string v0, "ActivityPassword"

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->TAG:Ljava/lang/String;

    .line 189
    new-instance v0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer$MyHandler;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer$MyHandler;-><init>(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->mHandler:Landroid/os/Handler;

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->errorMessageFromServer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;

    .prologue
    .line 46
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->register_newcustomer_content_no_data_error:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;)Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;

    .prologue
    .line 46
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->no_data_error_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    return-object v0
.end method

.method static synthetic access$200(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;

    .prologue
    .line 46
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->no_data_error_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object v0
.end method

.method static synthetic access$300(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->toggleProgressBar(I)V

    return-void
.end method

.method static synthetic access$400(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;)Lnz/co/telecom/smartphone/widget/TMYEditText;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;

    .prologue
    .line 46
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->register_newcustomer_main_mobile_no_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    return-object v0
.end method

.method static synthetic access$500(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;

    .prologue
    .line 46
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    return-object v0
.end method

.method static synthetic access$502(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    .prologue
    .line 46
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    return-object p1
.end method

.method static synthetic access$602(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->errorMessageFromServer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->createMessage(I)V

    return-void
.end method

.method static synthetic access$800(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;

    .prologue
    .line 46
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->createPassword()V

    return-void
.end method

.method private createMessage(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 255
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 256
    .local v0, "m":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 257
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 258
    return-void
.end method

.method private createPassword()V
    .locals 3

    .prologue
    .line 239
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->mContext:Landroid/content/Context;

    const-class v2, Lnz/co/telecom/smartphone/activity/ActivityPassword;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .local v0, "passwordContet":Landroid/content/Intent;
    const v1, 0x7f0e00ad

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->isOnNetCheck()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    const v1, 0x7f0e00b0

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getTokenID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const v1, 0x7f0e00af

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->replaceNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v1, "mobile.phone.number"

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->register_newcustomer_main_mobile_no_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v1, "reset_password_flag"

    iget-boolean v2, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->reset_password_flag:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->startActivity(Landroid/content/Intent;)V

    .line 246
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->toggleProgressBar(I)V

    .line 247
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->finish()V

    .line 248
    return-void
.end method

.method private replaceNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "oneVal"    # Ljava/lang/String;

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 262
    const-string p1, ""

    .line 263
    :cond_0
    return-object p1
.end method

.method private toggleProgressBar(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->register_newcustomer_progress_bar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 252
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 229
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->mNetworkUtils:Lnz/co/telecom/smartphone/util/NetworkUtils;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/util/NetworkUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    const/16 v0, 0x209

    invoke-direct {p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->createMessage(I)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0901ec

    if-ne v0, v1, :cond_0

    .line 233
    const/16 v0, 0x204

    invoke-direct {p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->createMessage(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 215
    invoke-super {p0, p1}, Lroboguice/activity/RoboActivity;->onCreate(Landroid/os/Bundle;)V

    .line 216
    iput-object p0, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->mContext:Landroid/content/Context;

    .line 217
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->register_newcustomer_retry_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v0, p0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->register_newcustomer_main_mobile_no_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->mMobilePhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->register_newcustomer_main_mobile_no_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    new-instance v1, Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;

    invoke-direct {v1}, Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;-><init>()V

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 220
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->reset_password_flag:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->content_frame_top_actionbar_center_logo:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    const v1, 0x7f0e001a

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(I)V

    .line 226
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->content_frame_top_actionbar_center_logo:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    const v1, 0x7f0e00aa

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 269
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 270
    .local v4, "subDialog":Landroid/app/Dialog;
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030045

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, "myDialogView":Landroid/view/View;
    const v5, 0x7f090132

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 272
    .local v3, "popup_dialog_title_TV":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    const v5, 0x7f090133

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 273
    .local v1, "popup_dialog_content_TV":Lnz/co/telecom/smartphone/widget/TMYTextView;
    const v5, 0x7f090136

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 274
    .local v2, "popup_dialog_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 275
    new-instance v5, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer$1;

    invoke-direct {v5, p0, v4}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer$1;-><init>(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 282
    new-instance v5, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer$2;

    invoke-direct {v5, p0, v4}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer$2;-><init>(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    packed-switch p1, :pswitch_data_0

    .line 299
    :goto_0
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 300
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 301
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 303
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 304
    invoke-super {p0, p1}, Lroboguice/activity/RoboActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    return-object v5

    .line 290
    :pswitch_0
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->errorMessageFromServer:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 293
    :pswitch_1
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0079

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    :pswitch_2
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->mContext:Landroid/content/Context;

    const v6, 0x7f0e00c5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x3e5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
