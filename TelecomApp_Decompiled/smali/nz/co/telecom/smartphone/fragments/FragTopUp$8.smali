.class Lnz/co/telecom/smartphone/fragments/FragTopUp$8;
.super Ljava/lang/Object;
.source "FragTopUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragTopUp;
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
    .line 937
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$8;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 939
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$8;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->imManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$3200(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$8;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->imManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$3200(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$8;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_credit_card_other_amount:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$500(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 942
    :cond_0
    return-void
.end method
