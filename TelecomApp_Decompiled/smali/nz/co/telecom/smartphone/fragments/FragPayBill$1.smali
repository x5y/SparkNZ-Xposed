.class Lnz/co/telecom/smartphone/fragments/FragPayBill$1;
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
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$1;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 644
    const/16 v0, 0x9

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 645
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$1;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    const/4 v1, 0x1

    # invokes: Lnz/co/telecom/smartphone/fragments/FragPayBill;->enableNextButton(Z)V
    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$2600(Lnz/co/telecom/smartphone/fragments/FragPayBill;Z)V

    .line 649
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$1;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    const/4 v1, 0x0

    # invokes: Lnz/co/telecom/smartphone/fragments/FragPayBill;->enableNextButton(Z)V
    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$2600(Lnz/co/telecom/smartphone/fragments/FragPayBill;Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 635
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 640
    return-void
.end method
