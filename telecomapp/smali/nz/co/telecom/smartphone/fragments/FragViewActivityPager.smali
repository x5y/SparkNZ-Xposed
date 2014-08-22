.class public Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;
.super Lnz/co/telecom/smartphone/fragments/FragBase;
.source "FragViewActivityPager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;,
        Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$GiloAdapter;,
        Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$OptionsAdapter;,
        Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;
    }
.end annotation


# static fields
.field private static final CONTENT:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activity_header_activity:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private activity_header_cost:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field private activity_header_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field allFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;

.field dataFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;

.field private debug:Z

.field private globalView:Landroid/view/View;

.field private imManager:Landroid/view/inputmethod/InputMethodManager;

.field private indicator:Lcom/viewpagerindicator/TabPageIndicator;

.field private mAscendingOrder:[Z

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private myTabSelected:I

.field private options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;",
            ">;"
        }
    .end annotation
.end field

.field private optionsAdapter:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$OptionsAdapter;

.field private pager:Landroid/support/v4/view/ViewPager;

.field textFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;

.field private view_activities_header_header_view:Landroid/widget/RelativeLayout;

.field private view_activities_options_spnr:Lnz/co/telecom/smartphone/widget/TMYSpinner;

.field private view_activities_search_et:Lnz/co/telecom/smartphone/widget/TMYEditText;

.field voiceFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const-class v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "All"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Text"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Voice"

    aput-object v2, v0, v1

    sput-object v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->CONTENT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>()V

    .line 53
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->debug:Z

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mAscendingOrder:[Z

    .line 198
    iput v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->myTabSelected:I

    .line 471
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$8;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$8;-><init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 480
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->allFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;

    .line 481
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->dataFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;

    .line 482
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->textFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;

    .line 483
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->voiceFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;

    .line 67
    return-void

    .line 63
    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>(I)V

    .line 53
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->debug:Z

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mAscendingOrder:[Z

    .line 198
    iput v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->myTabSelected:I

    .line 471
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$8;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$8;-><init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 480
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->allFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;

    .line 481
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->dataFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;

    .line 482
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->textFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;

    .line 483
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->voiceFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;

    .line 71
    return-void

    .line 63
    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    .prologue
    .line 47
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->options:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    .prologue
    .line 47
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->activity_header_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object v0
.end method

.method static synthetic access$1102(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;I)I
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->myTabSelected:I

    return p1
.end method

.method static synthetic access$1200(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    .prologue
    .line 47
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->imManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->CONTENT:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    .prologue
    .line 47
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->debug:Z

    return v0
.end method

.method static synthetic access$400(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    .prologue
    .line 47
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->optionSelected()V

    return-void
.end method

.method static synthetic access$500(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->applySearchFilter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Lnz/co/telecom/smartphone/widget/TMYEditText;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    .prologue
    .line 47
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_search_et:Lnz/co/telecom/smartphone/widget/TMYEditText;

    return-object v0
.end method

.method static synthetic access$700(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/widget/TMYEditText;
    .param p2, "x2"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->setImeVisibility(Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V

    return-void
.end method

.method static synthetic access$800(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)[Z
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    .prologue
    .line 47
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mAscendingOrder:[Z

    return-object v0
.end method

.method static synthetic access$802(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;[Z)[Z
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;
    .param p1, "x1"    # [Z

    .prologue
    .line 47
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mAscendingOrder:[Z

    return-object p1
.end method

.method static synthetic access$900(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->updateSortHeader(Landroid/view/View;Z)V

    return-void
.end method

.method private applySearchFilter(Ljava/lang/String;)V
    .locals 2
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 520
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->allFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;

    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;->setSearchText(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->allFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;->getAdapter()Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$9;

    invoke-direct {v1, p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$9;-><init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 528
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->textFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;

    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;->setSearchText(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->textFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;->getAdapter()Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$10;

    invoke-direct {v1, p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$10;-><init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 536
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->voiceFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;

    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->setSearchText(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->voiceFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->getAdapter()Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$11;

    invoke-direct {v1, p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$11;-><init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 543
    return-void
.end method

.method private getSelectedOptionIndex()I
    .locals 4

    .prologue
    .line 588
    const/4 v2, -0x1

    .line 590
    .local v2, "selectedOptionIndex":I
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->options:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 591
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 592
    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->options:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;

    .line 593
    .local v1, "option":Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;->getSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 594
    move v2, v0

    .line 600
    .end local v0    # "i":I
    .end local v1    # "option":Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;
    :cond_0
    return v2

    .line 591
    .restart local v0    # "i":I
    .restart local v1    # "option":Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hasOptions()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 546
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    if-nez v2, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v4

    .line 549
    :cond_1
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->get_embedded()Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    move-result-object v0

    .line 550
    .local v0, "embeddedDTO":Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;
    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;->getOptions()Ljava/util/List;

    move-result-object v1

    .line 554
    .local v1, "options":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;>;"
    if-eqz v1, :cond_0

    .line 557
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->options:Ljava/util/List;

    .line 558
    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_options_spnr:Lnz/co/telecom/smartphone/widget/TMYSpinner;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lnz/co/telecom/smartphone/widget/TMYSpinner;->setEnabled(Z)V

    .line 559
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    :goto_2
    move v4, v3

    goto :goto_0

    :cond_2
    move v2, v4

    .line 558
    goto :goto_1

    :cond_3
    move v3, v4

    .line 559
    goto :goto_2
.end method

.method private optionSelected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 566
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getRecentActivityOptionState()Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;

    move-result-object v0

    .line 568
    .local v0, "currentOptionState":Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_options_spnr:Lnz/co/telecom/smartphone/widget/TMYSpinner;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/widget/TMYSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;

    .line 571
    .local v1, "selectedOption":Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;
    if-eqz v0, :cond_1

    .line 572
    if-eq v0, v1, :cond_0

    .line 573
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v2, v1}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->setRecentActivityOptionState(Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;)V

    .line 576
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 579
    sput-boolean v3, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->s_isRecentActivityCached:Z

    .line 580
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->getDTO()V

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->updateOptionStateAndSpinner()V

    goto :goto_0
.end method

.method private setImeVisibility(Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V
    .locals 3
    .param p1, "oneText"    # Lnz/co/telecom/smartphone/widget/TMYEditText;
    .param p2, "visible"    # Z

    .prologue
    .line 462
    if-eqz p2, :cond_1

    .line 463
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lnz/co/telecom/smartphone/widget/TMYEditText;->post(Ljava/lang/Runnable;)Z

    .line 466
    :goto_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->imManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->imManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 469
    :cond_0
    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lnz/co/telecom/smartphone/widget/TMYEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateOptionStateAndSpinner()V
    .locals 3

    .prologue
    .line 604
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->getSelectedOptionIndex()I

    move-result v0

    .line 605
    .local v0, "selectedOptionIndex":I
    if-ltz v0, :cond_0

    .line 606
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->optionsAdapter:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$OptionsAdapter;

    invoke-virtual {v2, v0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$OptionsAdapter;->getItem(I)Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;

    move-result-object v2

    invoke-interface {v1, v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->setRecentActivityOptionState(Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;)V

    .line 608
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_options_spnr:Lnz/co/telecom/smartphone/widget/TMYSpinner;

    invoke-virtual {v1, v0}, Lnz/co/telecom/smartphone/widget/TMYSpinner;->setSelection(I)V

    .line 610
    :cond_0
    return-void
.end method

.method private updateSortHeader(Landroid/view/View;Z)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "descending"    # Z

    .prologue
    .line 613
    const/4 v9, 0x3

    new-array v7, v9, [Lnz/co/telecom/smartphone/widget/TMYTextView;

    const/4 v9, 0x0

    iget-object v10, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->activity_header_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->activity_header_activity:Lnz/co/telecom/smartphone/widget/TMYTextView;

    aput-object v10, v7, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->activity_header_cost:Lnz/co/telecom/smartphone/widget/TMYTextView;

    aput-object v10, v7, v9

    .line 615
    .local v7, "textViews":[Lnz/co/telecom/smartphone/widget/TMYTextView;
    const/4 v9, 0x3

    new-array v8, v9, [I

    fill-array-data v8, :array_0

    .line 619
    .local v8, "titles":[I
    const/4 v2, 0x0

    .line 620
    .local v2, "i":I
    move-object v0, v7

    .local v0, "arr$":[Lnz/co/telecom/smartphone/widget/TMYTextView;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 621
    .local v6, "textView":Lnz/co/telecom/smartphone/widget/TMYTextView;
    if-ne v6, p1, :cond_1

    .line 622
    new-instance v5, Landroid/text/SpannableString;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 623
    .local v5, "spanString":Landroid/text/SpannableString;
    new-instance v9, Landroid/text/style/UnderlineSpan;

    invoke-direct {v9}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 624
    invoke-virtual {v6, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz p2, :cond_0

    const v9, 0x7f020079

    :goto_1
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 627
    .local v1, "arrow":Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v10, v1, v11}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 634
    .end local v1    # "arrow":Landroid/graphics/drawable/Drawable;
    .end local v5    # "spanString":Landroid/text/SpannableString;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 620
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 625
    .restart local v5    # "spanString":Landroid/text/SpannableString;
    :cond_0
    const v9, 0x7f02007b

    goto :goto_1

    .line 630
    .end local v5    # "spanString":Landroid/text/SpannableString;
    :cond_1
    aget v9, v8, v2

    invoke-virtual {v6, v9}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(I)V

    .line 631
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f02007a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v6, v9, v10, v11, v12}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 636
    .end local v6    # "textView":Lnz/co/telecom/smartphone/widget/TMYTextView;
    :cond_2
    return-void

    .line 615
    :array_0
    .array-data 4
        0x7f0e0102
        0x7f0e00fe
        0x7f0e00ff
    .end array-data
.end method


# virtual methods
.method protected getDTO()V
    .locals 4

    .prologue
    .line 118
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;-><init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)V

    .line 119
    .local v0, "at":Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    return-void
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initData()Landroid/view/View;
    .locals 4

    .prologue
    .line 292
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->allowDeviceLogging()Z

    move-result v1

    iput-boolean v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->debug:Z

    .line 294
    iget-boolean v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->debug:Z

    if-eqz v1, :cond_0

    .line 295
    sget-object v1, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->TAG:Ljava/lang/String;

    const-string v2, "initData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->localInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03002c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->globalView:Landroid/view/View;

    .line 298
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->globalView:Landroid/view/View;

    const v2, 0x7f0900e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->content_progressbar:Landroid/widget/RelativeLayout;

    .line 299
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->globalView:Landroid/view/View;

    const v2, 0x7f0900e2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->content_no_data_error:Landroid/widget/RelativeLayout;

    .line 300
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->initData()Landroid/view/View;

    .line 301
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->imManager:Landroid/view/inputmethod/InputMethodManager;

    .line 302
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->globalView:Landroid/view/View;

    const v2, 0x7f0900db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_header_header_view:Landroid/widget/RelativeLayout;

    .line 303
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_header_header_view:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->myHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 305
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->globalView:Landroid/view/View;

    const v2, 0x7f0900dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYSpinner;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_options_spnr:Lnz/co/telecom/smartphone/widget/TMYSpinner;

    .line 307
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_options_spnr:Lnz/co/telecom/smartphone/widget/TMYSpinner;

    new-instance v2, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$1;

    invoke-direct {v2, p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$1;-><init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 320
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->globalView:Landroid/view/View;

    const v2, 0x7f0900dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYEditText;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_search_et:Lnz/co/telecom/smartphone/widget/TMYEditText;

    .line 322
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_search_et:Lnz/co/telecom/smartphone/widget/TMYEditText;

    new-instance v2, Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;

    invoke-direct {v2}, Lnz/co/telecom/smartphone/util/TelecomMobileNumberTextWatcher;-><init>()V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 324
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_search_et:Lnz/co/telecom/smartphone/widget/TMYEditText;

    new-instance v2, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$2;

    invoke-direct {v2, p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$2;-><init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 346
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_search_et:Lnz/co/telecom/smartphone/widget/TMYEditText;

    new-instance v2, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$3;

    invoke-direct {v2, p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$3;-><init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 356
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->globalView:Landroid/view/View;

    const v2, 0x7f09014b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->activity_header_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 358
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->globalView:Landroid/view/View;

    const v2, 0x7f09014c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->activity_header_activity:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 360
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->globalView:Landroid/view/View;

    const v2, 0x7f09014d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->activity_header_cost:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 363
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->activity_header_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->updateSortHeader(Landroid/view/View;Z)V

    .line 365
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->activity_header_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    new-instance v2, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$4;

    invoke-direct {v2, p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$4;-><init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->activity_header_activity:Lnz/co/telecom/smartphone/widget/TMYTextView;

    new-instance v2, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$5;

    invoke-direct {v2, p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$5;-><init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->activity_header_cost:Lnz/co/telecom/smartphone/widget/TMYTextView;

    new-instance v2, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$6;

    invoke-direct {v2, p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$6;-><init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->globalView:Landroid/view/View;

    const v2, 0x7f0900e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->pager:Landroid/support/v4/view/ViewPager;

    .line 409
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->globalView:Landroid/view/View;

    const v2, 0x7f0900de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/TabPageIndicator;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->indicator:Lcom/viewpagerindicator/TabPageIndicator;

    .line 410
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->indicator:Lcom/viewpagerindicator/TabPageIndicator;

    new-instance v2, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;

    invoke-direct {v2, p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;-><init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)V

    invoke-virtual {v1, v2}, Lcom/viewpagerindicator/TabPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 454
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$GiloAdapter;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$GiloAdapter;-><init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;Landroid/content/Context;)V

    .line 455
    .local v0, "adapter":Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$GiloAdapter;
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 456
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->indicator:Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 458
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->globalView:Landroid/view/View;

    return-object v1
.end method

.method protected isDTOCached()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 176
    sget-boolean v1, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->s_isLineExtendedCached:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->s_isRecentActivityCached:Z

    if-nez v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getLineExtendedDTO()Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    .line 181
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getRecentActivityDTO()Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    .line 183
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    if-eqz v1, :cond_2

    .line 184
    sput-boolean v2, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->s_isLineExtendedCached:Z

    .line 189
    :goto_1
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    if-eqz v1, :cond_3

    .line 190
    sput-boolean v2, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->s_isRecentActivityCached:Z

    .line 195
    :goto_2
    sget-boolean v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->s_isRecentActivityCached:Z

    goto :goto_0

    .line 186
    :cond_2
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->s_isLineExtendedCached:Z

    goto :goto_1

    .line 192
    :cond_3
    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->s_isRecentActivityCached:Z

    goto :goto_2
.end method

.method protected refreshPageDetails()V
    .locals 5

    .prologue
    .line 80
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->refreshPageDetails()V

    .line 82
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V

    .line 83
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->hideSoftKeyBoard()V

    .line 85
    iget-boolean v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->debug:Z

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->TAG:Ljava/lang/String;

    const-string v2, "refreshPageDetails"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_options_spnr:Lnz/co/telecom/smartphone/widget/TMYSpinner;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/widget/TMYSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 90
    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$OptionsAdapter;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f03007b

    const v4, 0x7f0901b6

    invoke-direct {v1, p0, v2, v3, v4}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$OptionsAdapter;-><init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;Landroid/content/Context;II)V

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->optionsAdapter:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$OptionsAdapter;

    .line 92
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->optionsAdapter:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$OptionsAdapter;

    const v2, 0x7f030068

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$OptionsAdapter;->setDropDownViewResource(I)V

    .line 93
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_options_spnr:Lnz/co/telecom/smartphone/widget/TMYSpinner;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->optionsAdapter:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$OptionsAdapter;

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 96
    :cond_1
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->updateOptionStateAndSpinner()V

    .line 98
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_options_spnr:Lnz/co/telecom/smartphone/widget/TMYSpinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYSpinner;->setVisibility(I)V

    .line 104
    :goto_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    instance-of v1, v1, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;

    if-eqz v1, :cond_3

    .line 105
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 114
    :goto_1
    return-void

    .line 100
    :cond_2
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_options_spnr:Lnz/co/telecom/smartphone/widget/TMYSpinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 101
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_options_spnr:Lnz/co/telecom/smartphone/widget/TMYSpinner;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYSpinner;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_3
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;-><init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;Landroid/support/v4/app/FragmentManager;)V

    .line 110
    .local v0, "pagerAdapter":Landroid/support/v4/app/FragmentPagerAdapter;
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 111
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 112
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->indicator:Lcom/viewpagerindicator/TabPageIndicator;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    goto :goto_1
.end method
