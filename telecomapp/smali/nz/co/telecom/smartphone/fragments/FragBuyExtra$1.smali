.class Lnz/co/telecom/smartphone/fragments/FragBuyExtra$1;
.super Ljava/lang/Object;
.source "FragBuyExtra.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->initData()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragBuyExtra;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragBuyExtra;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra$1;->this$0:Lnz/co/telecom/smartphone/fragments/FragBuyExtra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra$1;->this$0:Lnz/co/telecom/smartphone/fragments/FragBuyExtra;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    .line 193
    .local v0, "ra":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->toggleTermsAndConditions(I)V

    .line 194
    return-void
.end method
