.class Lnz/co/telecom/smartphone/fragments/FragTopUp$3;
.super Ljava/lang/Object;
.source "FragTopUp.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragTopUp;->initData()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$3;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 302
    if-eqz p2, :cond_0

    .line 303
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$3;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$3;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_credit_card_other_amount:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$500(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lnz/co/telecom/smartphone/fragments/FragTopUp;->setImeVisibility(Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V
    invoke-static {v0, v1, v2}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$200(Lnz/co/telecom/smartphone/fragments/FragTopUp;Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$3;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$3;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_credit_card_other_amount:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$500(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lnz/co/telecom/smartphone/fragments/FragTopUp;->setImeVisibility(Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V
    invoke-static {v0, v1, v2}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$200(Lnz/co/telecom/smartphone/fragments/FragTopUp;Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V

    goto :goto_0
.end method
