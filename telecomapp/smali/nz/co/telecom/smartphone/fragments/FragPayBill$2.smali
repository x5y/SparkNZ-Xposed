.class Lnz/co/telecom/smartphone/fragments/FragPayBill$2;
.super Ljava/lang/Object;
.source "FragPayBill.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragPayBill;->initData()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currencyFormat:Ljava/text/NumberFormat;

.field private current:Ljava/lang/String;

.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V
    .locals 1

    .prologue
    .line 658
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$2;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$2;->currencyFormat:Ljava/text/NumberFormat;

    .line 660
    const-string v0, ""

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$2;->current:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 674
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 675
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$2;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    const/4 v1, 0x1

    # invokes: Lnz/co/telecom/smartphone/fragments/FragPayBill;->enablePayButton(Z)V
    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$2700(Lnz/co/telecom/smartphone/fragments/FragPayBill;Z)V

    .line 679
    :goto_0
    return-void

    .line 677
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$2;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    const/4 v1, 0x0

    # invokes: Lnz/co/telecom/smartphone/fragments/FragPayBill;->enablePayButton(Z)V
    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$2700(Lnz/co/telecom/smartphone/fragments/FragPayBill;Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 665
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 670
    return-void
.end method
