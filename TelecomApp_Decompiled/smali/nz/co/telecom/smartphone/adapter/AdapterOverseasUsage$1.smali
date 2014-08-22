.class Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$1;
.super Ljava/lang/Object;
.source "AdapterOverseasUsage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$1;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$1;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;
    invoke-static {v2}, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->access$100(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;)Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->getViewDataAmountsLinkURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 192
    .local v0, "intentViewURL":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 194
    return-void
.end method
