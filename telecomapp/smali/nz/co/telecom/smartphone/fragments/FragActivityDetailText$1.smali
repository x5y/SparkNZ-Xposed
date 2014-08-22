.class Lnz/co/telecom/smartphone/fragments/FragActivityDetailText$1;
.super Ljava/lang/Object;
.source "FragActivityDetailText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailText$1;->this$0:Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragActivityDetailText$1;->this$0:Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/fragments/FragActivityDetailText;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    .line 93
    .local v0, "ra":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->toggleTermsAndConditions(I)V

    .line 94
    return-void
.end method
