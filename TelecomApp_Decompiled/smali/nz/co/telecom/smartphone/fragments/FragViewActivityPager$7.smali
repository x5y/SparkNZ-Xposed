.class Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;
.super Ljava/lang/Object;
.source "FragViewActivityPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->initData()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 452
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 448
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 414
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    const/4 v1, 0x3

    new-array v1, v1, [Z

    fill-array-data v1, :array_0

    # setter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mAscendingOrder:[Z
    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$802(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;[Z)[Z

    .line 416
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->allFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;->getAdapter()Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->allFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;->getAdapter()Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    move-result-object v0

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mAscendingOrder:[Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$800(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)[Z

    move-result-object v1

    aget-boolean v1, v1, v3

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->sortByDate(Z)V

    .line 420
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->dataFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->getAdapter()Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->dataFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->getAdapter()Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    move-result-object v0

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mAscendingOrder:[Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$800(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)[Z

    move-result-object v1

    aget-boolean v1, v1, v3

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->sortByDate(Z)V

    .line 424
    :cond_1
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->textFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;->getAdapter()Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->textFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;->getAdapter()Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    move-result-object v0

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mAscendingOrder:[Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$800(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)[Z

    move-result-object v1

    aget-boolean v1, v1, v3

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->sortByDate(Z)V

    .line 428
    :cond_2
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->voiceFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->getAdapter()Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 429
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->voiceFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->getAdapter()Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    move-result-object v0

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mAscendingOrder:[Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$800(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)[Z

    move-result-object v1

    aget-boolean v1, v1, v3

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->sortByDate(Z)V

    .line 432
    :cond_3
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->activity_header_date:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$1000(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mAscendingOrder:[Z
    invoke-static {v2}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$800(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)[Z

    move-result-object v2

    aget-boolean v2, v2, v3

    # invokes: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->updateSortHeader(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$900(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;Landroid/view/View;Z)V

    .line 434
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # setter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->myTabSelected:I
    invoke-static {v0, p1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$1102(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;I)I

    .line 436
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 438
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_search_et:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$600(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setVisibility(I)V

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_4
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$7;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->view_activities_search_et:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$600(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setVisibility(I)V

    goto :goto_0

    .line 414
    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
    .end array-data
.end method
