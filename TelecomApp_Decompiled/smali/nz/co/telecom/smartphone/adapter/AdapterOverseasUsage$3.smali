.class Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$3;
.super Ljava/lang/Object;
.source "AdapterOverseasUsage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->showConfirmChangeUsageSelection(Landroid/widget/RadioButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;

.field final synthetic val$isClickedOK:[Z

.field final synthetic val$selectedRadioButton:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;Landroid/widget/RadioButton;[Z)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;

    iput-object p2, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$3;->val$selectedRadioButton:Landroid/widget/RadioButton;

    iput-object p3, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$3;->val$isClickedOK:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 298
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$3;->val$selectedRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 300
    .local v0, "selectedUsageOption":Ljava/lang/Integer;
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$3;->val$isClickedOK:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mCurrentUsageSelection:Ljava/lang/Integer;
    invoke-static {v1, v0}, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->access$302(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 302
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mOverseasUsageDTO:Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;
    invoke-static {v1}, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->access$100(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;)Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->mCurrentUsageSelection:Ljava/lang/Integer;
    invoke-static {v2}, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->access$300(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageDTO;->setOverseasUsageOptionSelected(I)V

    .line 305
    :cond_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;

    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage$3;->val$isClickedOK:[Z

    aget-boolean v2, v2, v3

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->syncUsageOptionsWithUI(Z)V
    invoke-static {v1, v2}, Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;->access$400(Lnz/co/telecom/smartphone/adapter/AdapterOverseasUsage;Z)V

    .line 306
    return-void
.end method
