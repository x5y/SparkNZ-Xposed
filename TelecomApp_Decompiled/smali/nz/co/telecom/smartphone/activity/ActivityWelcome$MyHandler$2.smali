.class Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$2;
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
    .line 402
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$2;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler;

    iput-object p2, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$2;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 404
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$2;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$700(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserMobileNumber()Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "mobileNumber":Ljava/lang/String;
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$2;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$700(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserPassword()Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "password":Ljava/lang/String;
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$2;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mAccessControlController:Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;

    invoke-interface {v3, v1, v2}, Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;->performLogin(Ljava/lang/String;Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;

    move-result-object v0

    .line 408
    .local v0, "accessControlLoginDTO":Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$2;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->accessControlLoginHandler(Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;)V
    invoke-static {v3, v0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$800(Lnz/co/telecom/smartphone/activity/ActivityWelcome;Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;)V

    .line 409
    return-void
.end method
