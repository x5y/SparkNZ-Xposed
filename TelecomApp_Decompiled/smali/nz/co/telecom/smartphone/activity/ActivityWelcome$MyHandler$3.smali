.class Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$3;
.super Ljava/lang/Thread;
.source "ActivityWelcome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler;

.field final synthetic val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler;Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$3;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler;

    iput-object p2, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$3;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 418
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$3;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_mobile_no_ET:Landroid/widget/EditText;
    invoke-static {v4}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$900(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "mobileNumber":Ljava/lang/String;
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$3;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    iget-object v4, v4, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_password_ET:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, "password":Ljava/lang/String;
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$3;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    iget-object v4, v4, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mAccessControlController:Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;

    invoke-interface {v4, v2, v3}, Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;->performLogin(Ljava/lang/String;Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;

    move-result-object v0

    .line 422
    .local v0, "accessControlLoginDTO":Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$3;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->accessControlLoginHandler(Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;)V
    invoke-static {v4, v0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$800(Lnz/co/telecom/smartphone/activity/ActivityWelcome;Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;)V

    .line 424
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 425
    .local v1, "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "mdn"

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$3;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_mobile_no_ET:Landroid/widget/EditText;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$900(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v4, "signin"

    invoke-static {v4, v1}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 427
    return-void
.end method
