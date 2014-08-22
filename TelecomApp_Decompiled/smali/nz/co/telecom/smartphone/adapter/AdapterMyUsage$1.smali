.class Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$1;
.super Ljava/lang/Object;
.source "AdapterMyUsage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->buildView(ILandroid/view/ViewGroup;ZLandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$1;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 242
    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$1;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->parentFA:Landroid/support/v4/app/FragmentActivity;
    invoke-static {v3}, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->access$100(Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    if-eqz v3, :cond_0

    .line 243
    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage$1;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->parentFA:Landroid/support/v4/app/FragmentActivity;
    invoke-static {v3}, Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;->access$100(Lnz/co/telecom/smartphone/adapter/AdapterMyUsage;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    .line 244
    .local v2, "ra":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    invoke-virtual {v2, v4}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->setCurrentNavigationMenuFragment(I)V

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;

    .line 248
    .local v0, "lineExtendedUsageMetersDTO":Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;
    new-instance v1, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;

    invoke-direct {v1, v4, v0}, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;-><init>(ILnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;)V

    .line 249
    .local v1, "planDetail":Lnz/co/telecom/smartphone/fragments/FragPlanDetail;
    invoke-virtual {v2, v1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->switchContent(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    .line 251
    .end local v0    # "lineExtendedUsageMetersDTO":Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;
    .end local v1    # "planDetail":Lnz/co/telecom/smartphone/fragments/FragPlanDetail;
    .end local v2    # "ra":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    :cond_0
    return-void
.end method
