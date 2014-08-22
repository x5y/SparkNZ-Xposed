.class Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;
.super Ljava/lang/Thread;
.source "FragTopUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler;

.field final synthetic val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler;Lnz/co/telecom/smartphone/fragments/FragTopUp;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler;

    iput-object p2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x30a

    .line 463
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v3, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "recipient"

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_mobile_no_EV:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$400(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v6

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "number"

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->voucherNo:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1800()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v5, v5, Lnz/co/telecom/smartphone/fragments/FragTopUp;->topupController:Lnz/co/telecom/smartphone/controller/TopupControllerInterface;

    invoke-interface {v5, v3}, Lnz/co/telecom/smartphone/controller/TopupControllerInterface;->getTopUpResults(Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    move-result-object v5

    # setter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnedMessage:Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1902(Lnz/co/telecom/smartphone/fragments/FragTopUp;Lnz/co/telecom/smartphone/dto/topup/TopupDTO;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    .line 468
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 469
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v4, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " returnedMessage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnedMessage:Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    invoke-static {v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1900(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnedMessage:Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1900(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 471
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 472
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v4, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " returnedMessage.getMessages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnedMessage:Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    invoke-static {v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1900(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    move-result-object v6

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->getMessages()Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_1
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 474
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v4, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " returnedMessage.getValues "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnedMessage:Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    invoke-static {v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1900(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    move-result-object v6

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_2
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 476
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v4, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " returnedMessage.getType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnedMessage:Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    invoke-static {v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1900(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    move-result-object v6

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_3
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnedMessage:Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1900(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->getMessages()Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 479
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 480
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v4, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " returnedMessage.getBalance "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnedMessage:Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    invoke-static {v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1900(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    move-result-object v6

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->getBalance()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_4
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    const/4 v5, 0x1

    # setter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->oneResult:I
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2002(Lnz/co/telecom/smartphone/fragments/FragTopUp;I)I

    .line 482
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnedMessage:Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    invoke-static {v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1900(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->getBalance()D

    move-result-wide v5

    # setter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->mostUpdatedBalance:D
    invoke-static {v4, v5, v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2102(Lnz/co/telecom/smartphone/fragments/FragTopUp;D)D

    .line 483
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnedMessage:Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1900(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->getMessages()Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

    move-result-object v1

    .line 484
    .local v1, "tmt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 485
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    const/4 v5, 0x1

    # setter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->oneResult:I
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2002(Lnz/co/telecom/smartphone/fragments/FragTopUp;I)I

    .line 489
    :goto_0
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 490
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 491
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v4, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " SUCCESS returnedMessage.getMessages().getValues() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_5
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;

    .line 493
    .local v2, "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->getTitle()Ljava/lang/String;

    move-result-object v5

    # setter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1102(Lnz/co/telecom/smartphone/fragments/FragTopUp;Ljava/lang/String;)Ljava/lang/String;

    .line 494
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->getMessage()Ljava/lang/String;

    move-result-object v5

    # setter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1302(Lnz/co/telecom/smartphone/fragments/FragTopUp;Ljava/lang/String;)Ljava/lang/String;

    .line 495
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 496
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v4, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " SUCCESS returnedMessage returnTitle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;
    invoke-static {v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1100(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_6
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 498
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v4, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " SUCCESS returnedMessage returnContent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;
    invoke-static {v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1300(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    .end local v1    # "tmt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;
    .end local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    :cond_7
    :goto_1
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-virtual {v4, v8}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    .line 523
    .end local v3    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :goto_2
    return-void

    .line 487
    .restart local v1    # "tmt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;
    .restart local v3    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_8
    :try_start_1
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    const/4 v5, 0x0

    # setter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->oneResult:I
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2002(Lnz/co/telecom/smartphone/fragments/FragTopUp;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 515
    .end local v1    # "tmt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;
    .end local v3    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v4, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FragTopup  error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 518
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    const v6, 0x7f0e00c5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1102(Lnz/co/telecom/smartphone/fragments/FragTopUp;Ljava/lang/String;)Ljava/lang/String;

    .line 519
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    const v6, 0x7f0e00c6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1302(Lnz/co/telecom/smartphone/fragments/FragTopUp;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 521
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-virtual {v4, v8}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    goto :goto_2

    .line 501
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_9
    :try_start_3
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    const/4 v5, 0x0

    # setter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->oneResult:I
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2002(Lnz/co/telecom/smartphone/fragments/FragTopUp;I)I

    .line 502
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnedMessage:Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1900(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 503
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 504
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v4, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR  returnedMessage.getMessages().getValues() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnedMessage:Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    invoke-static {v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1900(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    move-result-object v6

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_a
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnedMessage:Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1900(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    move-result-object v4

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;

    .line 506
    .restart local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->getTitle()Ljava/lang/String;

    move-result-object v5

    # setter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1102(Lnz/co/telecom/smartphone/fragments/FragTopUp;Ljava/lang/String;)Ljava/lang/String;

    .line 507
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->getMessage()Ljava/lang/String;

    move-result-object v5

    # setter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1302(Lnz/co/telecom/smartphone/fragments/FragTopUp;Ljava/lang/String;)Ljava/lang/String;

    .line 508
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 509
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v4, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ERROR returnedMessage returnTitle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;
    invoke-static {v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1100(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_b
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 511
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v4, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ERROR returnedMessage returnContent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;
    invoke-static {v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1300(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 521
    .end local v2    # "tvt":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    .end local v3    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->val$weakFrags:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-virtual {v5, v8}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    throw v4
.end method
