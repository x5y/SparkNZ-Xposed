.class public Lnz/co/telecom/smartphone/TelecomConstants;
.super Ljava/lang/Object;
.source "TelecomConstants.java"


# static fields
.field public static CREDIT_CARD_RESULT_FAIL:I = 0x0

.field public static CREDIT_CARD_RESULT_SUCCESS:I = 0x0

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static MESSAGE_TYPE_ERROR:Ljava/lang/String; = null

.field public static MESSAGE_TYPE_EXTRA:Ljava/lang/String; = null

.field public static MESSAGE_TYPE_INFO:Ljava/lang/String; = null

.field public static final PASSWORD_RESET_SMS_START:Ljava/lang/String; = "Your Spark Mobile validation code is "

.field public static REGISTRATION_CODE_ACCESS_OVER_LIMIT:I = 0x0

.field public static REGISTRATION_CODE_ALL_EXCEPTIONS:I = 0x0

.field public static REGISTRATION_CODE_INVALID_CODE:I = 0x0

.field public static REGISTRATION_CODE_INVALID_PASSWORD:I = 0x0

.field public static REGISTRATION_CODE_INVALID_REQUEST:I = 0x0

.field public static REGISTRATION_CODE_INVALID_REQUEST_WITH_GET:I = 0x0

.field public static REGISTRATION_CODE_NON_TELECOM:I = 0x0

.field public static REGISTRATION_CODE_SENDING_SMS_ERROR:I = 0x0

.field public static REGISTRATION_CODE_SUCCESS:I = 0x0

.field public static REGISTRATION_CODE_UPDATE_PASSWORD_ERROR:I = 0x0

.field public static final STATUS_FAILURE_NOTIFIER:I = 0x203

.field public static final STATUS_LOADING_NOTIFIER:I = 0x201

.field public static final STATUS_RESTART_APP_NOTIFIER:I = 0x205

.field public static final STATUS_SERVER_FAILURE_NOTIFIER:I = 0x204

.field public static final STATUS_SHOW_TANDC_NOTIFIER:I = 0x206

.field public static final STATUS_SUCCESS_NOTIFIER:I = 0x202


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7
    const-string v0, "info"

    sput-object v0, Lnz/co/telecom/smartphone/TelecomConstants;->MESSAGE_TYPE_INFO:Ljava/lang/String;

    .line 8
    const-string v0, "ERROR"

    sput-object v0, Lnz/co/telecom/smartphone/TelecomConstants;->MESSAGE_TYPE_ERROR:Ljava/lang/String;

    .line 9
    const-string v0, "extra"

    sput-object v0, Lnz/co/telecom/smartphone/TelecomConstants;->MESSAGE_TYPE_EXTRA:Ljava/lang/String;

    .line 10
    sput v1, Lnz/co/telecom/smartphone/TelecomConstants;->CREDIT_CARD_RESULT_SUCCESS:I

    .line 11
    const/4 v0, 0x3

    sput v0, Lnz/co/telecom/smartphone/TelecomConstants;->CREDIT_CARD_RESULT_FAIL:I

    .line 12
    const/4 v0, 0x0

    sput v0, Lnz/co/telecom/smartphone/TelecomConstants;->REGISTRATION_CODE_SUCCESS:I

    .line 13
    sput v1, Lnz/co/telecom/smartphone/TelecomConstants;->REGISTRATION_CODE_NON_TELECOM:I

    .line 14
    const/4 v0, 0x2

    sput v0, Lnz/co/telecom/smartphone/TelecomConstants;->REGISTRATION_CODE_SENDING_SMS_ERROR:I

    .line 15
    const/4 v0, 0x4

    sput v0, Lnz/co/telecom/smartphone/TelecomConstants;->REGISTRATION_CODE_INVALID_REQUEST:I

    .line 16
    const/4 v0, 0x5

    sput v0, Lnz/co/telecom/smartphone/TelecomConstants;->REGISTRATION_CODE_INVALID_CODE:I

    .line 17
    const/4 v0, 0x6

    sput v0, Lnz/co/telecom/smartphone/TelecomConstants;->REGISTRATION_CODE_INVALID_PASSWORD:I

    .line 18
    const/4 v0, 0x7

    sput v0, Lnz/co/telecom/smartphone/TelecomConstants;->REGISTRATION_CODE_UPDATE_PASSWORD_ERROR:I

    .line 19
    const/16 v0, 0xa

    sput v0, Lnz/co/telecom/smartphone/TelecomConstants;->REGISTRATION_CODE_INVALID_REQUEST_WITH_GET:I

    .line 20
    const/16 v0, 0xb

    sput v0, Lnz/co/telecom/smartphone/TelecomConstants;->REGISTRATION_CODE_ACCESS_OVER_LIMIT:I

    .line 21
    const/16 v0, 0xf

    sput v0, Lnz/co/telecom/smartphone/TelecomConstants;->REGISTRATION_CODE_ALL_EXCEPTIONS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    return-void
.end method
