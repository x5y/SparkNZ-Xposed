.class Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;
.super Landroid/os/AsyncTask;
.source "FragPayBill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragPayBill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "APIServicesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 155
    const/4 v7, 0x0

    aget-object v7, p1, v7

    check-cast v7, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    iput-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    .line 157
    :try_start_0
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v7}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getUserCredentials()Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    move-result-object v5

    .line 159
    .local v5, "ucd":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v6, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "account_number"

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserAccountNumber()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    sget-boolean v7, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isAccountInfoCached:Z

    if-nez v7, :cond_7

    const/4 v7, 0x1

    :goto_0
    invoke-interface {v9, v7, v6}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getAccountInfoDTO(ZLjava/util/List;)Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    move-result-object v7

    iput-object v7, v8, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mAccountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    .line 166
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z
    invoke-static {v7}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$000(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 167
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mAccountInfoDTO "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    iget-object v9, v9, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mAccountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    iget-object v7, v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mAccountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    if-eqz v7, :cond_3

    .line 169
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z
    invoke-static {v7}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$000(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 170
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mAccountInfoDTO.getMessages "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    iget-object v9, v9, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mAccountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    invoke-virtual {v9}, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;->getMessages()Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z
    invoke-static {v7}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$000(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 173
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mAccountInfoDTO.getValues "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    iget-object v9, v9, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mAccountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    invoke-virtual {v9}, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_2
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z
    invoke-static {v7}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$000(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 176
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mAccountInfoDTO.getType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    iget-object v9, v9, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mAccountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    invoke-virtual {v9}, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_3
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    iget-object v7, v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mAccountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;->getType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ERROR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 204
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    const/4 v8, 0x0

    # setter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->oneResult:I
    invoke-static {v7, v8}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$102(Lnz/co/telecom/smartphone/fragments/FragPayBill;I)I

    .line 205
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    iget-object v7, v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mAccountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 206
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z
    invoke-static {v7}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$000(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 207
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR  mAccountInfoDTO.getMessages().getValues() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    iget-object v9, v9, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mAccountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    invoke-virtual {v9}, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_4
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    iget-object v7, v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mAccountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;->getValues()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;

    .line 211
    .local v2, "ccv":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->getTitle()Ljava/lang/String;

    move-result-object v8

    # setter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;
    invoke-static {v7, v8}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$202(Lnz/co/telecom/smartphone/fragments/FragPayBill;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->getMessage()Ljava/lang/String;

    move-result-object v8

    # setter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;
    invoke-static {v7, v8}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$302(Lnz/co/telecom/smartphone/fragments/FragPayBill;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z
    invoke-static {v7}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$000(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 214
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ERROR returnedMessage returnTitle "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;
    invoke-static {v9}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$200(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_5
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z
    invoke-static {v7}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$000(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 217
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ERROR returnedMessage returnContent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;
    invoke-static {v9}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$300(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 268
    .end local v2    # "ccv":Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
    .end local v5    # "ucd":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    .end local v6    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_6
    :goto_1
    const/4 v7, 0x0

    return-object v7

    .line 163
    .restart local v5    # "ucd":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    .restart local v6    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 221
    .end local v5    # "ucd":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    .end local v6    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v4

    .line 222
    .local v4, "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    iput-object v4, v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    .line 224
    invoke-virtual {v4}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getStatusCode()I

    move-result v7

    const/16 v8, 0x190

    if-ne v7, v8, :cond_8

    .line 225
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HttpServiceException (status code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v4}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getBadRequestResponseDTO()Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;

    move-result-object v0

    .line 230
    .local v0, "badRequestResponseDTO":Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;->getValues()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;

    .line 233
    .local v1, "badRequestResponseMessageDTO":Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;->getTitle()Ljava/lang/String;

    move-result-object v8

    # setter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;
    invoke-static {v7, v8}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$202(Lnz/co/telecom/smartphone/fragments/FragPayBill;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;->getMessage()Ljava/lang/String;

    move-result-object v8

    # setter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;
    invoke-static {v7, v8}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$302(Lnz/co/telecom/smartphone/fragments/FragPayBill;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .end local v0    # "badRequestResponseDTO":Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;
    .end local v1    # "badRequestResponseMessageDTO":Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;
    :goto_2
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    const/16 v8, 0x322

    invoke-virtual {v7, v8}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createMessage(I)V

    goto :goto_1

    .line 235
    :cond_8
    invoke-virtual {v4}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getStatusCode()I

    move-result v7

    if-lez v7, :cond_9

    .line 236
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HttpServiceException (status code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    sget-object v8, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    const v9, 0x7f0e00c5

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    # setter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;
    invoke-static {v7, v8}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$202(Lnz/co/telecom/smartphone/fragments/FragPayBill;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    sget-object v8, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    const v9, 0x7f0e00c6

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    # setter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;
    invoke-static {v7, v8}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$302(Lnz/co/telecom/smartphone/fragments/FragPayBill;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 243
    :cond_9
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HttpServiceException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    sget-object v8, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    const v9, 0x7f0e00c5

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    # setter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;
    invoke-static {v7, v8}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$202(Lnz/co/telecom/smartphone/fragments/FragPayBill;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    sget-object v8, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    const v9, 0x7f0e00c6

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    # setter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;
    invoke-static {v7, v8}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$302(Lnz/co/telecom/smartphone/fragments/FragPayBill;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 251
    .end local v4    # "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    :catch_1
    move-exception v3

    .line 252
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 253
    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Lorg/codehaus/jackson/JsonProcessingException;

    if-eqz v7, :cond_a

    .line 254
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "JsonProcessingException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    const/4 v8, 0x0

    iput-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    .line 257
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    const/16 v8, 0x204

    invoke-virtual {v7, v8}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createMessage(I)V

    goto/16 :goto_1

    .line 259
    :cond_a
    sget-object v7, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "run1  Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    iget-object v7, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    const/16 v8, 0x201

    invoke-virtual {v7, v8}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createMessage(I)V

    goto/16 :goto_1

    .line 265
    :cond_b
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 150
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 273
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mAccountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    if-eqz v0, :cond_0

    .line 274
    sput-boolean v2, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineExtendedCached:Z

    .line 276
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mAccountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    const/16 v1, 0x322

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createMessage(I)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    sput-boolean v2, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isAccountInfoCached:Z

    .line 280
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    const/16 v1, 0x323

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->createMessage(I)V

    goto :goto_0
.end method
