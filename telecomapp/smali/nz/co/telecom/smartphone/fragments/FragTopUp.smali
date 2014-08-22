.class public Lnz/co/telecom/smartphone/fragments/FragTopUp;
.super Lnz/co/telecom/smartphone/fragments/FragBase;
.source "FragTopUp.java"

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
        Lnz/co/telecom/smartphone/fragments/FragTopUp$MyChromeClient;,
        Lnz/co/telecom/smartphone/fragments/FragTopUp$AppExt;,
        Lnz/co/telecom/smartphone/fragments/FragTopUp$MyWebClient;,
        Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler;,
        Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;
    }
.end annotation


# static fields
.field private static final API_CALLS_FINISHED:I = 0x30a

.field private static final API_CALL_ERROR:I = 0x30c

.field private static final RESULTS_RETURNED_NOTIFIER:I = 0x308

.field private static final TOKEN_GENERATED_NOTIFIER:I = 0x30b

.field private static final WAIT_FOR_TOPUP_RESULTS:I = 0x309

.field private static amountToTopUp:Ljava/lang/String;

.field private static content_topup_results:Landroid/widget/RelativeLayout;

.field public static creditCardPageDisplayed:Z

.field private static credit_card_webView:Landroid/webkit/WebView;

.field public static mContext:Landroid/content/Context;

.field private static topup_error_close_error_IV:Landroid/widget/ImageView;

.field private static topup_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private static topup_results_cancel_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

.field private static topup_results_continue_shopping_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

.field private static topup_results_ok_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

.field private static topup_results_retry_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

.field private static topup_results_text:Landroid/widget/RelativeLayout;

.field private static topup_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

.field private static voucherNo:Ljava/lang/String;


# instance fields
.field private ERROR_IN_TOP_UP:I

.field private ERROR_MOBILENO:I

.field private ERROR_VOUCHER:I

.field private INVALID_AMOUNT:I

.field private NOTHING_SELECTED:I

.field public final TAG:Ljava/lang/String;

.field private cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

.field protected creditCardController:Lnz/co/telecom/smartphone/controller/CreditCardController;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private creditCardSelected:Z

.field private debug:Z

.field private globalView:Landroid/view/View;

.field private imManager:Landroid/view/inputmethod/InputMethodManager;

.field protected mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private m_fragBuyExtraComponents:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

.field private mdnNo:Ljava/lang/String;

.field private mostUpdatedBalance:D

.field private oneResult:I

.field private otherAmountSelected:Z

.field private progress_block_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private returnContent:Ljava/lang/String;

.field private returnTitle:Ljava/lang/String;

.field private returnedMessage:Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

.field protected topupController:Lnz/co/telecom/smartphone/controller/TopupControllerInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private topupHandler:Landroid/os/Handler;

.field private topup_credit_card_other_amount:Lnz/co/telecom/smartphone/widget/TMYEditText;

.field private topup_layout_scroll_view:Landroid/widget/ScrollView;

.field private topup_voucher_mobile_no_EV:Lnz/co/telecom/smartphone/widget/TMYEditText;

.field private topup_voucher_number_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

.field private topup_voucher_selection_btns:Landroid/widget/LinearLayout;

.field private topup_voucher_top_layout_footer_footer_view:Landroid/widget/RelativeLayout;

.field private topup_voucher_top_layout_header:Landroid/widget/RelativeLayout;

.field private topup_voucher_top_layout_header_header_view:Landroid/widget/RelativeLayout;

.field private topup_voucher_topup_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

.field private voucherSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-string v0, ""

    sput-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->amountToTopUp:Ljava/lang/String;

    .line 129
    const/4 v0, 0x0

    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->creditCardPageDisplayed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>()V

    .line 72
    const-class v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->ERROR_VOUCHER:I

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->NOTHING_SELECTED:I

    .line 84
    const/4 v0, 0x4

    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->INVALID_AMOUNT:I

    .line 85
    const/4 v0, 0x5

    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->ERROR_MOBILENO:I

    .line 86
    const/4 v0, 0x6

    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->ERROR_IN_TOP_UP:I

    .line 94
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->voucherSelected:Z

    .line 95
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->creditCardSelected:Z

    .line 110
    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnedMessage:Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    .line 111
    iput v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->oneResult:I

    .line 112
    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;

    .line 113
    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;

    .line 121
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z

    .line 937
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragTopUp$8;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp$8;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 955
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->otherAmountSelected:Z

    .line 133
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>(I)V

    .line 72
    const-class v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->ERROR_VOUCHER:I

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->NOTHING_SELECTED:I

    .line 84
    const/4 v0, 0x4

    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->INVALID_AMOUNT:I

    .line 85
    const/4 v0, 0x5

    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->ERROR_MOBILENO:I

    .line 86
    const/4 v0, 0x6

    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->ERROR_IN_TOP_UP:I

    .line 94
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->voucherSelected:Z

    .line 95
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->creditCardSelected:Z

    .line 110
    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnedMessage:Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    .line 111
    iput v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->oneResult:I

    .line 112
    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;

    .line 113
    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;

    .line 121
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z

    .line 937
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragTopUp$8;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp$8;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 955
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->otherAmountSelected:Z

    .line 137
    return-void
.end method

.method public constructor <init>(ILnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "fragBuyExtraComponents"    # Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 201
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>(I)V

    .line 72
    const-class v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->ERROR_VOUCHER:I

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->NOTHING_SELECTED:I

    .line 84
    const/4 v0, 0x4

    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->INVALID_AMOUNT:I

    .line 85
    const/4 v0, 0x5

    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->ERROR_MOBILENO:I

    .line 86
    const/4 v0, 0x6

    iput v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->ERROR_IN_TOP_UP:I

    .line 94
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->voucherSelected:Z

    .line 95
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->creditCardSelected:Z

    .line 110
    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnedMessage:Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    .line 111
    iput v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->oneResult:I

    .line 112
    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;

    .line 113
    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;

    .line 121
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z

    .line 937
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragTopUp$8;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp$8;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 955
    iput-boolean v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->otherAmountSelected:Z

    .line 202
    iput-object p2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->m_fragBuyExtraComponents:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    .line 203
    return-void
.end method

.method static synthetic access$000(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->voucherSelected:Z

    return v0
.end method

.method static synthetic access$002(Lnz/co/telecom/smartphone/fragments/FragTopUp;Z)Z
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->voucherSelected:Z

    return p1
.end method

.method static synthetic access$100(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/widget/TMYEditText;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_number_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    return-object v0
.end method

.method static synthetic access$1000()Lnz/co/telecom/smartphone/widget/TMYButton;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_retry_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    return-object v0
.end method

.method static synthetic access$1100(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lnz/co/telecom/smartphone/fragments/FragTopUp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200()Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    return-object v0
.end method

.method static synthetic access$1300(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lnz/co/telecom/smartphone/fragments/FragTopUp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400()Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_text:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_topup_results:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->progress_block_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->voucherNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnedMessage:Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    return-object v0
.end method

.method static synthetic access$1902(Lnz/co/telecom/smartphone/fragments/FragTopUp;Lnz/co/telecom/smartphone/dto/topup/TopupDTO;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    .prologue
    .line 71
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnedMessage:Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    return-object p1
.end method

.method static synthetic access$200(Lnz/co/telecom/smartphone/fragments/FragTopUp;Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/widget/TMYEditText;
    .param p2, "x2"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->setImeVisibility(Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V

    return-void
.end method

.method static synthetic access$2000(Lnz/co/telecom/smartphone/fragments/FragTopUp;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    iget v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->oneResult:I

    return v0
.end method

.method static synthetic access$2002(Lnz/co/telecom/smartphone/fragments/FragTopUp;I)I
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->oneResult:I

    return p1
.end method

.method static synthetic access$2100(Lnz/co/telecom/smartphone/fragments/FragTopUp;)D
    .locals 2
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    iget-wide v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mostUpdatedBalance:D

    return-wide v0
.end method

.method static synthetic access$2102(Lnz/co/telecom/smartphone/fragments/FragTopUp;D)D
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;
    .param p1, "x1"    # D

    .prologue
    .line 71
    iput-wide p1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mostUpdatedBalance:D

    return-wide p1
.end method

.method static synthetic access$2200(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_layout_scroll_view:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$2300(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->generateToken()Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->callCreditCardPage()V

    return-void
.end method

.method static synthetic access$2500()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2600(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->creditCardSelected:Z

    return v0
.end method

.method static synthetic access$2700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->amountToTopUp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_error_close_error_IV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2900(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->resetVouchers()V

    return-void
.end method

.method static synthetic access$300(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->resetCreditCardButtons()V

    return-void
.end method

.method static synthetic access$3000(Lnz/co/telecom/smartphone/fragments/FragTopUp;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    iget v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->ERROR_IN_TOP_UP:I

    return v0
.end method

.method static synthetic access$3200(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->imManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$3300(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->resetOtherAmountCreditCardButtons()V

    return-void
.end method

.method static synthetic access$400(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/widget/TMYEditText;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_mobile_no_EV:Lnz/co/telecom/smartphone/widget/TMYEditText;

    return-object v0
.end method

.method static synthetic access$500(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/widget/TMYEditText;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_credit_card_other_amount:Lnz/co/telecom/smartphone/widget/TMYEditText;

    return-object v0
.end method

.method static synthetic access$600(Lnz/co/telecom/smartphone/fragments/FragTopUp;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->enableTopupButton(I)V

    return-void
.end method

.method static synthetic access$700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 71
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z

    return v0
.end method

.method static synthetic access$800()Lnz/co/telecom/smartphone/widget/TMYButton;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_ok_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    return-object v0
.end method

.method static synthetic access$900()Lnz/co/telecom/smartphone/widget/TMYButton;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_cancel_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

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

    .line 686
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v5}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->getCreditCardPage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 687
    .local v1, "ippaymentPage":Ljava/lang/StringBuffer;
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 688
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 689
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 690
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 692
    :try_start_0
    iget-boolean v5, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z

    if-eqz v5, :cond_0

    .line 693
    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cct getSessionId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getSessionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_0
    iget-boolean v5, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z

    if-eqz v5, :cond_1

    .line 695
    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cct getSst "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getSst()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_1
    iget-boolean v5, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z

    if-eqz v5, :cond_2

    .line 697
    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cct topUpMdn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_mobile_no_EV:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_2
    iget-boolean v5, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z

    if-eqz v5, :cond_3

    .line 699
    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cct topUpAmount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragTopUp;->amountToTopUp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_3
    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 701
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&SST="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getSst()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 702
    new-instance v3, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyWebClient;

    invoke-direct {v3, p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyWebClient;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    .line 703
    .local v3, "mwc":Lnz/co/telecom/smartphone/fragments/FragTopUp$MyWebClient;
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 704
    .local v4, "webSettings":Landroid/webkit/WebSettings;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 705
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 707
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 708
    const/16 v5, 0x12

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v5, v6, :cond_4

    .line 709
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 711
    :cond_4
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 713
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 714
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 715
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 716
    new-instance v2, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyChromeClient;

    invoke-direct {v2, p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyChromeClient;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    .line 717
    .local v2, "mcc":Lnz/co/telecom/smartphone/fragments/FragTopUp$MyChromeClient;
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;

    invoke-virtual {v5, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 718
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;

    invoke-virtual {v5, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 719
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 720
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;

    new-instance v6, Lnz/co/telecom/smartphone/fragments/FragTopUp$AppExt;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lnz/co/telecom/smartphone/fragments/FragTopUp$AppExt;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;Lnz/co/telecom/smartphone/fragments/FragTopUp$1;)V

    const-string v7, "ExtObj"

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :try_start_1
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 725
    :goto_0
    :try_start_2
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;

    const/16 v6, 0xa3

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 726
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;

    new-instance v6, Lnz/co/telecom/smartphone/fragments/FragTopUp$7;

    invoke-direct {v6, p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp$7;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 747
    .end local v2    # "mcc":Lnz/co/telecom/smartphone/fragments/FragTopUp$MyChromeClient;
    .end local v3    # "mwc":Lnz/co/telecom/smartphone/fragments/FragTopUp$MyWebClient;
    .end local v4    # "webSettings":Landroid/webkit/WebSettings;
    :goto_1
    return-void

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

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

    .line 742
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0036

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;

    .line 743
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    const v6, 0x7f0e0035

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;

    .line 744
    const/16 v5, 0x204

    invoke-virtual {p0, v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    goto :goto_1

    .line 723
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "mcc":Lnz/co/telecom/smartphone/fragments/FragTopUp$MyChromeClient;
    .restart local v3    # "mwc":Lnz/co/telecom/smartphone/fragments/FragTopUp$MyWebClient;
    .restart local v4    # "webSettings":Landroid/webkit/WebSettings;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private checkCreditCardAmount(Ljava/lang/String;)Z
    .locals 5
    .param p1, "oneText"    # Ljava/lang/String;

    .prologue
    .line 1098
    const/4 v1, 0x0

    .line 1099
    .local v1, "valid":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1101
    :try_start_0
    iget-boolean v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z

    if-eqz v2, :cond_0

    .line 1102
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in checkCreditcard amount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x41200000

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/high16 v3, 0x42c80000

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 1104
    const/4 v1, 0x1

    .line 1110
    :cond_1
    :goto_0
    return v1

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in checkCreditcard amount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkMobileNo(Ljava/lang/String;)Z
    .locals 2
    .param p1, "oneText"    # Ljava/lang/String;

    .prologue
    .line 1090
    const/4 v0, 0x0

    .line 1091
    .local v0, "valid":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1092
    const/4 v0, 0x1

    .line 1094
    :cond_0
    return v0
.end method

.method private checkVoucherLength(Ljava/lang/String;)Z
    .locals 2
    .param p1, "oneText"    # Ljava/lang/String;

    .prologue
    .line 1082
    const/4 v0, 0x0

    .line 1083
    .local v0, "valid":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1084
    const/4 v0, 0x1

    .line 1086
    :cond_0
    return v0
.end method

.method private enableTopupButton(I)V
    .locals 3
    .param p1, "buttonStatus"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 376
    if-nez p1, :cond_0

    .line 377
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_topup_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/widget/TMYButton;->setEnabled(Z)V

    .line 378
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_topup_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/widget/TMYButton;->setClickable(Z)V

    .line 383
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_topup_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYButton;->setEnabled(Z)V

    .line 381
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_topup_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYButton;->setClickable(Z)V

    goto :goto_0
.end method

.method private generateToken()Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;
    .locals 13

    .prologue
    const v12, 0x7f0e0036

    const v11, 0x7f0e0035

    const/16 v10, 0x204

    .line 620
    const/high16 v7, 0x42c80000

    sget-object v8, Lnz/co/telecom/smartphone/fragments/FragTopUp;->amountToTopUp:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v1, v7

    .line 622
    .local v1, "amountInCents":I
    iget-boolean v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z

    if-eqz v7, :cond_0

    .line 623
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " generateToken mdnNo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_mobile_no_EV:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v9}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_0
    iget-boolean v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z

    if-eqz v7, :cond_1

    .line 627
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " generateToken amountToTopUp "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_1
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .local v6, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "recipient"

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_mobile_no_EV:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v9}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "amount"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->creditCardController:Lnz/co/telecom/smartphone/controller/CreditCardController;

    invoke-virtual {v7, v6}, Lnz/co/telecom/smartphone/controller/CreditCardController;->getCreditCardToken(Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    move-result-object v7

    iput-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    .line 637
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    if-eqz v7, :cond_7

    .line 638
    iget-boolean v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z

    if-eqz v7, :cond_2

    .line 639
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " callCreditCardPage cct.getType() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v9}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_2
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ERROR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 642
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 643
    iget-boolean v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z

    if-eqz v7, :cond_3

    .line 644
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " callCreditCardPage cct.getValues() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v9}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_3
    const/4 v7, 0x0

    iput v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->oneResult:I

    .line 646
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v0

    .line 647
    .local v0, "allResults":Ljava/util/ArrayList;
    const/4 v5, 0x0

    .line 648
    .local v5, "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_5

    .line 649
    iget-boolean v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z

    if-eqz v7, :cond_4

    .line 650
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

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

    .line 651
    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    check-cast v5, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;

    .line 652
    .restart local v5    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->getTitle()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;

    .line 653
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->getMessage()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;

    .line 657
    .end local v0    # "allResults":Ljava/util/ArrayList;
    .end local v4    # "i":I
    .end local v5    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    :cond_5
    const/16 v7, 0x30a

    invoke-virtual {p0, v7}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 680
    .end local v6    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :goto_0
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    return-object v7

    .line 660
    .restart local v6    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_6
    const/16 v7, 0x30b

    :try_start_1
    invoke-virtual {p0, v7}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V
    :try_end_1
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 668
    .end local v6    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v3

    .line 669
    .local v3, "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    iput-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    .line 670
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

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

    .line 671
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;

    .line 672
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;

    .line 673
    invoke-virtual {p0, v10}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    goto :goto_0

    .line 663
    .end local v3    # "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    .restart local v6    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_7
    :try_start_2
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    const v8, 0x7f0e0036

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;

    .line 664
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    const v8, 0x7f0e0035

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;

    .line 665
    const/16 v7, 0x204

    invoke-virtual {p0, v7}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V
    :try_end_2
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 674
    .end local v6    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_1
    move-exception v2

    .line 675
    .local v2, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

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

    .line 676
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;

    .line 677
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;

    .line 678
    invoke-virtual {p0, v10}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    goto/16 :goto_0
.end method

.method private resetCreditCardButtons()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1054
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_selection_btns:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1055
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_selection_btns:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0201b8

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1057
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_selection_btns:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1054
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1060
    :cond_0
    iput-boolean v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->creditCardSelected:Z

    .line 1061
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_credit_card_other_amount:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->clearFocus()V

    .line 1062
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_credit_card_other_amount:Lnz/co/telecom/smartphone/widget/TMYEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_mobile_no_EV:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->clearFocus()V

    .line 1064
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_credit_card_other_amount:Lnz/co/telecom/smartphone/widget/TMYEditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setVisibility(I)V

    .line 1066
    iput-boolean v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->otherAmountSelected:Z

    .line 1067
    return-void
.end method

.method private resetOtherAmountCreditCardButtons()V
    .locals 2

    .prologue
    .line 1070
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_credit_card_other_amount:Lnz/co/telecom/smartphone/widget/TMYEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_mobile_no_EV:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/widget/TMYEditText;->clearFocus()V

    .line 1072
    return-void
.end method

.method private resetVouchers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1075
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_number_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/widget/TMYEditText;->clearFocus()V

    .line 1076
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_number_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->imManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_number_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1078
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->voucherSelected:Z

    .line 1079
    return-void
.end method

.method private setButtons()V
    .locals 3

    .prologue
    .line 911
    const/4 v1, 0x0

    .line 912
    .local v1, "subView":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_selection_btns:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 913
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_selection_btns:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 914
    instance-of v2, v1, Lnz/co/telecom/smartphone/widget/TMYButton;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 915
    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/widget/TMYButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 916
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 912
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 919
    :cond_1
    return-void
.end method

.method private setCreditCardAmountEditText()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1047
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_credit_card_other_amount:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setVisibility(I)V

    .line 1048
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_credit_card_other_amount:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/widget/TMYEditText;->requestFocusFromTouch()Z

    .line 1049
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_credit_card_other_amount:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/widget/TMYEditText;->requestFocus()Z

    .line 1050
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_credit_card_other_amount:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setSelection(I)V

    .line 1051
    return-void
.end method

.method private setImeVisibility(Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V
    .locals 3
    .param p1, "oneText"    # Lnz/co/telecom/smartphone/widget/TMYEditText;
    .param p2, "visible"    # Z

    .prologue
    .line 946
    if-eqz p2, :cond_1

    .line 947
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lnz/co/telecom/smartphone/widget/TMYEditText;->post(Ljava/lang/Runnable;)Z

    .line 950
    :goto_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->imManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->imManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 953
    :cond_0
    return-void

    .line 949
    :cond_1
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lnz/co/telecom/smartphone/widget/TMYEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static showCreditCardCancelled()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 1192
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1193
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_ok_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 1194
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_continue_shopping_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 1195
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_cancel_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 1196
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_retry_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 1197
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_error_close_error_IV:Landroid/widget/ImageView;

    const v1, 0x7f020141

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1198
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_text:Landroid/widget/RelativeLayout;

    const v1, 0x7f020211

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1199
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    sget-object v1, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setTextColor(I)V

    .line 1201
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    sget-object v1, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    sget-object v1, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setTextColor(I)V

    .line 1204
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    sget-object v1, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_topup_results:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1206
    sput-boolean v3, Lnz/co/telecom/smartphone/fragments/FragTopUp;->creditCardPageDisplayed:Z

    .line 1207
    return-void
.end method

.method private toggleOtherAmount(Z)V
    .locals 2
    .param p1, "status"    # Z

    .prologue
    const/16 v1, 0x8

    .line 927
    if-eqz p1, :cond_0

    .line 928
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->setCreditCardAmountEditText()V

    .line 929
    invoke-direct {p0, v1}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->enableTopupButton(I)V

    .line 935
    :goto_0
    return-void

    .line 931
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_credit_card_other_amount:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setVisibility(I)V

    .line 932
    invoke-direct {p0, v1}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->enableTopupButton(I)V

    goto :goto_0
.end method

.method private topupinitializeHandler()V
    .locals 1

    .prologue
    .line 610
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topupHandler:Landroid/os/Handler;

    .line 611
    return-void
.end method


# virtual methods
.method public changeProgressDialogStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 750
    if-ne p1, v2, :cond_0

    .line 751
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 752
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 753
    const/4 v0, 0x1

    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->creditCardPageDisplayed:Z

    .line 759
    :goto_0
    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 756
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 757
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragTopUp;->creditCardPageDisplayed:Z

    goto :goto_0
.end method

.method protected createMessage(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 901
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 902
    .local v0, "m":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 904
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topupHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 905
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topupinitializeHandler()V

    .line 907
    :cond_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topupHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 908
    return-void
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getResults()V
    .locals 12

    .prologue
    const v11, 0x7f0e0036

    const v10, 0x7f0e0035

    const/4 v9, 0x1

    const/16 v8, 0x30a

    const/4 v7, 0x0

    .line 833
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v3, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "session_id"

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getSessionId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sst"

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getSst()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    const/4 v2, 0x0

    .line 837
    .local v2, "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->creditCardController:Lnz/co/telecom/smartphone/controller/CreditCardController;

    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v4, v5, v3}, Lnz/co/telecom/smartphone/controller/CreditCardController;->getCreditCardResult(Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    .line 838
    iget-boolean v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z

    if-eqz v4, :cond_0

    .line 839
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " balance "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getBalance()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getValues "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " messages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getMessages()Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " cct.getMessages() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getMessages()Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_0
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v9, :cond_3

    .line 847
    :cond_1
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getMessages()Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 848
    const/4 v4, 0x1

    iput v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->oneResult:I

    .line 849
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getBalance()F

    move-result v4

    float-to-double v4, v4

    iput-wide v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mostUpdatedBalance:D

    .line 853
    :goto_0
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getMessages()Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    check-cast v2, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;

    .line 854
    .restart local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;

    .line 855
    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;

    .line 864
    :goto_1
    const/16 v4, 0x30a

    invoke-virtual {p0, v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    .line 879
    .end local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    .end local v3    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :goto_2
    return-void

    .line 851
    .restart local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    .restart local v3    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_2
    const/4 v4, 0x0

    iput v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->oneResult:I
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 865
    .end local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    .end local v3    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v1

    .line 866
    .local v1, "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

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

    .line 867
    iput v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->oneResult:I

    .line 868
    sget-object v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;

    .line 869
    sget-object v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;

    .line 870
    invoke-virtual {p0, v8}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    goto :goto_2

    .line 858
    .end local v1    # "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    .restart local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    .restart local v3    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_3
    :try_start_1
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->cct:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    check-cast v2, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;

    .line 859
    .restart local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    const/4 v4, 0x0

    iput v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->oneResult:I

    .line 860
    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;

    .line 861
    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;
    :try_end_1
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 872
    .end local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    .end local v3    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_1
    move-exception v0

    .line 873
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

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

    .line 874
    iput v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->oneResult:I

    .line 875
    sget-object v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;

    .line 876
    sget-object v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;

    .line 877
    invoke-virtual {p0, v8}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    goto/16 :goto_2
.end method

.method protected initData()Landroid/view/View;
    .locals 5

    .prologue
    .line 232
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v2}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->allowDeviceLogging()Z

    move-result v2

    iput-boolean v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z

    .line 234
    :try_start_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->localInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03002b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    .line 235
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0900d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_progressbar:Landroid/widget/RelativeLayout;

    .line 236
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f09013a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYTextView;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->progress_block_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 238
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0900da

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_no_data_error:Landroid/widget/RelativeLayout;

    .line 239
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->initData()Landroid/view/View;

    .line 240
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0900c7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_layout_scroll_view:Landroid/widget/ScrollView;

    .line 241
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0900c8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_top_layout_header:Landroid/widget/RelativeLayout;

    .line 242
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_top_layout_header:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 243
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0900c5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_top_layout_header_header_view:Landroid/widget/RelativeLayout;

    .line 244
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0900c6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_top_layout_footer_footer_view:Landroid/widget/RelativeLayout;

    .line 245
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_top_layout_header_header_view:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->myHeaderView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 246
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_top_layout_footer_footer_view:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->myFooterView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 247
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    .line 248
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0900cc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYEditText;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_mobile_no_EV:Lnz/co/telecom/smartphone/widget/TMYEditText;

    .line 249
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0900ce

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_selection_btns:Landroid/widget/LinearLayout;

    .line 250
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0900d6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYButton;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_topup_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 251
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_topup_action_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v2, p0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0900d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYEditText;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_number_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    .line 253
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0900d7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    sput-object v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;

    .line 254
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->imManager:Landroid/view/inputmethod/InputMethodManager;

    .line 255
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0900d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    sput-object v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_topup_results:Landroid/widget/RelativeLayout;

    .line 256
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0901c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_error_close_error_IV:Landroid/widget/ImageView;

    .line 257
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0901c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    sput-object v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_text:Landroid/widget/RelativeLayout;

    .line 258
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0901c3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    sput-object v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 259
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0901ca

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYButton;

    sput-object v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_cancel_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 260
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0901c7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYButton;

    sput-object v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_retry_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 261
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0901c8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYButton;

    sput-object v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_ok_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 262
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0901c9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYButton;

    sput-object v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_continue_shopping_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 263
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->m_fragBuyExtraComponents:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    if-eqz v2, :cond_0

    .line 264
    sget-object v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_continue_shopping_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 265
    sget-object v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_ok_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 270
    :goto_0
    sget-object v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_continue_shopping_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v2, p0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    sget-object v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_retry_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v2, p0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    sget-object v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_cancel_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v2, p0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    sget-object v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_ok_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    invoke-virtual {v2, p0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0901c4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYTextView;

    sput-object v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 275
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_mobile_no_EV:Lnz/co/telecom/smartphone/widget/TMYEditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setSelectAllOnFocus(Z)V

    .line 276
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    const v3, 0x7f0900d0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYEditText;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_credit_card_other_amount:Lnz/co/telecom/smartphone/widget/TMYEditText;

    .line 277
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_mobile_no_EV:Lnz/co/telecom/smartphone/widget/TMYEditText;

    new-instance v3, Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;

    invoke-direct {v3}, Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;-><init>()V

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 278
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_number_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    new-instance v3, Lnz/co/telecom/smartphone/fragments/FragTopUp$1;

    invoke-direct {v3, p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp$1;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 289
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_mobile_no_EV:Lnz/co/telecom/smartphone/widget/TMYEditText;

    new-instance v3, Lnz/co/telecom/smartphone/fragments/FragTopUp$2;

    invoke-direct {v3, p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp$2;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 298
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_mobile_no_EV:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/widget/TMYEditText;->clearFocus()V

    .line 300
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_credit_card_other_amount:Lnz/co/telecom/smartphone/widget/TMYEditText;

    new-instance v3, Lnz/co/telecom/smartphone/fragments/FragTopUp$3;

    invoke-direct {v3, p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp$3;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 309
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_credit_card_other_amount:Lnz/co/telecom/smartphone/widget/TMYEditText;

    new-instance v3, Lnz/co/telecom/smartphone/fragments/FragTopUp$4;

    invoke-direct {v3, p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp$4;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 328
    const/4 v2, 0x1

    new-array v1, v2, [Landroid/text/InputFilter;

    .line 329
    .local v1, "filters":[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Lnz/co/telecom/smartphone/fragments/FragTopUp$5;

    invoke-direct {v3, p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp$5;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    aput-object v3, v1, v2

    .line 342
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_credit_card_other_amount:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v2, v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 343
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_number_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    new-instance v3, Lnz/co/telecom/smartphone/fragments/FragTopUp$6;

    invoke-direct {v3, p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp$6;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 362
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->setButtons()V

    .line 363
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topupinitializeHandler()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v1    # "filters":[Landroid/text/InputFilter;
    :goto_1
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    return-object v2

    .line 267
    :cond_0
    :try_start_1
    sget-object v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_continue_shopping_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 268
    sget-object v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_ok_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in topupfrag "

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

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x309

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 959
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 960
    const/4 v2, 0x0

    .line 961
    .local v2, "subView":Landroid/view/View;
    iput-boolean v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->creditCardSelected:Z

    .line 962
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_selection_btns:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 963
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_selection_btns:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 964
    if-ne p1, v2, :cond_1

    .line 965
    const v3, 0x7f0201b7

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    move-object v3, p1

    .line 966
    check-cast v3, Landroid/widget/Button;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 968
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 969
    invoke-direct {p0, v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->toggleOtherAmount(Z)V

    .line 970
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "$"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lnz/co/telecom/smartphone/fragments/FragTopUp;->amountToTopUp:Ljava/lang/String;

    .line 971
    iput-boolean v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->otherAmountSelected:Z

    .line 972
    invoke-direct {p0, v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->enableTopupButton(I)V

    .line 962
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 974
    :cond_0
    invoke-direct {p0, v7}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->toggleOtherAmount(Z)V

    .line 975
    iput-boolean v7, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->otherAmountSelected:Z

    goto :goto_1

    .line 978
    :cond_1
    const v3, 0x7f0201b8

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    move-object v3, v2

    .line 979
    check-cast v3, Landroid/widget/Button;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 983
    :cond_2
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->resetVouchers()V

    .line 984
    iget-boolean v3, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->otherAmountSelected:Z

    if-nez v3, :cond_3

    .line 985
    invoke-direct {p0, v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->enableTopupButton(I)V

    .line 1044
    .end local v1    # "i":I
    .end local v2    # "subView":Landroid/view/View;
    :cond_3
    :goto_2
    return-void

    .line 987
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0900d6

    if-ne v3, v4, :cond_b

    .line 989
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_mobile_no_EV:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->checkMobileNo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 990
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_number_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lnz/co/telecom/smartphone/fragments/FragTopUp;->voucherNo:Ljava/lang/String;

    .line 991
    iget-boolean v3, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->voucherSelected:Z

    if-eqz v3, :cond_6

    .line 992
    sget-object v3, Lnz/co/telecom/smartphone/fragments/FragTopUp;->voucherNo:Ljava/lang/String;

    invoke-direct {p0, v3}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->checkVoucherLength(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 993
    invoke-virtual {p0, v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    goto :goto_2

    .line 995
    :cond_5
    iget v3, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->ERROR_VOUCHER:I

    invoke-virtual {p0, v3}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 997
    :cond_6
    iget-boolean v3, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->creditCardSelected:Z

    if-eqz v3, :cond_9

    .line 998
    iget-boolean v3, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->otherAmountSelected:Z

    if-eqz v3, :cond_8

    .line 999
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_credit_card_other_amount:Lnz/co/telecom/smartphone/widget/TMYEditText;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lnz/co/telecom/smartphone/fragments/FragTopUp;->amountToTopUp:Ljava/lang/String;

    .line 1000
    sget-object v3, Lnz/co/telecom/smartphone/fragments/FragTopUp;->amountToTopUp:Ljava/lang/String;

    invoke-direct {p0, v3}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->checkCreditCardAmount(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1001
    invoke-virtual {p0, v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    goto :goto_2

    .line 1003
    :cond_7
    iget v3, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->INVALID_AMOUNT:I

    invoke-virtual {p0, v3}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 1006
    :cond_8
    invoke-virtual {p0, v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    goto :goto_2

    .line 1009
    :cond_9
    iget v3, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->NOTHING_SELECTED:I

    invoke-virtual {p0, v3}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 1012
    :cond_a
    iget v3, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->ERROR_MOBILENO:I

    invoke-virtual {p0, v3}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    .line 1014
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0901c7

    if-ne v3, v4, :cond_c

    .line 1016
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->resetCreditCardButtons()V

    .line 1017
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->resetVouchers()V

    .line 1018
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_layout_scroll_view:Landroid/widget/ScrollView;

    invoke-virtual {v3, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1019
    sget-object v3, Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_topup_results:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1020
    const/16 v3, 0x201

    invoke-virtual {p0, v3}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    goto/16 :goto_2

    .line 1022
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0901ca

    if-ne v3, v4, :cond_d

    .line 1023
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    .line 1024
    .local v0, "activityNavigationDrawer":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    invoke-virtual {v0, v6}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->setCurrentNavigationMenuFragment(I)V

    .line 1025
    new-instance v3, Lnz/co/telecom/smartphone/fragments/FragMyUsage;

    invoke-direct {v3, v6}, Lnz/co/telecom/smartphone/fragments/FragMyUsage;-><init>(I)V

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->switchContent(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    .line 1026
    const-string v3, "usage"

    invoke-static {v3}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1027
    .end local v0    # "activityNavigationDrawer":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0901c9

    if-ne v3, v4, :cond_e

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->m_fragBuyExtraComponents:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    if-eqz v3, :cond_e

    .line 1032
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragBase;->requestRefreshAll()V

    .line 1033
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    .line 1034
    .restart local v0    # "activityNavigationDrawer":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->setCurrentNavigationMenuFragment(I)V

    .line 1035
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->m_fragBuyExtraComponents:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->switchContent(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    goto/16 :goto_2

    .line 1037
    .end local v0    # "activityNavigationDrawer":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0901c8

    if-ne v3, v4, :cond_3

    .line 1038
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    .line 1039
    .restart local v0    # "activityNavigationDrawer":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    invoke-virtual {v0, v6}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->setCurrentNavigationMenuFragment(I)V

    .line 1040
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragBase;->requestRefreshAll()V

    .line 1041
    new-instance v3, Lnz/co/telecom/smartphone/fragments/FragMyUsage;

    invoke-direct {v3, v6}, Lnz/co/telecom/smartphone/fragments/FragMyUsage;-><init>(I)V

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->switchContent(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    .line 1042
    const-string v3, "usage"

    invoke-static {v3}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .param p1, "oneDialogId"    # I

    .prologue
    const/4 v11, 0x0

    .line 1114
    new-instance v7, Landroid/app/Dialog;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1115
    .local v7, "subDialog":Landroid/app/Dialog;
    iget-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->localInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030045

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1117
    .local v0, "myDialogView":Landroid/view/View;
    const v8, 0x7f090130

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1118
    .local v2, "popup_dialog_close_error_IV":Landroid/widget/ImageView;
    const v8, 0x7f090132

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 1119
    .local v6, "popup_dialog_title_TV":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    const v8, 0x7f090133

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 1121
    .local v3, "popup_dialog_content_TV":Lnz/co/telecom/smartphone/widget/TMYTextView;
    const v8, 0x7f090137

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 1123
    .local v1, "popup_dialog_cancel_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const v8, 0x7f090138

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 1124
    .local v5, "popup_dialog_retry_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const v8, 0x7f090136

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 1125
    .local v4, "popup_dialog_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 1126
    new-instance v8, Lnz/co/telecom/smartphone/fragments/FragTopUp$9;

    invoke-direct {v8, p0, v7}, Lnz/co/telecom/smartphone/fragments/FragTopUp$9;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1134
    iget v8, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->INVALID_AMOUNT:I

    if-ne p1, v8, :cond_1

    .line 1135
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e00e6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e00e5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    new-instance v8, Lnz/co/telecom/smartphone/fragments/FragTopUp$10;

    invoke-direct {v8, p0, v7}, Lnz/co/telecom/smartphone/fragments/FragTopUp$10;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;Landroid/app/Dialog;)V

    invoke-virtual {v4, v8}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1184
    :cond_0
    :goto_0
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 1185
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1186
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1187
    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1188
    return-object v7

    .line 1144
    :cond_1
    iget v8, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->ERROR_MOBILENO:I

    if-ne p1, v8, :cond_2

    .line 1145
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e00ec

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e00eb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    new-instance v8, Lnz/co/telecom/smartphone/fragments/FragTopUp$11;

    invoke-direct {v8, p0, v7}, Lnz/co/telecom/smartphone/fragments/FragTopUp$11;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;Landroid/app/Dialog;)V

    invoke-virtual {v4, v8}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1153
    :cond_2
    iget v8, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->ERROR_VOUCHER:I

    if-ne p1, v8, :cond_3

    .line 1154
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e00f4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e00f3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    new-instance v8, Lnz/co/telecom/smartphone/fragments/FragTopUp$12;

    invoke-direct {v8, p0, v7}, Lnz/co/telecom/smartphone/fragments/FragTopUp$12;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;Landroid/app/Dialog;)V

    invoke-virtual {v4, v8}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1162
    :cond_3
    iget v8, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->NOTHING_SELECTED:I

    if-ne p1, v8, :cond_4

    .line 1164
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e00ee

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e00ed

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    new-instance v8, Lnz/co/telecom/smartphone/fragments/FragTopUp$13;

    invoke-direct {v8, p0, v7}, Lnz/co/telecom/smartphone/fragments/FragTopUp$13;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;Landroid/app/Dialog;)V

    invoke-virtual {v4, v8}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1173
    :cond_4
    iget v8, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->ERROR_IN_TOP_UP:I

    if-ne p1, v8, :cond_0

    .line 1174
    invoke-virtual {v6, v11}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 1175
    iget-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    iget-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    new-instance v8, Lnz/co/telecom/smartphone/fragments/FragTopUp$14;

    invoke-direct {v8, p0, v7}, Lnz/co/telecom/smartphone/fragments/FragTopUp$14;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;Landroid/app/Dialog;)V

    invoke-virtual {v4, v8}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 923
    invoke-super {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 924
    return-void
.end method

.method protected refreshPageDetails()V
    .locals 4

    .prologue
    .line 208
    :try_start_0
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragBase;->requestRefreshForTopupCreditCard()V

    .line 209
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->refreshPageDetails()V

    .line 210
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mdnNo:Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->isPrePaid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_mobile_no_EV:Lnz/co/telecom/smartphone/widget/TMYEditText;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mdnNo:Ljava/lang/String;

    invoke-static {v2}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :cond_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_top_layout_header:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_topup_button:Lnz/co/telecom/smartphone/widget/TMYButton;

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_topup_button:Lnz/co/telecom/smartphone/widget/TMYButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 219
    :cond_1
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_manage_extras_button:Lnz/co/telecom/smartphone/widget/TMYButton;

    if-eqz v1, :cond_2

    .line 220
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase;->header_message_block_manage_extras_button:Lnz/co/telecom/smartphone/widget/TMYButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 222
    :cond_2
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V

    .line 223
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->globalView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in refreshPageDetails topupfrag "

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

.method public toggleTermsAndConditions(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 371
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    .line 372
    .local v0, "ra":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->toggleTermsAndConditions(I)V

    .line 373
    return-void
.end method
