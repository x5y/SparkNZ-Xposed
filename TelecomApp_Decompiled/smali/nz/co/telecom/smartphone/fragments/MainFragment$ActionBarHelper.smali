.class Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;
.super Ljava/lang/Object;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarHelper"
.end annotation


# instance fields
.field private mActionBar:Lcom/actionbarsherlock/app/ActionBar;

.field private mTitle:Ljava/lang/CharSequence;

.field private textViewHeading:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;


# direct methods
.method private constructor <init>(Lnz/co/telecom/smartphone/fragments/MainFragment;)V
    .locals 1

    .prologue
    .line 618
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    invoke-virtual {p1}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    .line 620
    return-void
.end method

.method synthetic constructor <init>(Lnz/co/telecom/smartphone/fragments/MainFragment;Lnz/co/telecom/smartphone/fragments/MainFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/telecom/smartphone/fragments/MainFragment;
    .param p2, "x1"    # Lnz/co/telecom/smartphone/fragments/MainFragment$1;

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;-><init>(Lnz/co/telecom/smartphone/fragments/MainFragment;)V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 625
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->mTitle:Ljava/lang/CharSequence;

    .line 627
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    const v2, 0x7f03001e

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setCustomView(I)V

    .line 629
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 630
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->textViewHeading:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 631
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->textViewHeading:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 635
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    const v2, 0x7f020101

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 636
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayOptions(I)V

    .line 637
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 638
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1, v4}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 639
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 640
    return-void
.end method

.method public onDrawerClosed()V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->textViewHeading:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    return-void
.end method

.method public onDrawerOpened()V
    .locals 0

    .prologue
    .line 660
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 672
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 674
    if-eqz p1, :cond_0

    .line 675
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$500(Lnz/co/telecom/smartphone/fragments/MainFragment;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 679
    :goto_0
    return-void

    .line 677
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$500(Lnz/co/telecom/smartphone/fragments/MainFragment;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 663
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->mTitle:Ljava/lang/CharSequence;

    .line 664
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->textViewHeading:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$ActionBarHelper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    return-void
.end method
