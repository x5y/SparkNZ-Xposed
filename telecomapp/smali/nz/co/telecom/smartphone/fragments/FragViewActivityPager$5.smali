.class Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$5;
.super Ljava/lang/Object;
.source "FragViewActivityPager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 379
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$5;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 382
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$5;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mAscendingOrder:[Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$800(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)[Z

    move-result-object v3

    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$5;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mAscendingOrder:[Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$800(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)[Z

    move-result-object v0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    aput-boolean v0, v3, v1

    .line 383
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$5;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mAscendingOrder:[Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$800(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)[Z

    move-result-object v0

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$5;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mAscendingOrder:[Z
    invoke-static {v3}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$800(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)[Z

    move-result-object v3

    const/4 v4, 0x2

    aput-boolean v2, v3, v4

    aput-boolean v2, v0, v2

    .line 385
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$5;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->allFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailAll;->getAdapter()Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    move-result-object v0

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$5;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mAscendingOrder:[Z
    invoke-static {v2}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$800(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->sortByActivity(Z)V

    .line 386
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$5;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->dataFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailData;->getAdapter()Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    move-result-object v0

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$5;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mAscendingOrder:[Z
    invoke-static {v2}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$800(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->sortByActivity(Z)V

    .line 387
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$5;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->textFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;->getAdapter()Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    move-result-object v0

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$5;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mAscendingOrder:[Z
    invoke-static {v2}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$800(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->sortByActivity(Z)V

    .line 388
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$5;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->voiceFrag:Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailVoice;->getAdapter()Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    move-result-object v0

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$5;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mAscendingOrder:[Z
    invoke-static {v2}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$800(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->sortByActivity(Z)V

    .line 390
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$5;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$5;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mAscendingOrder:[Z
    invoke-static {v2}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$800(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)[Z

    move-result-object v2

    aget-boolean v1, v2, v1

    # invokes: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->updateSortHeader(Landroid/view/View;Z)V
    invoke-static {v0, p1, v1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$900(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;Landroid/view/View;Z)V

    .line 391
    return-void

    :cond_0
    move v0, v2

    .line 382
    goto :goto_0
.end method
