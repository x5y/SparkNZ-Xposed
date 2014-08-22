.class public Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;
.super Landroid/widget/BaseAdapter;
.source "AdapterMyAccount.java"

# interfaces
.implements Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;,
        Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolderHeader;
    }
.end annotation


# static fields
.field private static final K_CONFIRM_TYPE_CALL_SETTINGS:I = 0x0

.field private static final K_CONFIRM_TYPE_DIVERSIONS:I = 0x1

.field private static final K_SECTION_1_CALL_SETTINGS:I = 0x1

.field private static final K_SECTION_2_DIVERSIONS:I = 0x2

.field private static final K_SECTION_3_PROTECTIONS:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlternativeMobileNumberLayoutParams:Landroid/widget/TableRow$LayoutParams;

.field private mCheckboxTextColor:I

.field private mContext:Landroid/content/Context;

.field private mFontNationalBold:Landroid/graphics/Typeface;

.field private mFontNationalRegular:Landroid/graphics/Typeface;

.field private mFragMyAccount:Lnz/co/telecom/smartphone/fragments/FragMyAccount;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

.field private mParentFragmentActivity:Landroid/support/v4/app/FragmentActivity;

.field mShowConfirmationDialog:Z

.field private mStringRings:Ljava/lang/String;

.field private mTelecomMobileNumberTextWatcher:Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;

.field private mTextWatcherCallDivertionToMobile:Landroid/text/TextWatcher;

.field private viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

.field private viewHolderHeader:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolderHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnz/co/telecom/smartphone/fragments/FragMyAccount;Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;)V
    .locals 2
    .param p1, "parentFragment"    # Lnz/co/telecom/smartphone/fragments/FragMyAccount;
    .param p2, "myAccountDTO"    # Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mShowConfirmationDialog:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mAlternativeMobileNumberLayoutParams:Landroid/widget/TableRow$LayoutParams;

    .line 84
    new-instance v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$1;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$1;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mTextWatcherCallDivertionToMobile:Landroid/text/TextWatcher;

    .line 105
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mFragMyAccount:Lnz/co/telecom/smartphone/fragments/FragMyAccount;

    .line 106
    invoke-virtual {p1}, Lnz/co/telecom/smartphone/fragments/FragMyAccount;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mParentFragmentActivity:Landroid/support/v4/app/FragmentActivity;

    .line 107
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mParentFragmentActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mContext:Landroid/content/Context;

    .line 109
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mInflater:Landroid/view/LayoutInflater;

    .line 111
    iput-object p2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    .line 113
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mParentFragmentActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/National-Bold.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mFontNationalBold:Landroid/graphics/Typeface;

    .line 114
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mParentFragmentActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/National-Regular.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mFontNationalRegular:Landroid/graphics/Typeface;

    .line 116
    new-instance v0, Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;

    invoke-direct {v0}, Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mTelecomMobileNumberTextWatcher:Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;

    .line 118
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mParentFragmentActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mCheckboxTextColor:I

    .line 120
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mParentFragmentActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mStringRings:Ljava/lang/String;

    .line 121
    return-void
.end method

.method static synthetic access$200(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->showConfirmChangeDialog(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$300(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;Lorg/holoeverywhere/widget/Switch;Z)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;
    .param p1, "x1"    # Lorg/holoeverywhere/widget/Switch;
    .param p2, "x2"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->syncCallSettingWithUI(Lorg/holoeverywhere/widget/Switch;Z)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getPositionForSection(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->getHeaderId(I)J

    move-result-wide v4

    long-to-int v0, v4

    .line 144
    .local v0, "headerId":I
    const/4 v1, 0x0

    .line 146
    .local v1, "positionForSection":I
    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->getCallManagementSettings()Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;->getCallSettings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 147
    .local v3, "sizeCallSettings":I
    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->getCallDiversion()Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;->getDiversionSettings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 149
    .local v2, "sizeCallDiversions":I
    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_0
    return v1

    .line 152
    :pswitch_0
    move v1, p1

    .line 153
    goto :goto_0

    .line 156
    :pswitch_1
    sub-int v1, p1, v3

    .line 157
    goto :goto_0

    .line 160
    :pswitch_2
    sub-int v4, p1, v3

    sub-int v1, v4, v2

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showConfirmChangeDialog(Landroid/view/View;I)V
    .locals 13
    .param p1, "viewTrigger"    # Landroid/view/View;
    .param p2, "confirmType"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 548
    new-array v3, v12, [Z

    .line 549
    .local v3, "isClickedOK":[Z
    aput-boolean v11, v3, v11

    .line 551
    iget-boolean v8, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mShowConfirmationDialog:Z

    if-nez v8, :cond_0

    .line 645
    :goto_0
    return-void

    .line 555
    :cond_0
    new-instance v2, Landroid/app/Dialog;

    iget-object v8, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mParentFragmentActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v2, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 556
    .local v2, "confirmDialog":Landroid/app/Dialog;
    iget-object v8, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030045

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 558
    .local v7, "viewDialog":Landroid/view/View;
    const v8, 0x7f090132

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 559
    .local v5, "textViewDialogTitle":Landroid/widget/TextView;
    const v8, 0x7f090133

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 561
    .local v4, "textViewDialogText":Landroid/widget/TextView;
    const v8, 0x7f090137

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 562
    .local v0, "buttonCancel":Landroid/widget/Button;
    invoke-virtual {v0, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 564
    const v8, 0x7f090136

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 566
    const v8, 0x7f090138

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 567
    .local v1, "buttonOK":Landroid/widget/Button;
    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 569
    const v8, 0x7f09012f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 571
    .local v6, "topLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    iget-object v8, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0050

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 574
    iget-object v8, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0201d0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 576
    packed-switch p2, :pswitch_data_0

    .line 589
    :goto_1
    new-instance v8, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$6;

    invoke-direct {v8, p0, p2, p1, v3}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$6;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;ILandroid/view/View;[Z)V

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 625
    new-instance v8, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$7;

    invoke-direct {v8, p0, v2}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$7;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    new-instance v8, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$8;

    invoke-direct {v8, p0, v3, v2}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$8;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;[ZLandroid/app/Dialog;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 641
    invoke-virtual {v2, v12}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 642
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 643
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 644
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 579
    :pswitch_0
    iget-object v8, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mContext:Landroid/content/Context;

    const v9, 0x7f0e006e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v8, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mContext:Landroid/content/Context;

    const v9, 0x7f0e0070

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 584
    :pswitch_1
    iget-object v8, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mContext:Landroid/content/Context;

    const v9, 0x7f0e006d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v8, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mContext:Landroid/content/Context;

    const v9, 0x7f0e006f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private syncCallSettingWithUI(Lorg/holoeverywhere/widget/Switch;Z)V
    .locals 1
    .param p1, "switchWidget"    # Lorg/holoeverywhere/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mShowConfirmationDialog:Z

    .line 537
    invoke-virtual {p1, p2}, Lorg/holoeverywhere/widget/Switch;->setChecked(Z)V

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mShowConfirmationDialog:Z

    .line 539
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 127
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->getCallManagementSettings()Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;->getCallSettings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 129
    .local v0, "rowCount":I
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->getCallDiversion()Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;->getDiversionSettings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 130
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->getAccountProtection()Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionsDTO;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionsDTO;->getAccountProtections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    return v0
.end method

.method public getHeaderId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 207
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->getCallManagementSettings()Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;->getCallSettings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 208
    .local v0, "sizeCallSettings":I
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->getCallDiversion()Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;->getDiversionSettings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 210
    .local v1, "sizeDiversions":I
    if-ge p1, v0, :cond_0

    .line 211
    const-wide/16 v2, 0x1

    .line 218
    :goto_0
    return-wide v2

    .line 214
    :cond_0
    add-int v2, v0, v1

    if-ge p1, v2, :cond_1

    .line 215
    const-wide/16 v2, 0x2

    goto :goto_0

    .line 218
    :cond_1
    const-wide/16 v2, 0x3

    goto :goto_0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 224
    move-object v1, p2

    .line 226
    .local v1, "headerView":Landroid/view/View;
    if-nez p2, :cond_0

    .line 227
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03005e

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 228
    new-instance v2, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolderHeader;

    invoke-direct {v2, p0, v4}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolderHeader;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$1;)V

    iput-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderHeader:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolderHeader;

    .line 230
    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderHeader:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolderHeader;

    const v2, 0x7f09018b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolderHeader;->textViewHeader:Landroid/widget/TextView;

    .line 231
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderHeader:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolderHeader;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 237
    :goto_0
    const-string v0, ""

    .line 239
    .local v0, "headerText":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->getHeaderId(I)J

    move-result-wide v2

    long-to-int v2, v2

    packed-switch v2, :pswitch_data_0

    .line 254
    :goto_1
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderHeader:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolderHeader;

    iget-object v2, v2, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolderHeader;->textViewHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    return-object v1

    .line 234
    .end local v0    # "headerText":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolderHeader;

    iput-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderHeader:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolderHeader;

    goto :goto_0

    .line 242
    .restart local v0    # "headerText":Ljava/lang/String;
    :pswitch_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->getCallManagementSettings()Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;->getHeading()Ljava/lang/String;

    move-result-object v0

    .line 243
    goto :goto_1

    .line 246
    :pswitch_1
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->getCallDiversion()Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;->getHeading()Ljava/lang/String;

    move-result-object v0

    .line 247
    goto :goto_1

    .line 250
    :pswitch_2
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->getAccountProtection()Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionsDTO;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionsDTO;->getHeading()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->getHeaderId(I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 173
    .local v0, "headerId":I
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->getPositionForSection(I)I

    move-result v1

    .line 175
    .local v1, "positionForSection":I
    sget-object v2, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->TAG:Ljava/lang/String;

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

    .line 177
    packed-switch v0, :pswitch_data_0

    .line 189
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 180
    :pswitch_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->getCallManagementSettings()Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;->getCallSettings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->getCallDiversion()Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;->getDiversionSettings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->getAccountProtection()Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionsDTO;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionsDTO;->getAccountProtections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 193
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 30
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 266
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mShowConfirmationDialog:Z

    .line 268
    move-object/from16 v25, p2

    .line 270
    .local v25, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->getHeaderId(I)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v13, v0

    .line 272
    .local v13, "headerId":I
    if-eqz p2, :cond_0

    .line 273
    const v26, 0x7f090037

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 274
    .local v14, "headerIdForConvertView":I
    if-eq v13, v14, :cond_0

    .line 275
    const/16 p2, 0x0

    .line 279
    .end local v14    # "headerIdForConvertView":I
    :cond_0
    if-nez p2, :cond_1

    .line 281
    new-instance v26, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$1;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    .line 283
    packed-switch v13, :pswitch_data_0

    .line 314
    :goto_0
    const v26, 0x7f090037

    new-instance v27, Ljava/lang/Integer;

    move-object/from16 v0, v27

    invoke-direct {v0, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v25 .. v27}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 321
    :goto_1
    invoke-direct/range {p0 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->getPositionForSection(I)I

    move-result v20

    .line 323
    .local v20, "positionForSection":I
    packed-switch v13, :pswitch_data_1

    .line 469
    :goto_2
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mShowConfirmationDialog:Z

    .line 471
    return-object v25

    .line 285
    .end local v20    # "positionForSection":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v26, v0

    const v27, 0x7f03005d

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v27, v0

    const v26, 0x7f090186

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->textViewCallSettingsTitle:Landroid/widget/TextView;

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v27, v0

    const v26, 0x7f090189

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->textViewCallSettingsText:Landroid/widget/TextView;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v27, v0

    const v26, 0x7f090187

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lorg/holoeverywhere/widget/Switch;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->switchCallSettingsState:Lorg/holoeverywhere/widget/Switch;

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->switchCallSettingsState:Lorg/holoeverywhere/widget/Switch;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mFontNationalRegular:Landroid/graphics/Typeface;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/holoeverywhere/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    .line 296
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v26, v0

    const v27, 0x7f03005b

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v27, v0

    const v26, 0x7f090181

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->textViewCallDiversionTitle:Landroid/widget/TextView;

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v27, v0

    const v26, 0x7f090182

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/view/ViewGroup;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->viewGroupCallDiversionSettingsContainer:Landroid/view/ViewGroup;

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v27, v0

    const v26, 0x7f090183

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Button;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->buttonCallDiversionSave:Landroid/widget/Button;

    goto/16 :goto_0

    .line 306
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v26, v0

    const v27, 0x7f03005a

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v27, v0

    const v26, 0x7f09017c

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->textViewAccountProtectionTitle:Landroid/widget/TextView;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v27, v0

    const v26, 0x7f09017e

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->textViewAccountProtectionText:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 318
    :cond_1
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    goto/16 :goto_1

    .line 326
    .restart local v20    # "positionForSection":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->getCallManagementSettings()Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;->getCallSettings()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;

    .line 328
    .local v7, "callSettingsDTO":Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->textViewCallSettingsTitle:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;->getCallSettingTitle()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->textViewCallSettingsText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;->getCallSettingText()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->switchCallSettingsState:Lorg/holoeverywhere/widget/Switch;

    move-object/from16 v26, v0

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;->getIsSettingOn()Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lorg/holoeverywhere/widget/Switch;->setChecked(Z)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->switchCallSettingsState:Lorg/holoeverywhere/widget/Switch;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lorg/holoeverywhere/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->switchCallSettingsState:Lorg/holoeverywhere/widget/Switch;

    move-object/from16 v26, v0

    new-instance v27, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$2;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$2;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;)V

    invoke-virtual/range {v26 .. v27}, Lorg/holoeverywhere/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_2

    .line 344
    .end local v7    # "callSettingsDTO":Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->getCallDiversion()Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;->getDiversionSettings()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;

    .line 345
    .local v6, "callDiversionSettingsDTO":Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->textViewCallDiversionTitle:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;->getCallDiversionTitle()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->viewGroupCallDiversionSettingsContainer:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 353
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v9, "checkBoxCallDiversionOptions":Ljava/util/List;, "Ljava/util/List<Landroid/widget/CheckBox;>;"
    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;->getDiversionOptions()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;

    .line 356
    .local v5, "callDiversionOptionDTO":Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;
    new-instance v8, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v8, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 358
    .local v8, "checkBoxCallDiversionOption":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mFontNationalRegular:Landroid/graphics/Typeface;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 359
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->getOptionText()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 360
    move-object/from16 v0, p0

    iget v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mCheckboxTextColor:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 362
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->getOptionId()I

    move-result v26

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;->getSelectedOptionId()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 363
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 364
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 370
    :goto_4
    new-instance v26, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v27, -0x2

    const/16 v28, -0x2

    invoke-direct/range {v26 .. v28}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->getRingOptions()Lnz/co/telecom/smartphone/dto/myaccount/CallDivertRingOptionsDTO;

    move-result-object v26

    if-eqz v26, :cond_6

    .line 374
    new-instance v23, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 375
    .local v23, "spinner":Landroid/widget/Spinner;
    new-instance v26, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v27, -0x2

    const/16 v28, -0x2

    invoke-direct/range {v26 .. v28}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->getRingOptions()Lnz/co/telecom/smartphone/dto/myaccount/CallDivertRingOptionsDTO;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lnz/co/telecom/smartphone/dto/myaccount/CallDivertRingOptionsDTO;->getOptions()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 378
    .local v22, "ringCountChoices":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 379
    .local v10, "choicesIndex":I
    const/4 v11, 0x0

    .line 381
    .local v11, "choicesSelectedIndex":I
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->getRingOptions()Lnz/co/telecom/smartphone/dto/myaccount/CallDivertRingOptionsDTO;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lnz/co/telecom/smartphone/dto/myaccount/CallDivertRingOptionsDTO;->getOptions()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 382
    .local v21, "ringCount":Ljava/lang/Integer;
    const-string v26, "%d %s"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v21, v27, v28

    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mStringRings:Ljava/lang/String;

    move-object/from16 v29, v0

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v22, v10

    .line 383
    add-int/lit8 v10, v10, 0x1

    .line 385
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v26

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->getRingOptions()Lnz/co/telecom/smartphone/dto/myaccount/CallDivertRingOptionsDTO;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lnz/co/telecom/smartphone/dto/myaccount/CallDivertRingOptionsDTO;->getSelectedValue()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 386
    move v11, v10

    goto :goto_5

    .line 366
    .end local v10    # "choicesIndex":I
    .end local v11    # "choicesSelectedIndex":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v21    # "ringCount":Ljava/lang/Integer;
    .end local v22    # "ringCountChoices":[Ljava/lang/String;
    .end local v23    # "spinner":Landroid/widget/Spinner;
    :cond_3
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 367
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_4

    .line 390
    .restart local v10    # "choicesIndex":I
    .restart local v11    # "choicesSelectedIndex":I
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v22    # "ringCountChoices":[Ljava/lang/String;
    .restart local v23    # "spinner":Landroid/widget/Spinner;
    :cond_4
    new-instance v24, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x1090008

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 391
    .local v24, "spinnerAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 393
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 395
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 396
    .local v17, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v26, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v27, -0x2

    const/16 v28, -0x2

    invoke-direct/range {v26 .. v28}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 399
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 400
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->viewGroupCallDiversionSettingsContainer:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 408
    .end local v10    # "choicesIndex":I
    .end local v11    # "choicesSelectedIndex":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v22    # "ringCountChoices":[Ljava/lang/String;
    .end local v23    # "spinner":Landroid/widget/Spinner;
    .end local v24    # "spinnerAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_6
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->getDivertToMobile()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_5

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v26, v0

    const v27, 0x7f03005c

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 411
    .local v19, "phoneNumberView":Landroid/view/View;
    const v26, 0x7f090184

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 412
    .local v12, "editTextDivertMobile":Landroid/widget/EditText;
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->getDivertToMobile()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->viewGroupCallDiversionSettingsContainer:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 415
    new-instance v18, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$3;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;)V

    .line 432
    .local v18, "mTextWatcherCallDivertionToMobile":Landroid/text/TextWatcher;
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 435
    .end local v12    # "editTextDivertMobile":Landroid/widget/EditText;
    .end local v18    # "mTextWatcherCallDivertionToMobile":Landroid/text/TextWatcher;
    .end local v19    # "phoneNumberView":Landroid/view/View;
    :cond_5
    invoke-virtual {v8, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 436
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    new-instance v26, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$4;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$4;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;)V

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_3

    .line 405
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->viewGroupCallDiversionSettingsContainer:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 449
    .end local v5    # "callDiversionOptionDTO":Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;
    .end local v8    # "checkBoxCallDiversionOption":Landroid/widget/CheckBox;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->buttonCallDiversionSave:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->buttonCallDiversionSave:Landroid/widget/Button;

    move-object/from16 v26, v0

    new-instance v27, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$5;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$5;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 461
    .end local v6    # "callDiversionSettingsDTO":Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;
    .end local v9    # "checkBoxCallDiversionOptions":Ljava/util/List;, "Ljava/util/List<Landroid/widget/CheckBox;>;"
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->getAccountProtection()Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionsDTO;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionsDTO;->getAccountProtections()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionDTO;

    .line 463
    .local v4, "accountProtectionDTO":Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionDTO;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->textViewAccountProtectionTitle:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionDTO;->getProtectionTitle()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->viewHolderDetails:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$ViewHolder;->textViewAccountProtectionText:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionDTO;->getProtectionText()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 323
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 542
    const/4 v0, 0x0

    return v0
.end method
