.class Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$6;
.super Ljava/lang/Object;
.source "AdapterMyAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->showConfirmChangeDialog(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;

.field final synthetic val$confirmType:I

.field final synthetic val$isClickedOK:[Z

.field final synthetic val$viewTrigger:Landroid/view/View;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;ILandroid/view/View;[Z)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$6;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;

    iput p2, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$6;->val$confirmType:I

    iput-object p3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$6;->val$viewTrigger:Landroid/view/View;

    iput-object p4, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$6;->val$isClickedOK:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v5, 0x0

    .line 593
    iget v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$6;->val$confirmType:I

    packed-switch v4, :pswitch_data_0

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 597
    :pswitch_0
    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$6;->val$viewTrigger:Landroid/view/View;

    check-cast v3, Lorg/holoeverywhere/widget/Switch;

    .line 599
    .local v3, "selectedCheckBox":Lorg/holoeverywhere/widget/Switch;
    invoke-virtual {v3}, Lorg/holoeverywhere/widget/Switch;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;

    .line 601
    .local v0, "alertDTO_selected":Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;
    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$6;->val$isClickedOK:[Z

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_1

    .line 602
    invoke-virtual {v3}, Lorg/holoeverywhere/widget/Switch;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;->setIsSettingOn(Z)V

    goto :goto_0

    .line 604
    :cond_1
    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$6;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;->getIsSettingOn()Z

    move-result v5

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->syncCallSettingWithUI(Lorg/holoeverywhere/widget/Switch;Z)V
    invoke-static {v4, v3, v5}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->access$300(Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;Lorg/holoeverywhere/widget/Switch;Z)V

    goto :goto_0

    .line 611
    .end local v0    # "alertDTO_selected":Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;
    .end local v3    # "selectedCheckBox":Lorg/holoeverywhere/widget/Switch;
    :pswitch_1
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$6;->val$viewTrigger:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    .line 613
    .local v1, "buttonSave":Landroid/widget/Button;
    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$6;->val$isClickedOK:[Z

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_0

    .line 614
    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;

    .line 616
    .local v2, "callDiversionSettingsDTO":Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount;->access$400()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterMyAccount$6;->val$viewTrigger:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TODO: make an API call to save:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 593
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
