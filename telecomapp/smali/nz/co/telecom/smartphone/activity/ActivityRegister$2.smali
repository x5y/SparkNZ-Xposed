.class Lnz/co/telecom/smartphone/activity/ActivityRegister$2;
.super Ljava/lang/Object;
.source "ActivityRegister.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/activity/ActivityRegister;
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
    .line 187
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$2;->this$0:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$2;->this$0:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->imManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$200(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$2;->this$0:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->imManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$200(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$2;->this$0:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout_mobileNo:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$000(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 192
    :cond_0
    return-void
.end method
