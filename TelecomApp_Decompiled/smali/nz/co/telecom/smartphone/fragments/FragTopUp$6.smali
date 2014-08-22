.class Lnz/co/telecom/smartphone/fragments/FragTopUp$6;
.super Ljava/lang/Object;
.source "FragTopUp.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 343
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$6;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 355
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 356
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$6;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    const/4 v1, 0x0

    # invokes: Lnz/co/telecom/smartphone/fragments/FragTopUp;->enableTopupButton(I)V
    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$600(Lnz/co/telecom/smartphone/fragments/FragTopUp;I)V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$6;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    const/16 v1, 0x8

    # invokes: Lnz/co/telecom/smartphone/fragments/FragTopUp;->enableTopupButton(I)V
    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$600(Lnz/co/telecom/smartphone/fragments/FragTopUp;I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 351
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 346
    return-void
.end method
