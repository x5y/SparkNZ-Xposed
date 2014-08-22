.class Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingDrawerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;


# direct methods
.method private constructor <init>(Lnz/co/telecom/smartphone/fragments/MainFragment;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/telecom/smartphone/fragments/MainFragment;Lnz/co/telecom/smartphone/fragments/MainFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/telecom/smartphone/fragments/MainFragment;
    .param p2, "x1"    # Lnz/co/telecom/smartphone/fragments/MainFragment$1;

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;-><init>(Lnz/co/telecom/smartphone/fragments/MainFragment;)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 555
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mDrawerToggle:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$800(Lnz/co/telecom/smartphone/fragments/MainFragment;)Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    .line 556
    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mActionBar:Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$700()Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->onDrawerClosed()V

    .line 558
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->showRefreshButton(Z)V

    .line 560
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mFragmentContent:Lnz/co/telecom/smartphone/fragments/FragBase;
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$300(Lnz/co/telecom/smartphone/fragments/MainFragment;)Lnz/co/telecom/smartphone/fragments/FragBase;

    move-result-object v1

    if-nez v1, :cond_0

    .line 561
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->showRefreshButton(Z)V

    .line 590
    :goto_0
    return-void

    .line 565
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 566
    .local v0, "uiHandler":Landroid/os/Handler;
    new-instance v1, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener$1;

    invoke-direct {v1, p0}, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener$1;-><init>(Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 548
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mDrawerToggle:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$800(Lnz/co/telecom/smartphone/fragments/MainFragment;)Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    .line 549
    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mActionBar:Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$700()Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->onDrawerOpened()V

    .line 550
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 594
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mDrawerToggle:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$800(Lnz/co/telecom/smartphone/fragments/MainFragment;)Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->onDrawerSlide(Landroid/view/View;F)V

    .line 595
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 599
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$SlidingDrawerListener;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mDrawerToggle:Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$800(Lnz/co/telecom/smartphone/fragments/MainFragment;)Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sherlock/navigationdrawer/compat/SherlockActionBarDrawerToggle;->onDrawerStateChanged(I)V

    .line 600
    return-void
.end method
