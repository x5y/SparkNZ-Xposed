.class public Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;
.super Landroid/widget/BaseAdapter;
.source "AdapterOverseasUsage.java"

# interfaces
.implements Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private fontNationalBold:Landroid/graphics/Typeface;

.field private fontNationalRegular:Landroid/graphics/Typeface;

.field private mContext:Landroid/content/Context;

.field private mCurrentUsageSelection:Ljava/lang/Integer;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

.field private mOverseasUsageSelectionHandler:Lnz/co/telecom/smartphone/fragments/uihandler/OverseasUsageSelectionHandler;

.field private mParentFragmentActivity:Landroid/support/v4/app/FragmentActivity;

.field private mUsageMeterView:Lnz/co/telecom/smartphone/widget/UsageMeterView;

.field private mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

.field private radioGroupChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lnz/co/telecom/smartphone/fragments/uihandler/OverseasUsageSelectionHandler;Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;)V
    .locals 2
    .param p1, "mParentFragmentActivity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "overseasUsageSelectionHandler"    # Lnz/co/telecom/smartphone/fragments/uihandler/OverseasUsageSelectionHandler;
    .param p3, "overseasUsageDTO"    # Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 233
    new-instance v0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$2;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$2;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->radioGroupChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 56
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mParentFragmentActivity:Landroid/support/v4/app/FragmentActivity;

    .line 57
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    iput-object p3, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    .line 62
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/National-Bold.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->fontNationalBold:Landroid/graphics/Typeface;

    .line 63
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/National-Regular.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->fontNationalRegular:Landroid/graphics/Typeface;

    .line 65
    iput-object p2, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageSelectionHandler:Lnz/co/telecom/smartphone/fragments/uihandler/OverseasUsageSelectionHandler;

    .line 66
    return-void
.end method

.method static synthetic access$100(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;)Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;

    .prologue
    .line 33
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    return-object v0
.end method

.method static synthetic access$200(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;Landroid/widget/RadioButton;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;
    .param p1, "x1"    # Landroid/widget/RadioButton;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->showConfirmChangeUsageSelection(Landroid/widget/RadioButton;)V

    return-void
.end method

.method static synthetic access$300(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;

    .prologue
    .line 33
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mCurrentUsageSelection:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$302(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 33
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mCurrentUsageSelection:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$400(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;Z)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->syncUsageOptionsWithUI(Z)V

    return-void
.end method

.method private showConfirmChangeUsageSelection(Landroid/widget/RadioButton;)V
    .locals 13
    .param p1, "selectedRadioButton"    # Landroid/widget/RadioButton;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 268
    new-instance v2, Landroid/app/Dialog;

    iget-object v8, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mParentFragmentActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v2, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 269
    .local v2, "confirmDialog":Landroid/app/Dialog;
    iget-object v8, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030045

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 271
    .local v7, "viewDialog":Landroid/view/View;
    const v8, 0x7f090132

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 272
    .local v5, "textViewDialogTitle":Landroid/widget/TextView;
    const v8, 0x7f090133

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 274
    .local v4, "textViewDialogText":Landroid/widget/TextView;
    const v8, 0x7f090137

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 275
    .local v0, "buttonCancel":Landroid/widget/Button;
    invoke-virtual {v0, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 277
    const v8, 0x7f090136

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 279
    const v8, 0x7f090138

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 280
    .local v1, "buttonOK":Landroid/widget/Button;
    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 282
    const v8, 0x7f09012f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 284
    .local v6, "topLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v8, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0050

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    iget-object v8, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0201d0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    iget-object v8, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mContext:Landroid/content/Context;

    const v9, 0x7f0e0082

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v8, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mContext:Landroid/content/Context;

    const v9, 0x7f0e0083

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    new-array v3, v12, [Z

    .line 293
    .local v3, "isClickedOK":[Z
    aput-boolean v11, v3, v11

    .line 295
    new-instance v8, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$3;

    invoke-direct {v8, p0, p1, v3}, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$3;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;Landroid/widget/RadioButton;[Z)V

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 309
    new-instance v8, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$4;

    invoke-direct {v8, p0, v2}, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$4;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    new-instance v8, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$5;

    invoke-direct {v8, p0, v3, v2}, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$5;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;[ZLandroid/app/Dialog;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 325
    invoke-virtual {v2, v12}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 326
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 328
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 329
    return-void
.end method

.method private syncUsageOptionsWithUI(Z)V
    .locals 7
    .param p1, "isForChangeOK"    # Z

    .prologue
    .line 337
    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v5, v5, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->radioGroupUsageOptions:Landroid/widget/RadioGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 339
    const/4 v3, 0x0

    .line 341
    .local v3, "radioButtonSelected":Landroid/widget/RadioButton;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v5, v5, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->radioGroupUsageOptions:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 342
    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v5, v5, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->radioGroupUsageOptions:Landroid/widget/RadioGroup;

    invoke-virtual {v5, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 343
    .local v2, "radioButton":Landroid/widget/RadioButton;
    invoke-virtual {v2}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 344
    .local v1, "overseasUsageOption":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getOverseasUsageOptionSelected()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 345
    move-object v3, v2

    .line 346
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 341
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    .end local v1    # "overseasUsageOption":Ljava/lang/Integer;
    .end local v2    # "radioButton":Landroid/widget/RadioButton;
    :cond_1
    if-nez v3, :cond_2

    .line 366
    :goto_1
    return-void

    .line 354
    :cond_2
    invoke-virtual {v3}, Landroid/widget/RadioButton;->getId()I

    move-result v4

    .line 356
    .local v4, "selectedRadioButtonId":I
    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v5, v5, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->radioGroupUsageOptions:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 357
    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v5, v5, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->radioGroupUsageOptions:Landroid/widget/RadioGroup;

    invoke-virtual {v5, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 359
    if-eqz p1, :cond_3

    .line 360
    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageSelectionHandler:Lnz/co/telecom/smartphone/fragments/uihandler/OverseasUsageSelectionHandler;

    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-interface {v5, v6}, Lnz/co/telecom/smartphone/fragments/uihandler/OverseasUsageSelectionHandler;->processDataSelection(Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;)V

    .line 361
    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v5, v5, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->radioGroupUsageOptions:Landroid/widget/RadioGroup;

    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->radioGroupChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto :goto_1

    .line 363
    :cond_3
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->notifyDataSetChanged()V

    .line 364
    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v5, v5, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->radioGroupUsageOptions:Landroid/widget/RadioGroup;

    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->radioGroupChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x2

    return v0
.end method

.method public getHeaderId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 91
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 96
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030061

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "headerView":Landroid/view/View;
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->getItem(I)Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 82
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 102
    move-object v5, p2

    .line 104
    .local v5, "view":Landroid/view/View;
    if-nez p2, :cond_1

    .line 105
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030060

    invoke-virtual {v6, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 107
    new-instance v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    invoke-direct {v6, p0, v11}, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$1;)V

    iput-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    .line 109
    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    const v6, 0x7f09018f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v7, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->viewGroupMetresRow:Landroid/view/ViewGroup;

    .line 110
    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    const v6, 0x7f090194

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v7, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->viewGroupDetailsRow:Landroid/view/ViewGroup;

    .line 112
    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    const v6, 0x7f090191

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v7, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->viewGroupMetresContainer:Landroid/view/ViewGroup;

    .line 113
    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    const v6, 0x7f090192

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v7, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->textViewMetresUnlimitedDataUsageMessage:Landroid/widget/TextView;

    .line 115
    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    const v6, 0x7f090196

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v7, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->textViewTermsAndConditions:Landroid/widget/TextView;

    .line 117
    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    const v6, 0x7f090198

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v7, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->textViewSmartCapLastChangeDateHeading:Landroid/widget/TextView;

    .line 118
    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    const v6, 0x7f090199

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v7, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->textViewSmartCapLastChangeDate:Landroid/widget/TextView;

    .line 120
    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    const v6, 0x7f09019a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v7, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->textViewSmartCapResetDateHeading:Landroid/widget/TextView;

    .line 121
    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    const v6, 0x7f09019b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v7, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->textViewSmartCapResetDate:Landroid/widget/TextView;

    .line 123
    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    const v6, 0x7f090197

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    iput-object v6, v7, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->radioGroupUsageOptions:Landroid/widget/RadioGroup;

    .line 125
    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    const v6, 0x7f09019c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v7, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->textViewDataAmountsLink:Landroid/widget/TextView;

    .line 127
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    :goto_0
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->radioGroupUsageOptions:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v11}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 135
    if-nez p1, :cond_2

    .line 136
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->viewGroupDetailsRow:Landroid/view/ViewGroup;

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 137
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->viewGroupMetresRow:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 143
    :goto_1
    if-nez p1, :cond_5

    .line 145
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->isUsageUnlimited()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 147
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->textViewMetresUnlimitedDataUsageMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->textViewMetresUnlimitedDataUsageMessage:Landroid/widget/TextView;

    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getUsageMeter()Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;

    move-result-object v7

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->getUsageLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_0
    :goto_2
    return-object v5

    .line 130
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iput-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    goto :goto_0

    .line 139
    :cond_2
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->viewGroupDetailsRow:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 140
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->viewGroupMetresRow:Landroid/view/ViewGroup;

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 150
    :cond_3
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mUsageMeterView:Lnz/co/telecom/smartphone/widget/UsageMeterView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mUsageMeterView:Lnz/co/telecom/smartphone/widget/UsageMeterView;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 152
    :cond_4
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->viewGroupMetresContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 154
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->textViewMetresUnlimitedDataUsageMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    new-instance v6, Lnz/co/telecom/smartphone/widget/UsageMeterView;

    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v8}, Lnz/co/telecom/smartphone/widget/UsageMeterView;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mUsageMeterView:Lnz/co/telecom/smartphone/widget/UsageMeterView;

    .line 158
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mUsageMeterView:Lnz/co/telecom/smartphone/widget/UsageMeterView;

    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getUsageMeter()Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;

    move-result-object v7

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->getUsageLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setUsageLabel(Ljava/lang/String;)V

    .line 159
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mUsageMeterView:Lnz/co/telecom/smartphone/widget/UsageMeterView;

    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getUsageMeter()Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;

    move-result-object v7

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->getAmountUsed()F

    move-result v7

    invoke-virtual {v6, v7}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setSelfUsage(F)V

    .line 160
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mUsageMeterView:Lnz/co/telecom/smartphone/widget/UsageMeterView;

    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getUsageMeter()Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;

    move-result-object v7

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->getAmountUsed()F

    move-result v7

    invoke-virtual {v6, v7}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setTotalUsage(F)V

    .line 162
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mUsageMeterView:Lnz/co/telecom/smartphone/widget/UsageMeterView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setUsageSoftLimit(F)V

    .line 163
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mUsageMeterView:Lnz/co/telecom/smartphone/widget/UsageMeterView;

    invoke-virtual {v6, v9}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setIsUsageLimitMonetaryLimit(Z)V

    .line 165
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mUsageMeterView:Lnz/co/telecom/smartphone/widget/UsageMeterView;

    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getUsageMeter()Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;

    move-result-object v7

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->getRemainingLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setRemainingLabel(Ljava/lang/String;)V

    .line 166
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mUsageMeterView:Lnz/co/telecom/smartphone/widget/UsageMeterView;

    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getUsageMeter()Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;

    move-result-object v7

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->getCap()F

    move-result v7

    invoke-virtual {v6, v7}, Lnz/co/telecom/smartphone/widget/UsageMeterView;->setUsageHardLimit(F)V

    .line 168
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->viewGroupMetresContainer:Landroid/view/ViewGroup;

    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mUsageMeterView:Lnz/co/telecom/smartphone/widget/UsageMeterView;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 174
    :cond_5
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->textViewTermsAndConditions:Landroid/widget/TextView;

    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getTermsAndConditions()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 177
    .local v0, "colorTelecomGrey":I
    const/high16 v1, 0x41800000

    .line 179
    .local v1, "fontSizeForUsageOptionText":F
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->textViewSmartCapLastChangeDateHeading:Landroid/widget/TextView;

    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getPreviousPeriodEndLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->textViewSmartCapLastChangeDate:Landroid/widget/TextView;

    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getPreviousPeriodEndFormatted()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->textViewSmartCapResetDateHeading:Landroid/widget/TextView;

    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getPeriodEndLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->textViewSmartCapResetDate:Landroid/widget/TextView;

    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getPeriodEndFormatted()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->textViewDataAmountsLink:Landroid/widget/TextView;

    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getViewDataAmountsLinkText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->textViewDataAmountsLink:Landroid/widget/TextView;

    const/16 v7, 0xf

    invoke-static {v6, v7}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 188
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->textViewDataAmountsLink:Landroid/widget/TextView;

    new-instance v7, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$1;

    invoke-direct {v7, p0}, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$1;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    if-ne p1, v9, :cond_0

    .line 199
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->radioGroupUsageOptions:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 204
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getOverseasUsageOptions()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 206
    .local v3, "overseasUsageOption":Ljava/lang/Integer;
    new-instance v4, Landroid/widget/RadioButton;

    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 207
    .local v4, "radioButtonUsageOption":Landroid/widget/RadioButton;
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->radioGroupUsageOptions:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 209
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-virtual {v6, v3}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getOptionTitle(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 211
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->fontNationalBold:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 212
    const/4 v6, 0x2

    invoke-virtual {v4, v6, v1}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 213
    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 215
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getOverseasUsageOptionSelected()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 216
    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 217
    iput-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mCurrentUsageSelection:Ljava/lang/Integer;

    .line 220
    :cond_6
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->isUsageOptionUnlimited(I)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getUsageMeter()Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;

    move-result-object v7

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->getAmountUsed()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    .line 221
    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_3

    .line 223
    :cond_7
    invoke-virtual {v4, v9}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_3

    .line 227
    .end local v3    # "overseasUsageOption":Ljava/lang/Integer;
    .end local v4    # "radioButtonUsageOption":Landroid/widget/RadioButton;
    :cond_8
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mViewHolder:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;

    iget-object v6, v6, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$ViewHolder;->radioGroupUsageOptions:Landroid/widget/RadioGroup;

    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->radioGroupChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto/16 :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 369
    const/4 v0, 0x0

    return v0
.end method
