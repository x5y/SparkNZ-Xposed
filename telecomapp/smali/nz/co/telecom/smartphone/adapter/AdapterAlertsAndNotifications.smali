.class public Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;
.super Landroid/widget/BaseAdapter;
.source "AdapterAlertsAndNotifications.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;,
        Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$TextWatcherAlternateMobile;
    }
.end annotation


# static fields
.field private static final DESTINATION_TYPE_MDN:Ljava/lang/String; = "mdn"

.field private static final K_SECTION_1_PREFERENCES:I = 0x1

.field private static final K_SECTION_2_COPY_TO_PREFERENCES:I = 0x2

.field private static final MESSAGE_TYPE_CONFIRM:Ljava/lang/String; = "confirm"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlertUpdateRequestHandler:Lnz/co/telecom/smartphone/fragments/AlertUpdateRequestHandler;

.field private mAlertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

.field private mAlternativeMobileNumberLayoutParams:Landroid/widget/TableRow$LayoutParams;

.field private mContext:Landroid/content/Context;

.field private mFontNationalBold:Landroid/graphics/Typeface;

.field private mFontNationalRegular:Landroid/graphics/Typeface;

.field private mFragAlertsAndNotifications:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mParentFragmentActivity:Landroid/support/v4/app/FragmentActivity;

.field mShowConfirmationDialog:Z

.field private mTelecomMobileNumberTextWatcher:Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;Lnz/co/telecom/smartphone/fragments/AlertUpdateRequestHandler;)V
    .locals 8
    .param p1, "parentFragment"    # Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;
    .param p2, "alertsAndNotificationsDTO"    # Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;
    .param p3, "alertUpdateRequestHandler"    # Lnz/co/telecom/smartphone/fragments/AlertUpdateRequestHandler;

    .prologue
    const/4 v7, 0x1

    .line 107
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    iput-boolean v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mShowConfirmationDialog:Z

    .line 67
    const/4 v5, 0x0

    iput-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mAlternativeMobileNumberLayoutParams:Landroid/widget/TableRow$LayoutParams;

    .line 109
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mFragAlertsAndNotifications:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    .line 110
    invoke-virtual {p1}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iput-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mParentFragmentActivity:Landroid/support/v4/app/FragmentActivity;

    .line 111
    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mParentFragmentActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mContext:Landroid/content/Context;

    .line 112
    iput-object p3, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mAlertUpdateRequestHandler:Lnz/co/telecom/smartphone/fragments/AlertUpdateRequestHandler;

    .line 114
    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mInflater:Landroid/view/LayoutInflater;

    .line 116
    iput-object p2, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mAlertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    .line 118
    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mParentFragmentActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "fonts/National-Bold.otf"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mFontNationalBold:Landroid/graphics/Typeface;

    .line 119
    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mParentFragmentActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "fonts/National-Regular.otf"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mFontNationalRegular:Landroid/graphics/Typeface;

    .line 121
    new-instance v5, Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;

    invoke-direct {v5}, Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;-><init>()V

    iput-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mTelecomMobileNumberTextWatcher:Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;

    .line 123
    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mAlertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;->getCopyTo()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 124
    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mAlertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;->getCopyTo()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;

    .line 125
    .local v3, "preferenceDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;
    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->get_embedded()Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->get_embedded()Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;->getSettings()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->get_embedded()Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;->getSettings()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 128
    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->get_embedded()Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;->getSettings()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;

    .line 129
    .local v4, "settingLinkDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;
    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->getMDN()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 130
    const-string v5, ""

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->setMDN(Ljava/lang/String;)V

    .line 131
    const-string v5, ""

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->setSavedMDN(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->getDestinations()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 133
    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->getDestinations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/DestinationDTO;

    .line 134
    .local v0, "destinationDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/DestinationDTO;
    const-string v5, "mdn"

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/DestinationDTO;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 135
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/DestinationDTO;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->setMDN(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/DestinationDTO;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->setSavedMDN(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .end local v0    # "destinationDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/DestinationDTO;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "preferenceDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;
    .end local v4    # "settingLinkDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;
    :cond_2
    return-void
.end method

.method static synthetic access$100(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;Lorg/holoeverywhere/widget/Switch;Z)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;
    .param p1, "x1"    # Lorg/holoeverywhere/widget/Switch;
    .param p2, "x2"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->performAlertChange(Lorg/holoeverywhere/widget/Switch;Z)V

    return-void
.end method

.method static synthetic access$200(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;Lnz/co/telecom/smartphone/widget/TMYButton;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/widget/TMYButton;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->showConfirmChangeDialog(Lnz/co/telecom/smartphone/widget/TMYButton;)V

    return-void
.end method

.method static synthetic access$400(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;)Lnz/co/telecom/smartphone/fragments/AlertUpdateRequestHandler;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;

    .prologue
    .line 41
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mAlertUpdateRequestHandler:Lnz/co/telecom/smartphone/fragments/AlertUpdateRequestHandler;

    return-object v0
.end method

.method private getPositionForSection(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->getHeaderId(I)J

    move-result-wide v3

    long-to-int v0, v3

    .line 165
    .local v0, "headerId":I
    const/4 v1, 0x0

    .line 167
    .local v1, "positionForSection":I
    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mAlertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;->getPreferences()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 169
    .local v2, "sizePreferences":I
    packed-switch v0, :pswitch_data_0

    .line 180
    :goto_0
    return v1

    .line 172
    :pswitch_0
    move v1, p1

    .line 173
    goto :goto_0

    .line 176
    :pswitch_1
    sub-int v1, p1, v2

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performAlertChange(Lorg/holoeverywhere/widget/Switch;Z)V
    .locals 6
    .param p1, "selectedCheckBox"    # Lorg/holoeverywhere/widget/Switch;
    .param p2, "isCopyTo"    # Z

    .prologue
    const/4 v5, 0x0

    .line 420
    invoke-virtual {p1}, Lorg/holoeverywhere/widget/Switch;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;

    .line 422
    .local v1, "viewHolderDetails":Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;
    iget-object v2, v1, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->preferenceDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->get_embedded()Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;->getSettings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;

    .line 423
    .local v0, "settingLinkDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;
    invoke-virtual {p1}, Lorg/holoeverywhere/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->setIsOn(Z)V

    .line 425
    if-eqz p2, :cond_1

    .line 426
    invoke-virtual {p1}, Lorg/holoeverywhere/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    iget-object v2, v1, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->viewGroupAlternativeMobileDropdown:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 441
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mParentFragmentActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v2, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->hideSoftKeyBoard()V

    .line 433
    const-string v2, ""

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->setMDN(Ljava/lang/String;)V

    .line 434
    iget-object v2, v1, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->editTextAlternativeMobileNumber:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v2, v1, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->viewGroupAlternativeMobileDropdown:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 436
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mAlertUpdateRequestHandler:Lnz/co/telecom/smartphone/fragments/AlertUpdateRequestHandler;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->get_links()Lnz/co/telecom/smartphone/dto/hal/LinkDTO;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/hal/LinkDTO;->getSelf()Lnz/co/telecom/smartphone/dto/hal/SelfDTO;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/hal/SelfDTO;->getHref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->getIsOn()Z

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v2, p1, v3, v4, v5}, Lnz/co/telecom/smartphone/fragments/AlertUpdateRequestHandler;->processAlertUpdate(Lorg/holoeverywhere/widget/Switch;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 439
    :cond_1
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mAlertUpdateRequestHandler:Lnz/co/telecom/smartphone/fragments/AlertUpdateRequestHandler;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->get_links()Lnz/co/telecom/smartphone/dto/hal/LinkDTO;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/hal/LinkDTO;->getSelf()Lnz/co/telecom/smartphone/dto/hal/SelfDTO;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/hal/SelfDTO;->getHref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->getIsOn()Z

    move-result v4

    invoke-interface {v2, p1, v3, v4, v5}, Lnz/co/telecom/smartphone/fragments/AlertUpdateRequestHandler;->processAlertUpdate(Lorg/holoeverywhere/widget/Switch;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private showConfirmChangeDialog(Lnz/co/telecom/smartphone/widget/TMYButton;)V
    .locals 14
    .param p1, "button"    # Lnz/co/telecom/smartphone/widget/TMYButton;

    .prologue
    .line 444
    iget-boolean v10, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mShowConfirmationDialog:Z

    if-nez v10, :cond_0

    .line 498
    :goto_0
    return-void

    .line 449
    :cond_0
    invoke-virtual {p1}, Lnz/co/telecom/smartphone/widget/TMYButton;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;

    .line 450
    .local v9, "viewHolderDetails":Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->preferenceDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;

    invoke-virtual {v10}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->get_embedded()Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    move-result-object v10

    invoke-virtual {v10}, Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;->getSettings()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;

    .line 453
    .local v8, "settingLinkDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;
    invoke-virtual {v8}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->getMDN()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, " "

    const-string v12, "\u00a0"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, "formattedMDN":Ljava/lang/String;
    const/4 v2, 0x0

    .line 456
    .local v2, "confirmTitle":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 457
    .local v0, "confirmMessage":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->getMessages()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;

    .line 458
    .local v7, "messageGroupDTO":Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;
    const-string v10, "confirm"

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 459
    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;->getValues()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;

    .line 460
    .local v6, "messageDTO":Lnz/co/telecom/smartphone/dto/messages/MessageDTO;
    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->getTitle()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 461
    if-nez v2, :cond_3

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "confirmTitle":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .restart local v2    # "confirmTitle":Ljava/lang/StringBuilder;
    :cond_2
    :goto_2
    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->getTemplated()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 470
    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->getMessage()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\{mdn\\}"

    invoke-virtual {v10, v11, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "confirmPart":Ljava/lang/String;
    :goto_3
    if-nez v0, :cond_5

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "confirmMessage":Ljava/lang/StringBuilder;
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v0    # "confirmMessage":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 464
    .end local v1    # "confirmPart":Ljava/lang/String;
    :cond_3
    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 465
    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_2

    .line 472
    :cond_4
    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->getMessage()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "confirmPart":Ljava/lang/String;
    goto :goto_3

    .line 477
    :cond_5
    const-string v10, "\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 483
    .end local v1    # "confirmPart":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "messageDTO":Lnz/co/telecom/smartphone/dto/messages/MessageDTO;
    .end local v7    # "messageGroupDTO":Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;
    :cond_6
    iget-object v10, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mFragAlertsAndNotifications:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$4;

    invoke-direct {v13, p0, p1, v8, v9}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$4;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;Lnz/co/telecom/smartphone/widget/TMYButton;Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;)V

    invoke-virtual {v10, v11, v12, v13}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->showConfirmDialog(Ljava/lang/String;Ljava/lang/String;Lnz/co/telecom/smartphone/fragments/OnDismiss;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mAlertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;->getPreferences()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 153
    .local v0, "rowCount":I
    return v0
.end method

.method public getHeaderId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 217
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mAlertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;->getPreferences()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 219
    .local v0, "sizeAlerts":I
    if-ge p1, v0, :cond_0

    .line 220
    const-wide/16 v1, 0x1

    .line 223
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->getHeaderId(I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 190
    .local v0, "headerId":I
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->getPositionForSection(I)I

    move-result v1

    .line 192
    .local v1, "positionForSection":I
    sget-object v2, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getItem("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " headerId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : positionForSection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    packed-switch v0, :pswitch_data_0

    .line 204
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 197
    :pswitch_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mAlertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;->getPreferences()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 200
    :pswitch_1
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mAlertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;->getCopyTo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 208
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 233
    const/4 v10, 0x0

    iput-boolean v10, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mShowConfirmationDialog:Z

    .line 235
    move-object v8, p2

    .line 236
    .local v8, "view":Landroid/view/View;
    const/4 v9, 0x0

    .line 238
    .local v9, "viewHolderDetails":Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;
    if-nez p2, :cond_0

    .line 239
    iget-object v10, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f030051

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 241
    new-instance v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;

    .end local v9    # "viewHolderDetails":Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;
    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$1;)V

    .line 242
    .restart local v9    # "viewHolderDetails":Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;
    const v10, 0x7f090150

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->viewGroupTitleContainer:Landroid/view/ViewGroup;

    .line 243
    const v10, 0x7f090151

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->textViewAlertNotificationTitle:Landroid/widget/TextView;

    .line 245
    const v10, 0x7f090154

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->textViewAlertNotificationText:Landroid/widget/TextView;

    .line 246
    const v10, 0x7f090158

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->viewGroupAlertNotificationTextDivider:Landroid/view/ViewGroup;

    .line 248
    const v10, 0x7f090152

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lorg/holoeverywhere/widget/Switch;

    iput-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->switchAlertNotificationState:Lorg/holoeverywhere/widget/Switch;

    .line 249
    const v10, 0x7f090156

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    iput-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->editTextAlternativeMobileNumber:Landroid/widget/EditText;

    .line 251
    const v10, 0x7f090155

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->viewGroupAlternativeMobileDropdown:Landroid/view/ViewGroup;

    .line 252
    const v10, 0x7f090157

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->buttonSaveAlternativeMobileNumber:Landroid/widget/Button;

    .line 254
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0073

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    iput v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->colorWhite:I

    .line 255
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0047

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    iput v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->colorSectionBackground:I

    .line 257
    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 264
    :goto_0
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->getHeaderId(I)J

    move-result-wide v10

    long-to-int v1, v10

    .line 265
    .local v1, "headerId":I
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->getPositionForSection(I)I

    move-result v4

    .line 267
    .local v4, "positionForSection":I
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->viewGroupTitleContainer:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 268
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->viewGroupTitleContainer:Landroid/view/ViewGroup;

    iget v11, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->colorSectionBackground:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 270
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->viewGroupAlertNotificationTextDivider:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 271
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->switchAlertNotificationState:Lorg/holoeverywhere/widget/Switch;

    iget-object v11, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mFontNationalRegular:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Lorg/holoeverywhere/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 273
    const/4 v5, 0x0

    .line 274
    .local v5, "preferenceDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;
    packed-switch v1, :pswitch_data_0

    .line 282
    :goto_1
    iput-object v5, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->preferenceDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;

    .line 283
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->textViewAlertNotificationTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "alertText":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->getLabels()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;

    .line 287
    .local v3, "label":Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;
    if-nez v0, :cond_1

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "alertText":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .restart local v0    # "alertText":Ljava/lang/StringBuilder;
    :goto_3
    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 260
    .end local v0    # "alertText":Ljava/lang/StringBuilder;
    .end local v1    # "headerId":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "label":Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;
    .end local v4    # "positionForSection":I
    .end local v5    # "preferenceDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "viewHolderDetails":Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;
    check-cast v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;

    .line 261
    .restart local v9    # "viewHolderDetails":Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->switchAlertNotificationState:Lorg/holoeverywhere/widget/Switch;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/holoeverywhere/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 276
    .restart local v1    # "headerId":I
    .restart local v4    # "positionForSection":I
    .restart local v5    # "preferenceDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;
    :pswitch_0
    iget-object v10, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mAlertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    invoke-virtual {v10}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;->getPreferences()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "preferenceDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;
    check-cast v5, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;

    .line 277
    .restart local v5    # "preferenceDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;
    goto :goto_1

    .line 279
    :pswitch_1
    iget-object v10, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mAlertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    invoke-virtual {v10}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;->getCopyTo()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "preferenceDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;
    check-cast v5, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;

    .restart local v5    # "preferenceDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;
    goto :goto_1

    .line 290
    .restart local v0    # "alertText":Ljava/lang/StringBuilder;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "label":Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;
    :cond_1
    const-string v10, "\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 294
    .end local v3    # "label":Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;
    :cond_2
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->textViewAlertNotificationText:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->textViewAlertNotificationText:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    const/4 v6, 0x0

    .line 298
    .local v6, "settingLinkDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->get_embedded()Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->get_embedded()Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    move-result-object v10

    invoke-virtual {v10}, Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;->getSettings()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->get_embedded()Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    move-result-object v10

    invoke-virtual {v10}, Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;->getSettings()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 301
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->get_embedded()Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    move-result-object v10

    invoke-virtual {v10}, Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;->getSettings()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "settingLinkDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;
    check-cast v6, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;

    .line 302
    .restart local v6    # "settingLinkDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->switchAlertNotificationState:Lorg/holoeverywhere/widget/Switch;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->getIsOn()Z

    move-result v11

    invoke-virtual {v10, v11}, Lorg/holoeverywhere/widget/Switch;->setChecked(Z)V

    .line 303
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->switchAlertNotificationState:Lorg/holoeverywhere/widget/Switch;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/holoeverywhere/widget/Switch;->setVisibility(I)V

    .line 308
    :goto_4
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->switchAlertNotificationState:Lorg/holoeverywhere/widget/Switch;

    invoke-virtual {v10, v9}, Lorg/holoeverywhere/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 310
    packed-switch v1, :pswitch_data_1

    .line 366
    :goto_5
    const/4 v10, 0x1

    iput-boolean v10, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mShowConfirmationDialog:Z

    .line 368
    return-object v8

    .line 305
    :cond_3
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->switchAlertNotificationState:Lorg/holoeverywhere/widget/Switch;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lorg/holoeverywhere/widget/Switch;->setVisibility(I)V

    goto :goto_4

    .line 313
    :pswitch_2
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->viewGroupAlternativeMobileDropdown:Landroid/view/ViewGroup;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 314
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->switchAlertNotificationState:Lorg/holoeverywhere/widget/Switch;

    new-instance v11, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$1;

    invoke-direct {v11, p0}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$1;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;)V

    invoke-virtual {v10, v11}, Lorg/holoeverywhere/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_5

    .line 324
    :pswitch_3
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->buttonSaveAlternativeMobileNumber:Landroid/widget/Button;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<b>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->getSubmitTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</b>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->buttonSaveAlternativeMobileNumber:Landroid/widget/Button;

    invoke-virtual {v10, v9}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 327
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->buttonSaveAlternativeMobileNumber:Landroid/widget/Button;

    new-instance v11, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$2;

    invoke-direct {v11, p0}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$2;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->editTextAlternativeMobileNumber:Landroid/widget/EditText;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 335
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->editTextAlternativeMobileNumber:Landroid/widget/EditText;

    iget-object v11, p0, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;->mTelecomMobileNumberTextWatcher:Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 337
    new-instance v7, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$TextWatcherAlternateMobile;

    const/4 v10, 0x0

    invoke-direct {v7, p0, v10}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$TextWatcherAlternateMobile;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$1;)V

    .line 338
    .local v7, "textWatcher":Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$TextWatcherAlternateMobile;
    invoke-virtual {v7, v6}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$TextWatcherAlternateMobile;->setSettingLinkDTO(Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;)V

    .line 339
    invoke-virtual {v7, v9}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$TextWatcherAlternateMobile;->setViewHolderDetails(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;)V

    .line 340
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->editTextAlternativeMobileNumber:Landroid/widget/EditText;

    invoke-virtual {v10, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 342
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->switchAlertNotificationState:Lorg/holoeverywhere/widget/Switch;

    invoke-virtual {v10}, Lorg/holoeverywhere/widget/Switch;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 343
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->viewGroupAlternativeMobileDropdown:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 348
    :goto_6
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->editTextAlternativeMobileNumber:Landroid/widget/EditText;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->getMDN()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 349
    const-string v10, ""

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->getMDN()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 352
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->buttonSaveAlternativeMobileNumber:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 353
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->buttonSaveAlternativeMobileNumber:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setClickable(Z)V

    .line 356
    :cond_4
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->switchAlertNotificationState:Lorg/holoeverywhere/widget/Switch;

    new-instance v11, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$3;

    invoke-direct {v11, p0}, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$3;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications;)V

    invoke-virtual {v10, v11}, Lorg/holoeverywhere/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_5

    .line 345
    :cond_5
    const-string v10, ""

    invoke-virtual {v6, v10}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->setMDN(Ljava/lang/String;)V

    .line 346
    iget-object v10, v9, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->viewGroupAlternativeMobileDropdown:Landroid/view/ViewGroup;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 310
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public mdnCleared(Lorg/holoeverywhere/widget/Switch;)V
    .locals 4
    .param p1, "switchWidget"    # Lorg/holoeverywhere/widget/Switch;

    .prologue
    .line 506
    invoke-virtual {p1}, Lorg/holoeverywhere/widget/Switch;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;

    .line 508
    .local v1, "viewHolderDetails":Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;
    iget-object v2, v1, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->preferenceDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->get_embedded()Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;->getSettings()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;

    .line 509
    .local v0, "settingLinkDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;
    const-string v2, ""

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->setSavedMDN(Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method public mdnSaved(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 4
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "mdn"    # Ljava/lang/String;

    .prologue
    .line 513
    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;

    .line 515
    .local v1, "viewHolderDetails":Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;
    iget-object v2, v1, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->preferenceDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->get_embedded()Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;->getSettings()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;

    .line 516
    .local v0, "settingLinkDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;
    invoke-virtual {v0, p2}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->setSavedMDN(Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public resetUIWithAlert(Lorg/holoeverywhere/widget/Switch;Z)V
    .locals 4
    .param p1, "switchWidget"    # Lorg/holoeverywhere/widget/Switch;
    .param p2, "isCopyTo"    # Z

    .prologue
    const/4 v3, 0x0

    .line 401
    invoke-virtual {p1}, Lorg/holoeverywhere/widget/Switch;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;

    .line 403
    .local v1, "viewHolderDetails":Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;
    iget-object v2, v1, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->preferenceDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->get_embedded()Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;->getSettings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;

    .line 404
    .local v0, "settingLinkDTO":Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->getIsOn()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->setIsOn(Z)V

    .line 405
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->getIsOn()Z

    move-result v2

    invoke-virtual {p1, v2}, Lorg/holoeverywhere/widget/Switch;->setChecked(Z)V

    .line 406
    if-eqz p2, :cond_0

    .line 407
    invoke-virtual {p1}, Lorg/holoeverywhere/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 408
    iget-object v2, v1, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->viewGroupAlternativeMobileDropdown:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 413
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 404
    goto :goto_0

    .line 410
    :cond_2
    iget-object v2, v1, Lnz/co/telecom/smartphone/adapter/AdapterAlertsAndNotifications$ViewHolder;->viewGroupAlternativeMobileDropdown:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method
