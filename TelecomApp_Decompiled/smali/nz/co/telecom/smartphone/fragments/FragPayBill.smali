.class public Lnz/co/telecom/smartphone/fragments/FragPayBill;
.super Lnz/co/telecom/smartphone/fragments/FragBase;
.source "FragPayBill.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/fragments/FragPayBill$MyWebClient;,
        Lnz/co/telecom/smartphone/fragments/FragPayBill$MyHandler;,
        Lnz/co/telecom/smartphone/fragments/FragPayBill$MyChromeClient;,
        Lnz/co/telecom/smartphone/fragments/FragPayBill$AppExt;,
        Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;
    }
.end annotation


# static fields
.field private static final ACCOUNT_NUMBER_LENGTH:I = 0x9

.field private static final AMOUNT_MAX_VALID:F = 10000.0f

.field private static final AMOUNT_MIN_VALID:F = 1.0f

.field private static final DIALOG_ERROR_IN_PAYBILL:I = 0x3

.field private static final DIALOG_INVALID_AMOUNT:I = 0x2

.field private static final DIALOG_SERVER_FAILURE:I = 0x1

.field private static final MESSAGE_API_CALLS_FINISHED:I = 0x325

.field private static final MESSAGE_API_CALL_ERROR:I = 0x328

.field private static final MESSAGE_DISPLAY_AMOUNT:I = 0x323

.field private static final MESSAGE_GENERATE_TOKEN:I = 0x324

.field private static final MESSAGE_LOAD_ACCOUNT_FAILED:I = 0x322

.field private static final MESSAGE_LOAD_ACCOUNT_INFO:I = 0x321

.field private static final MESSAGE_RESULTS_RETURNED:I = 0x327

.field private static final MESSAGE_TOKEN_GENERATED:I = 0x326

.field public static final TAG:Ljava/lang/String;

.field private static amountToPay:Ljava/lang/String;

.field private static content_paybill_results:Landroid/widget/RelativeLayout;

.field public static creditCardPageDisplayed:Z

.field private static credit_card_web_view:Landroid/webkit/WebView;

.field public static mContext:Landroid/content/Context;

.field private static paybill_error_close_error_IV:Landroid/widget/ImageView;

.field private static paybill_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private static paybill_results_cancel_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

.field private static paybill_results_ok_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

.field private static paybill_results_retry_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

.field private static paybill_results_text:Landroid/widget/RelativeLayout;

.field private static paybill_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;


# instance fields
.field private accountNo:Ljava/lang/String;

.field private cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

.field protected creditCardController:Lnz/co/telecom/smartphone/controller/CreditCardController;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private debug:Z

.field private globalView:Landroid/view/View;

.field private mdnNo:Ljava/lang/String;

.field private mostUpdatedBalance:D

.field private oneResult:I

.field private payBillHandler:Landroid/os/Handler;

.field private paybill_account_layout:Landroid/widget/RelativeLayout;

.field private paybill_account_no_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

.field private paybill_amount_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

.field private paybill_amount_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private paybill_amount_layout:Landroid/widget/RelativeLayout;

.field private paybill_balance_amount_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private paybill_balance_title_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private paybill_explanation_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private paybill_layout_scroll_view:Landroid/widget/ScrollView;

.field private paybill_next_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

.field private paybill_pay_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

.field private paybill_top_layout_footer_footer_view:Landroid/widget/RelativeLayout;

.field private paybill_top_layout_header_header_view:Landroid/widget/RelativeLayout;

.field private progress_block_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private returnContent:Ljava/lang/String;

.field private returnTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    .line 92
    const-string v0, ""

    sput-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->amountToPay:Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->creditCardPageDisplayed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>()V

    .line 101
    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->oneResult:I

    .line 102
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;

    .line 105
    iput-boolean v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z

    .line 144
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>(I)V

    .line 101
    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->oneResult:I

    .line 102
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;

    .line 105
    iput-boolean v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z

    .line 148
    return-void
.end method

.method static synthetic access$000(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .prologue
    .line 66
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z

    return v0
.end method

.method static synthetic access$100(Lnz/co/telecom/smartphone/fragments/FragPayBill;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .prologue
    .line 66
    iget v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->oneResult:I

    return v0
.end method

.method static synthetic access$1000()Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object v0
.end method

.method static synthetic access$102(Lnz/co/telecom/smartphone/fragments/FragPayBill;I)I
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->oneResult:I

    return p1
.end method

.method static synthetic access$1100()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_text:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_paybill_results:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .prologue
    .line 66
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->progress_block_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object v0
.end method

.method static synthetic access$1400(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .prologue
    .line 66
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->loadAccountInfo()V

    return-void
.end method

.method static synthetic access$1500(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .prologue
    .line 66
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_account_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .prologue
    .line 66
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_amount_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Lnz/co/telecom/smartphone/widget/TMYEditText;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .prologue
    .line 66
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_account_no_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    return-object v0
.end method

.method static synthetic access$1800(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .prologue
    .line 66
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->accountNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lnz/co/telecom/smartphone/fragments/FragPayBill;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->accountNo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lnz/co/telecom/smartphone/fragments/FragPayBill;I)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .prologue
    .line 66
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .prologue
    .line 66
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->displayAmount()V

    return-void
.end method

.method static synthetic access$202(Lnz/co/telecom/smartphone/fragments/FragPayBill;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .prologue
    .line 66
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->generateToken()V

    return-void
.end method

.method static synthetic access$2200(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .prologue
    .line 66
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->callCreditCardPage()V

    return-void
.end method

.method static synthetic access$2300(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .prologue
    .line 66
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_layout_scroll_view:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$2400()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->credit_card_web_view:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2500()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_error_close_error_IV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lnz/co/telecom/smartphone/fragments/FragPayBill;Z)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->enableNextButton(Z)V

    return-void
.end method

.method static synthetic access$2700(Lnz/co/telecom/smartphone/fragments/FragPayBill;Z)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->enablePayButton(Z)V

    return-void
.end method

.method static synthetic access$300(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .prologue
    .line 66
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .prologue
    .line 66
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->resetAmountTextView()V

    return-void
.end method

.method static synthetic access$302(Lnz/co/telecom/smartphone/fragments/FragPayBill;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .prologue
    .line 66
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getResults()V

    return-void
.end method

.method static synthetic access$500(Lnz/co/telecom/smartphone/fragments/FragPayBill;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->changeProgressDialogStatus(I)V

    return-void
.end method

.method static synthetic access$600()Lnz/co/telecom/smartphone/widget/TMYButton;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_ok_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    return-object v0
.end method

.method static synthetic access$700()Lnz/co/telecom/smartphone/widget/TMYButton;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_cancel_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    return-object v0
.end method

.method static synthetic access$800()Lnz/co/telecom/smartphone/widget/TMYButton;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_retry_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    return-object v0
.end method

.method static synthetic access$900()Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    return-object v0
.end method

.method private callCreditCardPage()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface",
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 805
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v5}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->getCreditCardPage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 807
    .local v1, "ippaymentPage":Ljava/lang/StringBuffer;
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->credit_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 808
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->credit_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 809
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->credit_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 810
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->credit_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 812
    :try_start_0
    iget-boolean v5, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z

    if-eqz v5, :cond_0

    .line 813
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cct getSessionId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getSessionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_0
    iget-boolean v5, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z

    if-eqz v5, :cond_1

    .line 815
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cct getSst "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getSst()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_1
    iget-boolean v5, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z

    if-eqz v5, :cond_2

    .line 817
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cct payBillMdn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mdnNo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_2
    iget-boolean v5, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z

    if-eqz v5, :cond_3

    .line 819
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cct payBillAmount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->amountToPay:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_3
    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 821
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&SST="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getSst()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 822
    new-instance v3, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyWebClient;

    invoke-direct {v3, p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyWebClient;-><init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V

    .line 823
    .local v3, "mwc":Lnz/co/telecom/smartphone/fragments/FragPayBill$MyWebClient;
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->credit_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 824
    .local v4, "webSettings":Landroid/webkit/WebSettings;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 825
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 827
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 828
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 829
    const/16 v5, 0x12

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v5, v6, :cond_4

    .line 830
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 832
    :cond_4
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 834
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 835
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 836
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 837
    new-instance v2, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyChromeClient;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyChromeClient;-><init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;Lnz/co/telecom/smartphone/fragments/FragPayBill$1;)V

    .line 838
    .local v2, "mcc":Lnz/co/telecom/smartphone/fragments/FragPayBill$MyChromeClient;
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->credit_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v5, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 839
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->credit_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v5, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 840
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 841
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->credit_card_web_view:Landroid/webkit/WebView;

    new-instance v6, Lnz/co/telecom/smartphone/fragments/FragPayBill$AppExt;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lnz/co/telecom/smartphone/fragments/FragPayBill$AppExt;-><init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;Lnz/co/telecom/smartphone/fragments/FragPayBill$1;)V

    const-string v7, "ExtObj"

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    const/4 v5, 0x1

    :try_start_1
    sput-boolean v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->creditCardPageDisplayed:Z

    .line 844
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->credit_card_web_view:Landroid/webkit/WebView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 845
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->credit_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 848
    :goto_0
    :try_start_2
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->credit_card_web_view:Landroid/webkit/WebView;

    const/16 v6, 0xa3

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 849
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->credit_card_web_view:Landroid/webkit/WebView;

    new-instance v6, Lnz/co/telecom/smartphone/fragments/FragPayBill$3;

    invoke-direct {v6, p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill$3;-><init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 871
    .end local v2    # "mcc":Lnz/co/telecom/smartphone/fragments/FragPayBill$MyChromeClient;
    .end local v3    # "mwc":Lnz/co/telecom/smartphone/fragments/FragPayBill$MyWebClient;
    .end local v4    # "webSettings":Landroid/webkit/WebSettings;
    :goto_1
    return-void

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error in starting creditcard page "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0091

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;

    .line 867
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0090

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;

    .line 869
    const/16 v5, 0x204

    invoke-virtual {p0, v5}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createMessage(I)V

    goto :goto_1

    .line 846
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "mcc":Lnz/co/telecom/smartphone/fragments/FragPayBill$MyChromeClient;
    .restart local v3    # "mwc":Lnz/co/telecom/smartphone/fragments/FragPayBill$MyWebClient;
    .restart local v4    # "webSettings":Landroid/webkit/WebSettings;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private changeProgressDialogStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 874
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 875
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 879
    :goto_0
    return-void

    .line 877
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private createDialog(I)Landroid/app/Dialog;
    .locals 14
    .param p1, "dialogId"    # I

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 882
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 883
    .local v0, "dialog":Landroid/app/Dialog;
    iget-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->localInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030045

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 886
    .local v1, "dialogView":Landroid/view/View;
    const v8, 0x7f090130

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 888
    .local v3, "popup_dialog_close_error_IV":Landroid/widget/ImageView;
    const v8, 0x7f090132

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 890
    .local v7, "popup_dialog_title_TV":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    const v8, 0x7f090133

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 893
    .local v4, "popup_dialog_content_TV":Lnz/co/telecom/smartphone/widget/TMYTextView;
    const v8, 0x7f090137

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 896
    .local v2, "popup_dialog_cancel_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const v8, 0x7f090138

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 898
    .local v6, "popup_dialog_retry_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const v8, 0x7f090136

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 901
    .local v5, "popup_dialog_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 903
    new-instance v8, Lnz/co/telecom/smartphone/fragments/FragPayBill$4;

    invoke-direct {v8, p0, v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill$4;-><init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;Landroid/app/Dialog;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 912
    if-ne v12, p1, :cond_1

    .line 913
    invoke-virtual {v7, v11}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 914
    iget-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 915
    iget-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    new-instance v8, Lnz/co/telecom/smartphone/fragments/FragPayBill$5;

    invoke-direct {v8, p0, v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill$5;-><init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;Landroid/app/Dialog;)V

    invoke-virtual {v5, v8}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 950
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 951
    invoke-virtual {v0, v12}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 952
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 954
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 955
    return-object v0

    .line 922
    :cond_1
    if-ne v13, p1, :cond_2

    .line 923
    const v8, 0x7f0e008c

    invoke-virtual {p0, v8}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    const v8, 0x7f0e008b

    new-array v9, v13, [Ljava/lang/Object;

    const/high16 v10, 0x3f800000

    invoke-static {v10}, Lnz/co/telecom/smartphone/util/CurrencyFormatUtils;->formatCurrency(F)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    const v10, 0x461c4000

    invoke-static {v10}, Lnz/co/telecom/smartphone/util/CurrencyFormatUtils;->formatCurrency(F)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {p0, v8, v9}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    new-instance v8, Lnz/co/telecom/smartphone/fragments/FragPayBill$6;

    invoke-direct {v8, p0, v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill$6;-><init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;Landroid/app/Dialog;)V

    invoke-virtual {v5, v8}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 938
    :cond_2
    const/4 v8, 0x3

    if-ne v8, p1, :cond_0

    .line 939
    invoke-virtual {v7, v11}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 940
    iget-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 941
    iget-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    new-instance v8, Lnz/co/telecom/smartphone/fragments/FragPayBill$7;

    invoke-direct {v8, p0, v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill$7;-><init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;Landroid/app/Dialog;)V

    invoke-virtual {v5, v8}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private displayAmount()V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 959
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mAccountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;->getAmountOwing()D

    move-result-wide v0

    .line 961
    .local v0, "amountOwing":D
    cmpl-double v3, v4, v0

    if-lez v3, :cond_1

    .line 962
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_balance_title_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const v4, 0x7f0e0096

    invoke-virtual {p0, v4}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_balance_amount_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4, v8, v8, v6}, Lnz/co/telecom/smartphone/util/CurrencyFormatUtils;->formatCurrency(FIIZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_explanation_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const v4, 0x7f0e0094

    invoke-virtual {p0, v4}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_explanation_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    invoke-virtual {v3, v7}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    .line 990
    :cond_0
    :goto_0
    return-void

    .line 969
    :cond_1
    cmpg-double v3, v4, v0

    if-gez v3, :cond_2

    .line 970
    const v3, 0x7f0e009e

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mAccountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;->getDueDate()Ljava/util/Date;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 972
    .local v2, "totalDueBy":Ljava/lang/String;
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_balance_title_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 973
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_balance_amount_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    double-to-float v4, v0

    invoke-static {v4, v8, v8, v6}, Lnz/co/telecom/smartphone/util/CurrencyFormatUtils;->formatCurrency(FIIZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_explanation_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    .line 978
    const-wide/high16 v3, 0x3ff0000000000000L

    cmpg-double v3, v3, v0

    if-gtz v3, :cond_0

    const-wide v3, 0x40c3880000000000L

    cmpl-double v3, v3, v0

    if-ltz v3, :cond_0

    .line 980
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_amount_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    const-string v4, "%.2f"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 983
    .end local v2    # "totalDueBy":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_balance_title_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const v4, 0x7f0e0097

    invoke-virtual {p0, v4}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_balance_amount_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 986
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_explanation_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const v4, 0x7f0e0095

    invoke-virtual {p0, v4}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 988
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_explanation_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    invoke-virtual {v3, v7}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private enableNextButton(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1006
    if-eqz p1, :cond_0

    .line 1007
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_next_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    const v1, 0x7f020081

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYButton;->setBackgroundResource(I)V

    .line 1012
    :goto_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_next_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/widget/TMYButton;->setEnabled(Z)V

    .line 1013
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_next_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/widget/TMYButton;->setClickable(Z)V

    .line 1014
    return-void

    .line 1009
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_next_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    const v1, 0x7f02012c

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private enablePayButton(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 994
    if-eqz p1, :cond_0

    .line 995
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_pay_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    const v1, 0x7f020081

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYButton;->setBackgroundResource(I)V

    .line 1000
    :goto_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_pay_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/widget/TMYButton;->setEnabled(Z)V

    .line 1001
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_pay_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/widget/TMYButton;->setClickable(Z)V

    .line 1002
    return-void

    .line 997
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_pay_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    const v1, 0x7f02012c

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private generateToken()V
    .locals 13

    .prologue
    const v12, 0x7f0e0091

    const v11, 0x7f0e0090

    const/16 v10, 0x204

    .line 1023
    const/high16 v7, 0x42c80000

    sget-object v8, Lnz/co/telecom/smartphone/fragments/FragPayBill;->amountToPay:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v1, v7

    .line 1025
    .local v1, "amountInCents":I
    iget-boolean v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z

    if-eqz v7, :cond_0

    .line 1026
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " generateToken mdnNo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mdnNo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_0
    iget-boolean v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z

    if-eqz v7, :cond_1

    .line 1028
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " generateToken amountToPay "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_1
    iget-boolean v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z

    if-eqz v7, :cond_2

    .line 1030
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " generateToken accountNumber "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->accountNo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_2
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    .local v6, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "recipient"

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mdnNo:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "amount"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "account_number"

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->accountNo:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->creditCardController:Lnz/co/telecom/smartphone/controller/CreditCardController;

    invoke-virtual {v7, v6}, Lnz/co/telecom/smartphone/controller/CreditCardController;->getCreditCardToken(Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    move-result-object v7

    iput-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    .line 1039
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    if-eqz v7, :cond_8

    .line 1040
    iget-boolean v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z

    if-eqz v7, :cond_3

    .line 1041
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " callCreditCardPage cct.getType() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v9}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_3
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ERROR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1045
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 1046
    iget-boolean v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z

    if-eqz v7, :cond_4

    .line 1047
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " callCreditCardPage cct.getValues() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v9}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_4
    const/4 v7, 0x0

    iput v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->oneResult:I

    .line 1050
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v0

    .line 1051
    .local v0, "allResults":Ljava/util/ArrayList;
    const/4 v5, 0x0

    .line 1052
    .local v5, "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_6

    .line 1053
    iget-boolean v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z

    if-eqz v7, :cond_5

    .line 1054
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " returnedMessage allResults "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    check-cast v5, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;

    .line 1057
    .restart local v5    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->getTitle()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;

    .line 1058
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->getMessage()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;

    .line 1062
    .end local v0    # "allResults":Ljava/util/ArrayList;
    .end local v4    # "i":I
    .end local v5    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    :cond_6
    const/16 v7, 0x325

    invoke-virtual {p0, v7}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createMessage(I)V

    .line 1091
    .end local v6    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :goto_0
    return-void

    .line 1065
    .restart local v6    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_7
    const/16 v7, 0x326

    invoke-virtual {p0, v7}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createMessage(I)V
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1074
    .end local v6    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v3

    .line 1075
    .local v3, "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    iput-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    .line 1076
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HttpServiceException (status code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;

    .line 1080
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;

    .line 1082
    invoke-virtual {p0, v10}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createMessage(I)V

    goto :goto_0

    .line 1068
    .end local v3    # "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    .restart local v6    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_8
    :try_start_1
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    const v8, 0x7f0e0091

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;

    .line 1070
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    const v8, 0x7f0e0090

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;

    .line 1072
    const/16 v7, 0x204

    invoke-virtual {p0, v7}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createMessage(I)V
    :try_end_1
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1083
    .end local v6    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_1
    move-exception v2

    .line 1084
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error in stating creditcard page "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;

    .line 1087
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;

    .line 1089
    invoke-virtual {p0, v10}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createMessage(I)V

    goto/16 :goto_0
.end method

.method private getResults()V
    .locals 12

    .prologue
    const v11, 0x7f0e0091

    const v10, 0x7f0e0090

    const/4 v9, 0x1

    const/16 v8, 0x325

    const/4 v7, 0x0

    .line 1097
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .local v3, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "session_id"

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getSessionId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sst"

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getSst()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    const/4 v2, 0x0

    .line 1101
    .local v2, "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->creditCardController:Lnz/co/telecom/smartphone/controller/CreditCardController;

    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v4, v5, v3}, Lnz/co/telecom/smartphone/controller/CreditCardController;->getCreditCardResult(Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    .line 1102
    iget-boolean v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z

    if-eqz v4, :cond_0

    .line 1103
    sget-object v4, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    sget-object v4, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " balance "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getBalance()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    sget-object v4, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getValues "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    sget-object v4, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " messages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getMessages()Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    sget-object v4, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " cct.getMessages() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getMessages()Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_0
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v9, v4, :cond_3

    .line 1111
    :cond_1
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getMessages()Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1112
    const/4 v4, 0x1

    iput v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->oneResult:I

    .line 1113
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getBalance()F

    move-result v4

    float-to-double v4, v4

    iput-wide v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mostUpdatedBalance:D

    .line 1117
    :goto_0
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getMessages()Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    check-cast v2, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;

    .line 1118
    .restart local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;

    .line 1119
    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;

    .line 1128
    :goto_1
    const/16 v4, 0x325

    invoke-virtual {p0, v4}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createMessage(I)V

    .line 1147
    .end local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    .end local v3    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :goto_2
    return-void

    .line 1115
    .restart local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    .restart local v3    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_2
    const/4 v4, 0x0

    iput v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->oneResult:I
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1129
    .end local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    .end local v3    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v1

    .line 1130
    .local v1, "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    sget-object v4, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HttpServiceException (status code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iput v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->oneResult:I

    .line 1133
    sget-object v4, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;

    .line 1135
    sget-object v4, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;

    .line 1137
    invoke-virtual {p0, v8}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createMessage(I)V

    goto :goto_2

    .line 1122
    .end local v1    # "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    .restart local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    .restart local v3    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_3
    :try_start_1
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    check-cast v2, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;

    .line 1123
    .restart local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    const/4 v4, 0x0

    iput v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->oneResult:I

    .line 1124
    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;

    .line 1125
    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;
    :try_end_1
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1138
    .end local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    .end local v3    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_1
    move-exception v0

    .line 1139
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getResults Exception error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iput v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->oneResult:I

    .line 1141
    sget-object v4, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;

    .line 1143
    sget-object v4, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;

    .line 1145
    invoke-virtual {p0, v8}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createMessage(I)V

    goto/16 :goto_2
.end method

.method private loadAccountInfo()V
    .locals 5

    .prologue
    .line 1151
    :try_start_0
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;-><init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V

    .line 1152
    .local v0, "ast":Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    .end local v0    # "ast":Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;
    :goto_0
    return-void

    .line 1153
    :catch_0
    move-exception v1

    .line 1154
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FragPayBill error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private payBillInitializeHandler()V
    .locals 1

    .prologue
    .line 1160
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyHandler;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyHandler;-><init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->payBillHandler:Landroid/os/Handler;

    .line 1161
    return-void
.end method

.method private resetAmountTextView()V
    .locals 2

    .prologue
    .line 1164
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_amount_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    return-void
.end method

.method public static showCreditCardCancelled()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 124
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->credit_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 125
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_ok_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 126
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_cancel_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 127
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_retry_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 128
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_error_close_error_IV:Landroid/widget/ImageView;

    const v1, 0x7f020141

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 129
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_text:Landroid/widget/RelativeLayout;

    const v1, 0x7f020211

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 130
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    sget-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setTextColor(I)V

    .line 132
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    sget-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    sget-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setTextColor(I)V

    .line 136
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    sget-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_paybill_results:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 139
    sput-boolean v3, Lnz/co/telecom/smartphone/fragments/FragPayBill;->creditCardPageDisplayed:Z

    .line 140
    return-void
.end method


# virtual methods
.method protected createMessage(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 553
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 554
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 556
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->payBillHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 557
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->payBillInitializeHandler()V

    .line 560
    :cond_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->payBillHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 561
    return-void
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initData()Landroid/view/View;
    .locals 7

    .prologue
    .line 570
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->allowDeviceLogging()Z

    move-result v1

    iput-boolean v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z

    .line 572
    :try_start_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->localInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030028

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    .line 574
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f0900be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_progressbar:Landroid/widget/RelativeLayout;

    .line 576
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f09013a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->progress_block_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 578
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f0900bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_no_data_error:Landroid/widget/RelativeLayout;

    .line 580
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->initData()Landroid/view/View;

    .line 581
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f0900b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_layout_scroll_view:Landroid/widget/ScrollView;

    .line 583
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f0900b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_account_layout:Landroid/widget/RelativeLayout;

    .line 585
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_account_layout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 586
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f0900b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_amount_layout:Landroid/widget/RelativeLayout;

    .line 588
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f0900ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_top_layout_header_header_view:Landroid/widget/RelativeLayout;

    .line 590
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f0900af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_top_layout_footer_footer_view:Landroid/widget/RelativeLayout;

    .line 592
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_top_layout_header_header_view:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->myHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 593
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_top_layout_footer_footer_view:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->myFooterView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 594
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    .line 595
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f0900b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYEditText;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_account_no_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    .line 597
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f0900b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYButton;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_next_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 599
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f0900b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_balance_title_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 601
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f0900b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_balance_amount_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 603
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f0900b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_explanation_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 605
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f0900b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_amount_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 607
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f0900ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYEditText;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_amount_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    .line 609
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f0900bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYButton;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_pay_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 611
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f0900bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    sput-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->credit_card_web_view:Landroid/webkit/WebView;

    .line 613
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f0900bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    sput-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_paybill_results:Landroid/widget/RelativeLayout;

    .line 615
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f090125

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sput-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_error_close_error_IV:Landroid/widget/ImageView;

    .line 617
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f090126

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    sput-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_text:Landroid/widget/RelativeLayout;

    .line 619
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f090127

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    sput-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 621
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f09012d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYButton;

    sput-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_cancel_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 623
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f09012b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYButton;

    sput-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_retry_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 625
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f09012c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYButton;

    sput-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_ok_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 627
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    const v2, 0x7f090128

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    sput-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 631
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_account_no_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    new-instance v2, Lnz/co/telecom/smartphone/fragments/FragPayBill$1;

    invoke-direct {v2, p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill$1;-><init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 652
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_next_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v1, p0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_amount_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Lnz/co/telecom/smartphone/util/CurrencyInputFilter;

    const/4 v5, 0x5

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lnz/co/telecom/smartphone/util/CurrencyInputFilter;-><init>(II)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 658
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_amount_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    new-instance v2, Lnz/co/telecom/smartphone/fragments/FragPayBill$2;

    invoke-direct {v2, p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill$2;-><init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 682
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_pay_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v1, p0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    sget-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_retry_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v1, p0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    sget-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_cancel_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v1, p0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    sget-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_ok_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v1, p0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :goto_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    return-object v1

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in paybillfrag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 694
    const v6, 0x7f0900b3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 696
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 698
    .local v3, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_account_no_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v3, v6, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 702
    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_account_no_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->accountNo:Ljava/lang/String;

    .line 705
    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v6}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getUserCredentials()Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    move-result-object v5

    .line 707
    .local v5, "userCredentialsDTO":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->accountNo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserAccountNumber(Ljava/lang/String;)V

    .line 708
    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v6, v5}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->storeUserCredentials(Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;)V

    .line 710
    const/16 v6, 0x321

    invoke-virtual {p0, v6}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createMessage(I)V

    .line 755
    .end local v3    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v5    # "userCredentialsDTO":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    const v6, 0x7f0900bb

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 713
    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_amount_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 715
    .local v2, "amountString":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 717
    .local v1, "amount":F
    const/high16 v6, 0x3f800000

    cmpg-float v6, v6, v1

    if-gtz v6, :cond_2

    const v6, 0x461c4000

    cmpl-float v6, v6, v1

    if-ltz v6, :cond_2

    .line 720
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lnz/co/telecom/smartphone/fragments/FragPayBill;->amountToPay:Ljava/lang/String;

    .line 721
    const/16 v6, 0x324

    invoke-virtual {p0, v6}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createMessage(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 725
    .end local v1    # "amount":F
    :catch_0
    move-exception v4

    .line 727
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    invoke-direct {p0, v9}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createDialog(I)Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 723
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v1    # "amount":F
    :cond_2
    const/4 v6, 0x2

    :try_start_1
    invoke-direct {p0, v6}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createDialog(I)Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 729
    .end local v1    # "amount":F
    .end local v2    # "amountString":Ljava/lang/String;
    :cond_3
    const v6, 0x7f09012c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 731
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    .line 733
    .local v0, "activityNavigationDrawer":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    invoke-virtual {v0, v8}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->setCurrentNavigationMenuFragment(I)V

    .line 735
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragBase;->requestRefreshAll()V

    .line 736
    new-instance v6, Lnz/co/telecom/smartphone/fragments/FragMyUsage;

    invoke-direct {v6, v8}, Lnz/co/telecom/smartphone/fragments/FragMyUsage;-><init>(I)V

    invoke-virtual {v0, v6}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->switchContent(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    .line 738
    const-string v6, "usage"

    invoke-static {v6}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 739
    .end local v0    # "activityNavigationDrawer":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    :cond_4
    const v6, 0x7f09012b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 740
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->refreshPageDetails()V

    .line 741
    sget-object v6, Lnz/co/telecom/smartphone/fragments/FragPayBill;->credit_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v6, v10}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 742
    sget-object v6, Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_paybill_results:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 743
    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_amount_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setText(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_layout_scroll_view:Landroid/widget/ScrollView;

    invoke-virtual {v6, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto/16 :goto_0

    .line 745
    :cond_5
    const v6, 0x7f09012d

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 747
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    .line 749
    .restart local v0    # "activityNavigationDrawer":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    invoke-virtual {v0, v8}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->setCurrentNavigationMenuFragment(I)V

    .line 751
    new-instance v6, Lnz/co/telecom/smartphone/fragments/FragMyUsage;

    invoke-direct {v6, v8}, Lnz/co/telecom/smartphone/fragments/FragMyUsage;-><init>(I)V

    invoke-virtual {v0, v6}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->switchContent(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    .line 753
    const-string v6, "usage"

    invoke-static {v6}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected refreshPageDetails()V
    .locals 5

    .prologue
    .line 760
    :try_start_0
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragBase;->requestRefreshForPayBillCreditCard()V

    .line 761
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->refreshPageDetails()V

    .line 762
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mdnNo:Ljava/lang/String;

    .line 764
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getUserCredentials()Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    move-result-object v1

    .line 766
    .local v1, "userCredentialsDTO":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    if-eqz v1, :cond_0

    .line 768
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserAccountNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->accountNo:Ljava/lang/String;

    .line 771
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->accountNo:Ljava/lang/String;

    if-eqz v2, :cond_3

    const/16 v2, 0x9

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->accountNo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 774
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_account_layout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 775
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_amount_layout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 777
    const/16 v2, 0x321

    invoke-virtual {p0, v2}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createMessage(I)V

    .line 785
    :cond_0
    :goto_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_topup_button:Lnz/co/telecom/smartphone/widget/TMYButton;

    if-eqz v2, :cond_1

    .line 786
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_topup_button:Lnz/co/telecom/smartphone/widget/TMYButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 789
    :cond_1
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_manage_extras_button:Lnz/co/telecom/smartphone/widget/TMYButton;

    if-eqz v2, :cond_2

    .line 790
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_manage_extras_button:Lnz/co/telecom/smartphone/widget/TMYButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 793
    :cond_2
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V

    .line 794
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->globalView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 800
    .end local v1    # "userCredentialsDTO":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    :goto_1
    return-void

    .line 780
    .restart local v1    # "userCredentialsDTO":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    :cond_3
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_account_layout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 781
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_amount_layout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 795
    .end local v1    # "userCredentialsDTO":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 797
    sget-object v2, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in refreshPageDetails paybillfrag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
