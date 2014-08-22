.class final Lorg/holoeverywhere/app/TabSwipeController$TabSwipeAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "TabSwipeController.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/actionbarsherlock/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/app/TabSwipeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TabSwipeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/app/TabSwipeController;


# direct methods
.method public constructor <init>(Lorg/holoeverywhere/app/TabSwipeController;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/holoeverywhere/app/TabSwipeController$TabSwipeAdapter;->this$0:Lorg/holoeverywhere/app/TabSwipeController;

    .line 64
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController$TabSwipeAdapter;->this$0:Lorg/holoeverywhere/app/TabSwipeController;

    # getter for: Lorg/holoeverywhere/app/TabSwipeController;->mTabs:Ljava/util/List;
    invoke-static {v0}, Lorg/holoeverywhere/app/TabSwipeController;->access$000(Lorg/holoeverywhere/app/TabSwipeController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/TabSwipeController$TabSwipeAdapter;->getItem(I)Lorg/holoeverywhere/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lorg/holoeverywhere/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 74
    iget-object v1, p0, Lorg/holoeverywhere/app/TabSwipeController$TabSwipeAdapter;->this$0:Lorg/holoeverywhere/app/TabSwipeController;

    # getter for: Lorg/holoeverywhere/app/TabSwipeController;->mTabs:Ljava/util/List;
    invoke-static {v1}, Lorg/holoeverywhere/app/TabSwipeController;->access$000(Lorg/holoeverywhere/app/TabSwipeController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;

    .line 75
    .local v0, "info":Lorg/holoeverywhere/app/TabSwipeController$TabInfo;
    # getter for: Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->mFragmentClass:Ljava/lang/Class;
    invoke-static {v0}, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->access$100(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Ljava/lang/Class;

    move-result-object v1

    # getter for: Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->mFragmentArguments:Landroid/os/Bundle;
    invoke-static {v0}, Lorg/holoeverywhere/app/TabSwipeController$TabInfo;->access$200(Lorg/holoeverywhere/app/TabSwipeController$TabInfo;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/holoeverywhere/app/Fragment;->instantiate(Ljava/lang/Class;Landroid/os/Bundle;)Lorg/holoeverywhere/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "scrollState"    # I

    .prologue
    .line 86
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "percent"    # F
    .param p3, "pixels"    # I

    .prologue
    .line 81
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController$TabSwipeAdapter;->this$0:Lorg/holoeverywhere/app/TabSwipeController;

    # invokes: Lorg/holoeverywhere/app/TabSwipeController;->dispatchTabSelected(I)V
    invoke-static {v0, p1}, Lorg/holoeverywhere/app/TabSwipeController;->access$300(Lorg/holoeverywhere/app/TabSwipeController;I)V

    .line 91
    return-void
.end method

.method public onTabReselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 96
    return-void
.end method

.method public onTabSelected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 2
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 100
    iget-object v0, p0, Lorg/holoeverywhere/app/TabSwipeController$TabSwipeAdapter;->this$0:Lorg/holoeverywhere/app/TabSwipeController;

    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v1

    # invokes: Lorg/holoeverywhere/app/TabSwipeController;->dispatchTabSelected(I)V
    invoke-static {v0, v1}, Lorg/holoeverywhere/app/TabSwipeController;->access$300(Lorg/holoeverywhere/app/TabSwipeController;I)V

    .line 101
    return-void
.end method

.method public onTabUnselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 106
    return-void
.end method
