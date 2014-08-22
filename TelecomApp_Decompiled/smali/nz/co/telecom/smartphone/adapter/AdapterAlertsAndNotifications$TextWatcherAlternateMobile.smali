.class Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$TextWatcherAlternateMobile;
.super Ljava/lang/Object;
.source "AdapterAlertsAndNotifications.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextWatcherAlternateMobile"
.end annotation


# instance fields
.field private settingLinkDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;

.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;

.field private viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;


# direct methods
.method private constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$TextWatcherAlternateMobile;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;
    .param p2, "x1"    # Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$TextWatcherAlternateMobile;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "mdn":Ljava/lang/String;
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$TextWatcherAlternateMobile;->settingLinkDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;

    invoke-virtual {v1, v0}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->setMDN(Ljava/lang/String;)V

    .line 95
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$TextWatcherAlternateMobile;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;

    iget-object v1, v1, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->buttonSaveAlternativeMobileNumber:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 98
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$TextWatcherAlternateMobile;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;

    iget-object v1, v1, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->buttonSaveAlternativeMobileNumber:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$TextWatcherAlternateMobile;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;

    iget-object v1, v1, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->buttonSaveAlternativeMobileNumber:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 102
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$TextWatcherAlternateMobile;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;

    iget-object v1, v1, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->buttonSaveAlternativeMobileNumber:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 84
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 88
    return-void
.end method

.method public setSettingLinkDTO(Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;)V
    .locals 0
    .param p1, "settingLinkDTO"    # Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;

    .prologue
    .line 76
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$TextWatcherAlternateMobile;->settingLinkDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;

    .line 77
    return-void
.end method

.method public setViewHolderDetails(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;)V
    .locals 0
    .param p1, "viewHolderDetails"    # Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;

    .prologue
    .line 79
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$TextWatcherAlternateMobile;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;

    return-void
.end method
