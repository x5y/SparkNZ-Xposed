.class public Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;
.super Landroid/support/v4/app/Fragment;
.source "FragActivityDetailVoice.java"


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

.field activity_voice_listview:Landroid/widget/ListView;

.field private debug:Z

.field finalRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

.field list_empty_tv:Lnz/co/telecom/smartphone/widget/TMYTextView;

.field mInflater:Landroid/view/LayoutInflater;

.field private rootView:Landroid/view/View;

.field termsAndConditionsFooter:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->debug:Z

    .line 27
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->aaAdapter:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    .line 28
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->rootView:Landroid/view/View;

    .line 30
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->activity_voice_listview:Landroid/widget/ListView;

    .line 31
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->list_empty_tv:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 32
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->termsAndConditionsFooter:Landroid/view/View;

    .line 33
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->finalRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    .line 34
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->mInflater:Landroid/view/LayoutInflater;

    .line 41
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

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->debug:Z

    .line 27
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->aaAdapter:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    .line 28
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->rootView:Landroid/view/View;

    .line 30
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->activity_voice_listview:Landroid/widget/ListView;

    .line 31
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->list_empty_tv:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 32
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->termsAndConditionsFooter:Landroid/view/View;

    .line 33
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->finalRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    .line 34
    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->finalRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    .line 51
    return-void
.end method

.method private createAdapter()V
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03004e

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->finalRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->getVoiceList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->aaAdapter:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    .line 47
    return-void
.end method

.method public static newInstance(Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;)Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;
    .locals 1
    .param p0, "mRecentActivityDTO"    # Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    .prologue
    .line 54
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;-><init>(Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;)V

    .line 55
    .local v0, "fragment":Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;
    return-object v0
.end method


# virtual methods
.method public getAdapter()Lnz/co/telecom/smartphone/adapter/AdapterActivityData;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->aaAdapter:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->mInflater:Landroid/view/LayoutInflater;

    .line 67
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->debug:Z

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    iget-boolean v9, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->debug:Z

    if-eqz v9, :cond_0

    .line 78
    sget-object v9, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->TAG:Ljava/lang/String;

    const-string v10, "onCreateView"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    const v9, 0x7f030034

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->rootView:Landroid/view/View;

    .line 82
    const v9, 0x7f030031

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, "emptyFrame":Landroid/view/View;
    const v9, 0x7f0900eb

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lnz/co/telecom/smartphone/widget/TMYTextView;

    iput-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->list_empty_tv:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 85
    const v9, 0x7f03001d

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->termsAndConditionsFooter:Landroid/view/View;

    .line 87
    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->termsAndConditionsFooter:Landroid/view/View;

    new-instance v10, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice$1;

    invoke-direct {v10, p0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice$1;-><init>(Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->rootView:Landroid/view/View;

    const v10, 0x7f0900ee

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    iput-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->activity_voice_listview:Landroid/widget/ListView;

    .line 98
    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->finalRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    invoke-virtual {v9}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->getMessages()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 100
    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->finalRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    invoke-virtual {v9}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->getMessages()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;

    .line 102
    .local v7, "messageGroupDTO":Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;
    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;->getValues()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;

    .line 103
    .local v5, "messageDTO":Lnz/co/telecom/smartphone/dto/messages/MessageDTO;
    const v9, 0x7f030032

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 106
    .local v6, "messageFrame":Landroid/view/View;
    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->activity_voice_listview:Landroid/widget/ListView;

    invoke-virtual {v9, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 108
    const v9, 0x7f0900ec

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 110
    .local v4, "listMessageVw":Landroid/view/View;
    const v9, 0x7f09013f

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 112
    .local v8, "titleTxtVw":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    const v9, 0x7f090140

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 115
    .local v0, "contentTxtVw":Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->getTitle()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 117
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 123
    :goto_1
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    goto :goto_1

    .line 128
    .end local v0    # "contentTxtVw":Lnz/co/telecom/smartphone/widget/TMYTextView;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "listMessageVw":Landroid/view/View;
    .end local v5    # "messageDTO":Lnz/co/telecom/smartphone/dto/messages/MessageDTO;
    .end local v6    # "messageFrame":Landroid/view/View;
    .end local v7    # "messageGroupDTO":Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;
    .end local v8    # "titleTxtVw":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    :cond_3
    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->activity_voice_listview:Landroid/widget/ListView;

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 129
    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->activity_voice_listview:Landroid/widget/ListView;

    iget-object v10, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->termsAndConditionsFooter:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 130
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->createAdapter()V

    .line 131
    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->activity_voice_listview:Landroid/widget/ListView;

    iget-object v10, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->aaAdapter:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->rootView:Landroid/view/View;

    return-object v9
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

.method public setSearchText(Ljava/lang/String;)V
    .locals 5
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 144
    const v1, 0x7f0e0103

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "noMatchesText":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 147
    const v1, 0x7f0e0104

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Voice"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->list_empty_tv:Lnz/co/telecom/smartphone/widget/TMYTextView;

    invoke-virtual {v1, v0}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    return-void
.end method

.method public showListEmpty(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->list_empty_tv:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->list_empty_tv:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    goto :goto_0
.end method
