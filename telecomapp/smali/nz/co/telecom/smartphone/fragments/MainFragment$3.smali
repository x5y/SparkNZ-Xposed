.class Lnz/co/telecom/smartphone/fragments/MainFragment$3;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/MainFragment;->getBackStackChangeListener()Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/MainFragment;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$3;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 5

    .prologue
    .line 685
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$3;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 687
    .local v1, "manager":Landroid/support/v4/app/FragmentManager;
    if-eqz v1, :cond_0

    .line 688
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-nez v2, :cond_1

    sget v2, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    if-nez v2, :cond_1

    .line 689
    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mActionBar:Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$700()Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

    move-result-object v2

    sget-object v3, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentTopTitles:[Ljava/lang/String;

    sget v4, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->setTitle(Ljava/lang/CharSequence;)V

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$3;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0900fc

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/fragments/FragBase;

    .line 696
    .local v0, "currentFrag":Lnz/co/telecom/smartphone/fragments/FragBase;
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragBase;->getPos()I

    move-result v2

    sput v2, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    .line 698
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragBase;->getPos()I

    move-result v2

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_2

    .line 699
    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mActionBar:Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$700()Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

    move-result-object v2

    sget-object v3, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentTopTitles:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 701
    :cond_2
    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mActionBar:Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$700()Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

    move-result-object v2

    sget-object v3, Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentTopTitles:[Ljava/lang/String;

    sget v4, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
