.class Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;
.super Ljava/lang/Object;
.source "AdapterAlertsAndNotifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field buttonSaveAlternativeMobileNumber:Landroid/widget/Button;

.field colorSectionBackground:I

.field colorWhite:I

.field editTextAlternativeMobileNumber:Landroid/widget/EditText;

.field preferenceDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;

.field switchAlertNotificationState:Lorg/holoeverywhere/widget/Switch;

.field textViewAlertNotificationText:Landroid/widget/TextView;

.field textViewAlertNotificationTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;

.field viewGroupAlertNotificationTextDivider:Landroid/view/ViewGroup;

.field viewGroupAlternativeMobileDropdown:Landroid/view/ViewGroup;

.field viewGroupTitleContainer:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;
    .param p2, "x1"    # Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$1;

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;)V

    return-void
.end method
