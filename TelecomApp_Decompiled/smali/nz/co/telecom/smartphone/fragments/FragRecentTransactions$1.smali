.class Lnz/co/telecom/smartphone/fragments/FragRecentTransactions$1;
.super Ljava/lang/Object;
.source "FragRecentTransactions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->initData()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions$1;->this$0:Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions$1;->this$0:Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/fragments/FragRecentTransactions;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    .line 151
    .local v0, "ra":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->toggleTermsAndConditions(I)V

    .line 152
    return-void
.end method
