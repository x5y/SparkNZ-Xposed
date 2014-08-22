.class Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;
.super Landroid/os/AsyncTask;
.source "FragBuyExtraComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;
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
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/16 v7, 0x204

    const/4 v4, 0x0

    .line 102
    aget-object v2, p1, v4

    check-cast v2, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    .line 104
    :try_start_0
    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    # getter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->s_isLineExtendedCached:Z
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$100()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-interface {v6, v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getLineExtendedDTO(Z)Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    move-result-object v2

    # setter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
    invoke-static {v5, v2}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$002(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;)Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    .line 105
    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    # getter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->s_isExtrasCatalogueCached:Z
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$300()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-interface {v6, v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getExtrasCatalogueDTO(Z)Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    move-result-object v2

    # setter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
    invoke-static {v5, v2}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$202(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;)Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :goto_2
    return-object v8

    :cond_0
    move v2, v4

    .line 104
    goto :goto_0

    :cond_1
    move v2, v4

    .line 105
    goto :goto_1

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    # setter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;
    invoke-static {v2, v1}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$402(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;Lnz/co/telecom/smartphone/service/HttpServiceException;)Lnz/co/telecom/smartphone/service/HttpServiceException;

    .line 108
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getStatusCode()I

    move-result v2

    if-lez v2, :cond_2

    .line 109
    # getter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HttpServiceException (status code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    # invokes: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->createMessage(I)V
    invoke-static {v2, v7}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$600(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;I)V

    goto :goto_2

    .line 112
    :cond_2
    # getter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HttpServiceException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    # invokes: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->createMessage(I)V
    invoke-static {v2, v7}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$700(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;I)V

    goto :goto_2

    .line 115
    .end local v1    # "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    :catch_1
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lorg/codehaus/jackson/JsonProcessingException;

    if-eqz v2, :cond_3

    .line 118
    # getter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JsonProcessingException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    # setter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;
    invoke-static {v2, v8}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$802(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;Lnz/co/telecom/smartphone/service/HttpServiceException;)Lnz/co/telecom/smartphone/service/HttpServiceException;

    .line 120
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    # invokes: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->createMessage(I)V
    invoke-static {v2, v7}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$900(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;I)V

    goto/16 :goto_2

    .line 122
    :cond_3
    # getter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run1  Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    const/16 v3, 0x201

    # invokes: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->createMessage(I)V
    invoke-static {v2, v3}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$1000(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;I)V

    goto/16 :goto_2

    .line 127
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 97
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 136
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    # getter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$1100(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    # getter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$1200(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    # setter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->s_isLineExtendedCached:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$1302(Z)Z

    .line 138
    # setter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->s_isExtrasCatalogueCached:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$1402(Z)Z

    .line 139
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    const/16 v1, 0x202

    # invokes: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->createMessage(I)V
    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$1500(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;I)V

    .line 141
    :cond_0
    return-void
.end method
