.class Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "FragViewActivityPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TelecomActivitiesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 486
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    .line 487
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 488
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 515
    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->CONTENT:[Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$200()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 492
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->debug:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$300(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItem Item"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->debug:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$300(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRecentActivityDTO mRecentActivityDTO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v3, v3, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_1
    const/4 v0, 0x0

    .line 497
    .local v0, "tmp":Landroid/support/v4/app/Fragment;
    if-nez p1, :cond_3

    .line 498
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    invoke-static {v2}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;->newInstance(Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;)Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;

    move-result-object v2

    iput-object v2, v1, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->allFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;

    .line 499
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v0, v1, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->allFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;

    .line 510
    :cond_2
    :goto_0
    return-object v0

    .line 500
    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 501
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    invoke-static {v2}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->newInstance(Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;)Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;

    move-result-object v2

    iput-object v2, v1, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->dataFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;

    .line 502
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v0, v1, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->dataFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;

    goto :goto_0

    .line 503
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 504
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    invoke-static {v2}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;->newInstance(Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;)Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;

    move-result-object v2

    iput-object v2, v1, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->textFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;

    .line 505
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v0, v1, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->textFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;

    goto :goto_0

    .line 506
    :cond_5
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 507
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    invoke-static {v2}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->newInstance(Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;)Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;

    move-result-object v2

    iput-object v2, v1, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->voiceFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;

    .line 508
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$TelecomActivitiesAdapter;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v0, v1, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->voiceFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;

    goto :goto_0
.end method
