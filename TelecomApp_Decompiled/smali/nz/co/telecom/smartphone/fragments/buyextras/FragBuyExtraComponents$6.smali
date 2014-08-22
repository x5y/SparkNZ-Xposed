.class Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$6;
.super Ljava/lang/Object;
.source "FragBuyExtraComponents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->handleBuyExtraResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

.field final synthetic val$subDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$6;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    iput-object p2, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$6;->val$subDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 362
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$6;->val$subDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 363
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragMyUsage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragMyUsage;-><init>(I)V

    .line 364
    .local v0, "myUsageFragment":Lnz/co/telecom/smartphone/fragments/FragBase;
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$6;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    invoke-virtual {v1, v0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->switchFragment(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    .line 365
    const-string v1, "usage"

    invoke-static {v1}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;)V

    .line 366
    return-void
.end method
