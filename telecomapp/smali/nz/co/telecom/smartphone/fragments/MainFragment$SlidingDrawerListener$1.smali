.class Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener$1;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;->onDrawerClosed(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener$1;->this$1:Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 570
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener$1;->this$1:Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener$1;->this$1:Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;

    iget-object v3, v3, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;
    invoke-static {v3}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$300(Lnz/co/telecom/smartphone/fragments/MainFragment;)Lnz/co/telecom/smartphone/fragments/FragBase;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/fragments/FragBase;->getFragmentTag()Ljava/lang/String;

    move-result-object v3

    # setter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mCurrentFragmentTag:Ljava/lang/String;
    invoke-static {v2, v3}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$602(Lnz/co/telecom/smartphone/fragments/MainFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 572
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener$1;->this$1:Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 573
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 575
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener$1;->this$1:Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 577
    const v2, 0x7f0900fc

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener$1;->this$1:Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;

    iget-object v3, v3, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;
    invoke-static {v3}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$300(Lnz/co/telecom/smartphone/fragments/MainFragment;)Lnz/co/telecom/smartphone/fragments/FragBase;

    move-result-object v3

    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener$1;->this$1:Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;

    iget-object v4, v4, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mCurrentFragmentTag:Ljava/lang/String;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$600(Lnz/co/telecom/smartphone/fragments/MainFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 579
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener$1;->this$1:Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;
    invoke-static {v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$300(Lnz/co/telecom/smartphone/fragments/MainFragment;)Lnz/co/telecom/smartphone/fragments/FragBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/fragments/FragBase;->getPos()I

    move-result v2

    sput v2, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    .line 580
    sget v2, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_0

    .line 581
    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mActionBar:Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$700()Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

    move-result-object v2

    sget-object v3, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentTopTitles:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->setTitle(Ljava/lang/CharSequence;)V

    .line 586
    :goto_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener$1;->this$1:Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # setter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mCurrentFragmentTag:Ljava/lang/String;
    invoke-static {v2, v6}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$602(Lnz/co/telecom/smartphone/fragments/MainFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 587
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener$1;->this$1:Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v2, v5}, Lnz/co/telecom/smartphone/fragments/MainFragment;->showRefreshButton(Z)V

    .line 588
    return-void

    .line 583
    :cond_0
    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mActionBar:Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$700()Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

    move-result-object v2

    sget-object v3, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentTopTitles:[Ljava/lang/String;

    sget v4, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
