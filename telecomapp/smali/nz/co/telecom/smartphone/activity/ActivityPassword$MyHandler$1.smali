.class Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;
.super Ljava/lang/Thread;
.source "ActivityPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler;

.field final synthetic val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler;Lnz/co/telecom/smartphone/activity/ActivityPassword;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler;

    iput-object p2, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 425
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v2, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_on_or_off_net:Z
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$700(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 427
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    const v5, 0x7f0e00b4

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_password:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1100(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    const v5, 0x7f0e00b6

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_token_id:Ljava/lang/String;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1200(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    :goto_0
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATUS_START_REGISTRATION_NOTIFIER ActivityPassword urlParameters "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 438
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATUS_START_REGISTRATION_NOTIFIER ActivityPassword mMobilePhoneNumber "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->mMobilePhoneNumber:Ljava/lang/String;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1500(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_1
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 440
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATUS_START_REGISTRATION_NOTIFIER ActivityPassword registrationController "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v5, v5, Lnz/co/telecom/smartphone/activity/ActivityPassword;->registrationController:Lnz/co/telecom/smartphone/controller/RegistrationControllerInterface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_2
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v4, v4, Lnz/co/telecom/smartphone/activity/ActivityPassword;->registrationController:Lnz/co/telecom/smartphone/controller/RegistrationControllerInterface;

    invoke-interface {v4, v2}, Lnz/co/telecom/smartphone/controller/RegistrationControllerInterface;->updatePassword(Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v4

    # setter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1602(Lnz/co/telecom/smartphone/activity/ActivityPassword;Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    .line 444
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 445
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATUS_START_REGISTRATION_NOTIFIER ActivityPassword rdto "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1600(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_3
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1600(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 449
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 450
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got registration dto in ActivityPassword "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1600(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got registration dto in ActivityPassword isOneNetCheck "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1600(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getCodeInt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got registration dto in ActivityPassword isOneNetCheck "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1600(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->isOnNetCheck()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got registration dto in ActivityPassword getTokenID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1600(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getTokenID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got registration dto in ActivityPassword getSessionID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1600(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getSessionID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_4
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got registration dto in ActivityPassword getCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1600(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getCodeInt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got registration dto in ActivityPassword getDescription "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1600(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1600(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getCodeInt()I

    move-result v3

    sget v4, Lnz/co/telecom/smartphone/TelecomConstants;->REGISTRATION_CODE_SUCCESS:I

    if-ne v3, v4, :cond_7

    .line 461
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    const/16 v4, 0x20e

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->createMessage(I)V
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1700(Lnz/co/telecom/smartphone/activity/ActivityPassword;I)V

    .line 493
    .end local v2    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :goto_1
    return-void

    .line 430
    .restart local v2    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_5
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    const v5, 0x7f0e00b5

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_session_id:Ljava/lang/String;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1300(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    const v5, 0x7f0e00b4

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_password:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1100(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    const v5, 0x7f0e00b3

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_verification_code_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1400(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 480
    .end local v2    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v1

    .line 481
    .local v1, "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    if-eqz v1, :cond_6

    :try_start_1
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getStatusCode()I

    move-result v3

    if-lez v3, :cond_6

    .line 482
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HttpServiceException (status code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_6
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    const/16 v4, 0x20a

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->createMessage(I)V
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1700(Lnz/co/telecom/smartphone/activity/ActivityPassword;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 489
    .end local v1    # "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    :catchall_0
    move-exception v3

    throw v3

    .line 463
    .restart local v2    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_7
    :try_start_2
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 464
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got registration dto in ActivityPassword REGISTRATION_CODE_INVALID_CODE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1600(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getCodeInt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_8
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1600(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getCodeInt()I

    move-result v3

    sget v4, Lnz/co/telecom/smartphone/TelecomConstants;->REGISTRATION_CODE_ALL_EXCEPTIONS:I

    if-ne v3, v4, :cond_9

    .line 467
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v4}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1600(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getDescription()Ljava/lang/String;

    move-result-object v4

    # setter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->errorMessageFromServer:Ljava/lang/String;
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1802(Lnz/co/telecom/smartphone/activity/ActivityPassword;Ljava/lang/String;)Ljava/lang/String;

    .line 473
    :goto_2
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    const/16 v4, 0x20d

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->createMessage(I)V
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1700(Lnz/co/telecom/smartphone/activity/ActivityPassword;I)V
    :try_end_2
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 486
    .end local v2    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_1
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception (status code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    const/16 v4, 0x20a

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->createMessage(I)V
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1700(Lnz/co/telecom/smartphone/activity/ActivityPassword;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 468
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_9
    :try_start_4
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1600(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getCodeInt()I

    move-result v3

    sget v4, Lnz/co/telecom/smartphone/TelecomConstants;->REGISTRATION_CODE_INVALID_REQUEST:I

    if-ne v3, v4, :cond_a

    .line 469
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    const v5, 0x7f0e00b8

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v4

    # setter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->errorMessageFromServer:Ljava/lang/String;
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1802(Lnz/co/telecom/smartphone/activity/ActivityPassword;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 471
    :cond_a
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v4}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1600(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getDescription()Ljava/lang/String;

    move-result-object v4

    # setter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->errorMessageFromServer:Ljava/lang/String;
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1802(Lnz/co/telecom/smartphone/activity/ActivityPassword;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 477
    :cond_b
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    const/16 v4, 0x20a

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->createMessage(I)V
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1700(Lnz/co/telecom/smartphone/activity/ActivityPassword;I)V
    :try_end_4
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method
