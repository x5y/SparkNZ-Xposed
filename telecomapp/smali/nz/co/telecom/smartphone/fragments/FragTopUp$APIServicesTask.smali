.class Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;
.super Landroid/os/AsyncTask;
.source "FragTopUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragTopUp;
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

.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x204

    .line 149
    aget-object v2, p1, v3

    check-cast v2, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    .line 151
    :try_start_0
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineExtendedCached:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v5, v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getLineExtendedDTO(Z)Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    move-result-object v2

    iput-object v2, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    :goto_1
    return-object v7

    :cond_0
    move v2, v3

    .line 151
    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iput-object v1, v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    .line 154
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getStatusCode()I

    move-result v2

    if-lez v2, :cond_1

    .line 155
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

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

    .line 156
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-virtual {v2, v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    goto :goto_1

    .line 158
    :cond_1
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

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

    .line 159
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-virtual {v2, v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    goto :goto_1

    .line 161
    .end local v1    # "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    :catch_1
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lorg/codehaus/jackson/JsonProcessingException;

    if-eqz v2, :cond_2

    .line 164
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

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

    .line 165
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iput-object v7, v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    .line 166
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-virtual {v2, v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    goto/16 :goto_1

    .line 168
    :cond_2
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

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

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    const/16 v3, 0x201

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    goto/16 :goto_1

    .line 173
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 144
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x1

    sput-boolean v0, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineExtendedCached:Z

    .line 184
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    const/16 v1, 0x202

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->createMessage(I)V

    .line 186
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 187
    return-void
.end method
