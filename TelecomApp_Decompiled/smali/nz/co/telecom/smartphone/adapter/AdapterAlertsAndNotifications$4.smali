.class Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$4;
.super Lnz/co/telecom/smartphone/fragments/OnDismiss;
.source "AdapterAlertsAndNotifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->showConfirmChangeDialog(Lnz/co/telecom/smartphone/widget/TMYButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;

.field final synthetic val$button:Lnz/co/telecom/smartphone/widget/TMYButton;

.field final synthetic val$settingLinkDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;

.field final synthetic val$viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;Lnz/co/telecom/smartphone/widget/TMYButton;Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$4;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;

    iput-object p2, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$4;->val$button:Lnz/co/telecom/smartphone/widget/TMYButton;

    iput-object p3, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$4;->val$settingLinkDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;

    iput-object p4, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$4;->val$viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;

    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/OnDismiss;-><init>()V

    return-void
.end method


# virtual methods
.method public doDismissCancel()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$4;->val$settingLinkDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->resetMDN()V

    .line 495
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$4;->val$viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->editTextAlternativeMobileNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$4;->val$settingLinkDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->getMDN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 496
    return-void
.end method

.method public doDismissOK()V
    .locals 5

    .prologue
    .line 489
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$4;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mAlertUpdateRequestHandler:Lnz/co/telecom/smartphone/fragments/AlertUpdateRequestHandler;
    invoke-static {v0}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->access$400(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;)Lnz/co/telecom/smartphone/fragments/AlertUpdateRequestHandler;

    move-result-object v0

    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$4;->val$button:Lnz/co/telecom/smartphone/widget/TMYButton;

    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$4;->val$settingLinkDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->get_links()Lnz/co/telecom/smartphone/dto/hal/LinkDTO;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/hal/LinkDTO;->getSelf()Lnz/co/telecom/smartphone/dto/hal/SelfDTO;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/hal/SelfDTO;->getHref()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$4;->val$settingLinkDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->getIsOn()Z

    move-result v3

    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$4;->val$settingLinkDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->getMDN()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lnz/co/telecom/smartphone/fragments/AlertUpdateRequestHandler;->processAlertUpdate(Landroid/widget/Button;Ljava/lang/String;ZLjava/lang/String;)V

    .line 490
    return-void
.end method
