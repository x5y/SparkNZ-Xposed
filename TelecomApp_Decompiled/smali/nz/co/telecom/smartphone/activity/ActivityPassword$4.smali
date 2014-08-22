.class Lnz/co/telecom/smartphone/activity/ActivityPassword$4;
.super Ljava/lang/Object;
.source "ActivityPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/activity/ActivityPassword;->showErrorOnAutoLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword;

.field final synthetic val$subDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityPassword;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$4;->this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iput-object p2, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$4;->val$subDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 591
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$4;->val$subDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 592
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$4;->this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$2400(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 593
    .local v0, "welcomeActivityIntent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 594
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 595
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$4;->this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    invoke-virtual {v1, v0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->startActivity(Landroid/content/Intent;)V

    .line 596
    return-void
.end method
