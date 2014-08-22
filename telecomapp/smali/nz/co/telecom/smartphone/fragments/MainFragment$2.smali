.class Lnz/co/telecom/smartphone/fragments/MainFragment$2;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/MainFragment;->switchContent(Lnz/co/telecom/smartphone/fragments/FragBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

.field final synthetic val$fragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/MainFragment;Lnz/co/telecom/smartphone/fragments/FragBase;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    iput-object p2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->val$fragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const v6, 0x7f0900fc

    .line 345
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/fragments/MainFragment;->showRefreshButton(Z)V

    .line 347
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/fragments/FragBase;

    .line 349
    .local v0, "currentFrag":Lnz/co/telecom/smartphone/fragments/FragBase;
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->val$fragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;

    # setter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;
    invoke-static {v2, v3}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$302(Lnz/co/telecom/smartphone/fragments/MainFragment;Lnz/co/telecom/smartphone/fragments/FragBase;)Lnz/co/telecom/smartphone/fragments/FragBase;

    .line 351
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragBase;->initData()Landroid/view/View;

    .line 352
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$500(Lnz/co/telecom/smartphone/fragments/MainFragment;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v2

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$400(Lnz/co/telecom/smartphone/fragments/MainFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 354
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->val$fragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/fragments/FragBase;->getFragmentTag()Ljava/lang/String;

    move-result-object v3

    # setter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mCurrentFragmentTag:Ljava/lang/String;
    invoke-static {v2, v3}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$602(Lnz/co/telecom/smartphone/fragments/MainFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 362
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragBase;->getPos()I

    move-result v2

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;
    invoke-static {v3}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$300(Lnz/co/telecom/smartphone/fragments/MainFragment;)Lnz/co/telecom/smartphone/fragments/FragBase;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/fragments/FragBase;->getPos()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;
    invoke-static {v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$300(Lnz/co/telecom/smartphone/fragments/MainFragment;)Lnz/co/telecom/smartphone/fragments/FragBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/fragments/FragBase;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnz/co/telecom/smartphone/fragments/FragMyUsage;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    :cond_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;
    invoke-static {v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$300(Lnz/co/telecom/smartphone/fragments/MainFragment;)Lnz/co/telecom/smartphone/fragments/FragBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/fragments/FragBase;->getPos()I

    move-result v2

    sput v2, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    .line 364
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v8, v7}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 365
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->val$fragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mCurrentFragmentTag:Ljava/lang/String;
    invoke-static {v3}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$600(Lnz/co/telecom/smartphone/fragments/MainFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 366
    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mActionBar:Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$700()Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

    move-result-object v2

    sget-object v3, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentTopTitles:[Ljava/lang/String;

    sget v4, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->setTitle(Ljava/lang/CharSequence;)V

    .line 373
    :goto_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/fragments/MainFragment;->toggleTermsAndConditions(I)V

    .line 375
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v2, v7}, Lnz/co/telecom/smartphone/fragments/MainFragment;->showRefreshButton(Z)V

    .line 376
    return-void

    .line 369
    :cond_1
    const v2, 0x7f04000c

    const v3, 0x7f04000d

    const v4, 0x7f04000e

    const v5, 0x7f04000f

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 370
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->val$fragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$2;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mCurrentFragmentTag:Ljava/lang/String;
    invoke-static {v3}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$600(Lnz/co/telecom/smartphone/fragments/MainFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
