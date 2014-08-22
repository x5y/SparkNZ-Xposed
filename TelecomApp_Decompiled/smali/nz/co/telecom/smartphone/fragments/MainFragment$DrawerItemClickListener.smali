.class Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;


# direct methods
.method private constructor <init>(Lnz/co/telecom/smartphone/fragments/MainFragment;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/telecom/smartphone/fragments/MainFragment;Lnz/co/telecom/smartphone/fragments/MainFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/telecom/smartphone/fragments/MainFragment;
    .param p2, "x1"    # Lnz/co/telecom/smartphone/fragments/MainFragment$1;

    .prologue
    .line 470
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;-><init>(Lnz/co/telecom/smartphone/fragments/MainFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 473
    const/16 v4, 0xb

    if-ne p3, v4, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    sget v4, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    if-ne v4, p3, :cond_3

    .line 477
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v4, v7}, Lnz/co/telecom/smartphone/fragments/MainFragment;->toggleTermsAndConditions(I)V

    .line 478
    const/4 v4, 0x5

    if-eq p3, v4, :cond_2

    .line 479
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    const/4 v5, 0x0

    # setter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$302(Lnz/co/telecom/smartphone/fragments/MainFragment;Lnz/co/telecom/smartphone/fragments/FragBase;)Lnz/co/telecom/smartphone/fragments/FragBase;

    .line 480
    :cond_2
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$500(Lnz/co/telecom/smartphone/fragments/MainFragment;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$400(Lnz/co/telecom/smartphone/fragments/MainFragment;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_0

    .line 485
    :cond_3
    sget-object v4, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentTopTitles:[Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 486
    sget-object v4, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentTopTitles:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-static {v4}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;)V

    .line 489
    :cond_4
    sput p3, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    .line 490
    const/16 v4, 0xa

    if-ne p3, v4, :cond_5

    .line 491
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 494
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 495
    .local v3, "welcomeActivityIntent":Landroid/content/Intent;
    const-string v4, "is.from.logout.activity"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 496
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v4, v3}, Lnz/co/telecom/smartphone/fragments/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 498
    sput v6, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    goto :goto_0

    .line 502
    .end local v3    # "welcomeActivityIntent":Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v5, p3, v6}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getCurrentFragment(IZ)Lnz/co/telecom/smartphone/fragments/FragBase;

    move-result-object v5

    # setter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$302(Lnz/co/telecom/smartphone/fragments/MainFragment;Lnz/co/telecom/smartphone/fragments/FragBase;)Lnz/co/telecom/smartphone/fragments/FragBase;

    .line 505
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$300(Lnz/co/telecom/smartphone/fragments/MainFragment;)Lnz/co/telecom/smartphone/fragments/FragBase;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 509
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v4, v6}, Lnz/co/telecom/smartphone/fragments/MainFragment;->showRefreshButton(Z)V

    .line 510
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v4, v7}, Lnz/co/telecom/smartphone/fragments/MainFragment;->toggleTermsAndConditions(I)V

    .line 512
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 514
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v4

    if-nez v4, :cond_6

    .line 515
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mCurrentFragmentTag:Ljava/lang/String;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$600(Lnz/co/telecom/smartphone/fragments/MainFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 516
    .local v0, "currentFragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_6

    .line 517
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 519
    .local v2, "fragmentView":Landroid/view/View;
    if-eqz v2, :cond_6

    .line 520
    const v4, 0x3ecccccd

    invoke-static {v2, v4}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 525
    .end local v0    # "currentFragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "fragmentView":Landroid/view/View;
    :cond_6
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$500(Lnz/co/telecom/smartphone/fragments/MainFragment;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$400(Lnz/co/telecom/smartphone/fragments/MainFragment;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 527
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$300(Lnz/co/telecom/smartphone/fragments/MainFragment;)Lnz/co/telecom/smartphone/fragments/FragBase;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 531
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$DrawerItemClickListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;
    invoke-static {v5}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$300(Lnz/co/telecom/smartphone/fragments/MainFragment;)Lnz/co/telecom/smartphone/fragments/FragBase;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/fragments/FragBase;->getFragmentTag()Ljava/lang/String;

    move-result-object v5

    # setter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mCurrentFragmentTag:Ljava/lang/String;
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$602(Lnz/co/telecom/smartphone/fragments/MainFragment;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method
