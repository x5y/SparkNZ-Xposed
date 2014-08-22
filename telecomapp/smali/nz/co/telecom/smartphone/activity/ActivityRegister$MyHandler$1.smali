.class Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;
.super Ljava/lang/Thread;
.source "ActivityRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler;

.field final synthetic val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler;Lnz/co/telecom/smartphone/activity/ActivityRegister;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler;

    iput-object p2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x20a

    .line 344
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v2, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    const v5, 0x7f0e00ae

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_mobile_number_only_layout_mobileNo:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$000(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    iget-object v4, v4, Lnz/co/telecom/smartphone/activity/ActivityRegister;->registrationController:Lnz/co/telecom/smartphone/controller/RegistrationController;

    invoke-virtual {v4, v2}, Lnz/co/telecom/smartphone/controller/RegistrationController;->createTokenSession(Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v4

    # setter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$1102(Lnz/co/telecom/smartphone/activity/ActivityRegister;Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    .line 348
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->debug:Z
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$400(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityRegister;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got registration dto in registration urlParameters "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$1100(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 351
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->debug:Z
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$400(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityRegister;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got registration dto in registration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$1100(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_1
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->debug:Z
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$400(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 354
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityRegister;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got registration dto in registration isOnNetCheck "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$1100(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->isOnNetCheck()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_2
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->debug:Z
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$400(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 356
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityRegister;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got registration dto in registration getTokenID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$1100(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getTokenID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_3
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->debug:Z
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$400(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 358
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityRegister;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got registration dto in registration getSessionID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$1100(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getSessionID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_4
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->debug:Z
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$400(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 360
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityRegister;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got registration dto in registration getCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$1100(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getCodeInt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_5
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->debug:Z
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$400(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 362
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityRegister;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got registration dto in registration getDescription "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v5}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$1100(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_6
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$1100(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getCodeInt()I

    move-result v3

    sget v4, Lnz/co/telecom/smartphone/TelecomConstants;->REGISTRATION_CODE_NON_TELECOM:I

    if-ne v3, v4, :cond_7

    .line 364
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    const/16 v4, 0x20c

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->createMessage(I)V
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$300(Lnz/co/telecom/smartphone/activity/ActivityRegister;I)V

    .line 382
    .end local v2    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :goto_0
    return-void

    .line 365
    .restart local v2    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_7
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$1100(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getCodeInt()I

    move-result v3

    sget v4, Lnz/co/telecom/smartphone/TelecomConstants;->REGISTRATION_CODE_SUCCESS:I

    if-ne v3, v4, :cond_8

    .line 366
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    const/16 v4, 0x20b

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->createMessage(I)V
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$300(Lnz/co/telecom/smartphone/activity/ActivityRegister;I)V
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 374
    .end local v2    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v1

    .line 375
    .local v1, "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->createMessage(I)V
    invoke-static {v3, v6}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$300(Lnz/co/telecom/smartphone/activity/ActivityRegister;I)V

    .line 376
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityRegister;->TAG:Ljava/lang/String;

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

    goto :goto_0

    .line 368
    .end local v1    # "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    .restart local v2    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_8
    :try_start_1
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v4}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$1100(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getDescription()Ljava/lang/String;

    move-result-object v4

    # setter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->errorMessageFromServer:Ljava/lang/String;
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$1202(Lnz/co/telecom/smartphone/activity/ActivityRegister;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    const/16 v4, 0x20d

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->createMessage(I)V
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$300(Lnz/co/telecom/smartphone/activity/ActivityRegister;I)V
    :try_end_1
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 377
    .end local v2    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_1
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->createMessage(I)V
    invoke-static {v3, v6}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$300(Lnz/co/telecom/smartphone/activity/ActivityRegister;I)V

    .line 379
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    iget-object v3, v3, Lnz/co/telecom/smartphone/activity/ActivityRegister;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errror in registration"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 372
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_9
    :try_start_2
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    const/16 v4, 0x20a

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->createMessage(I)V
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$300(Lnz/co/telecom/smartphone/activity/ActivityRegister;I)V
    :try_end_2
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
