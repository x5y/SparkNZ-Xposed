.class Lnz/co/telecom/smartphone/activity/ActivityRegister$1;
.super Ljava/lang/Object;
.source "ActivityRegister.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/activity/ActivityRegister;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/activity/ActivityRegister;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityRegister;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 151
    if-eqz p2, :cond_0

    .line 152
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout_mobileNo:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$000(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->setImeVisibility(Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V
    invoke-static {v0, v1, v2}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$100(Lnz/co/telecom/smartphone/activity/ActivityRegister;Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout_mobileNo:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$000(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->setImeVisibility(Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V
    invoke-static {v0, v1, v2}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$100(Lnz/co/telecom/smartphone/activity/ActivityRegister;Lnz/co/telecom/smartphone/widget/TMYEditText;Z)V

    goto :goto_0
.end method
