.class Lnz/co/telecom/smartphone/activity/ActivityWelcome$2;
.super Ljava/lang/Object;
.source "ActivityWelcome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/activity/ActivityWelcome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$2;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 575
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$2;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    iget-object v0, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$2;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    iget-object v0, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$2;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_mobile_no_ET:Landroid/widget/EditText;
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$900(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 579
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$2;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->loginCallbackHandler()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$1200(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V

    .line 580
    return-void
.end method
