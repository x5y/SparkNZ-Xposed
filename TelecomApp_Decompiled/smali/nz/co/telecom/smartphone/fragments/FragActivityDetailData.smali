.class public Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;
.super Landroid/support/v4/app/Fragment;
.source "FragActivityDetailData.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public aaAdapter:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

.field activity_data_listview:Landroid/widget/ListView;

.field private debug:Z

.field finalRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

.field mInflater:Landroid/view/LayoutInflater;

.field private rootView:Landroid/view/View;

.field termsAndConditionsFooter:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->debug:Z

    .line 27
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->aaAdapter:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    .line 28
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->rootView:Landroid/view/View;

    .line 30
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->activity_data_listview:Landroid/widget/ListView;

    .line 31
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->termsAndConditionsFooter:Landroid/view/View;

    .line 32
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->finalRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    .line 33
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    return-void
.end method

.method public constructor <init>(Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;)V
    .locals 2
    .param p1, "mRecentActivityDTO"    # Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->debug:Z

    .line 27
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->aaAdapter:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    .line 28
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->rootView:Landroid/view/View;

    .line 30
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->activity_data_listview:Landroid/widget/ListView;

    .line 31
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->termsAndConditionsFooter:Landroid/view/View;

    .line 32
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->finalRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    .line 33
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->finalRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    .line 51
    return-void
.end method

.method private createAdapter()V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03004e

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->finalRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->getDataList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->aaAdapter:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    .line 46
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->aaAdapter:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->sortByDate(Z)V

    .line 47
    return-void
.end method

.method public static newInstance(Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;)Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;
    .locals 1
    .param p0, "mRecentActivityDTO"    # Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    .prologue
    .line 54
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;-><init>(Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;)V

    .line 55
    .local v0, "fragment":Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;
    return-object v0
.end method


# virtual methods
.method public getAdapter()Lnz/co/telecom/smartphone/adapter/AdapterActivityData;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->aaAdapter:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->mInflater:Landroid/view/LayoutInflater;

    .line 67
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->debug:Z

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 77
    iget-boolean v8, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->debug:Z

    if-eqz v8, :cond_0

    .line 78
    sget-object v8, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->TAG:Ljava/lang/String;

    const-string v9, "onCreateView"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    const v8, 0x7f030030

    invoke-virtual {p1, v8, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->rootView:Landroid/view/View;

    .line 82
    const v8, 0x7f03001d

    invoke-virtual {p1, v8, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->termsAndConditionsFooter:Landroid/view/View;

    .line 84
    iget-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->termsAndConditionsFooter:Landroid/view/View;

    new-instance v9, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData$1;

    invoke-direct {v9, p0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData$1;-><init>(Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->rootView:Landroid/view/View;

    const v9, 0x7f0900ea

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->activity_data_listview:Landroid/widget/ListView;

    .line 95
    iget-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->finalRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    invoke-virtual {v8}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->getMessages()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 97
    iget-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->finalRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    invoke-virtual {v8}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->getMessages()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;

    .line 99
    .local v6, "messageGroupDTO":Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;
    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;->getValues()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;

    .line 100
    .local v4, "messageDTO":Lnz/co/telecom/smartphone/dto/messages/MessageDTO;
    const v8, 0x7f030032

    invoke-virtual {p1, v8, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 103
    .local v5, "messageFrame":Landroid/view/View;
    iget-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->activity_data_listview:Landroid/widget/ListView;

    invoke-virtual {v8, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 105
    const v8, 0x7f0900ec

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 107
    .local v3, "listMessageVw":Landroid/view/View;
    const v8, 0x7f09013f

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 109
    .local v7, "titleTxtVw":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    const v8, 0x7f090140

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 112
    .local v0, "contentTxtVw":Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->getTitle()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 114
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 120
    :goto_1
    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v7, v10}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    goto :goto_1

    .line 125
    .end local v0    # "contentTxtVw":Lnz/co/telecom/smartphone/widget/TMYTextView;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listMessageVw":Landroid/view/View;
    .end local v4    # "messageDTO":Lnz/co/telecom/smartphone/dto/messages/MessageDTO;
    .end local v5    # "messageFrame":Landroid/view/View;
    .end local v6    # "messageGroupDTO":Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;
    .end local v7    # "titleTxtVw":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    :cond_3
    iget-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->activity_data_listview:Landroid/widget/ListView;

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->termsAndConditionsFooter:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 126
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->createAdapter()V

    .line 127
    iget-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->activity_data_listview:Landroid/widget/ListView;

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->aaAdapter:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iget-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->rootView:Landroid/view/View;

    return-object v8
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 72
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 61
    return-void
.end method
