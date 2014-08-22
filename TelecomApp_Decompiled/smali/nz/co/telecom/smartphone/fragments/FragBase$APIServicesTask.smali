.class Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;
.super Landroid/os/AsyncTask;
.source "FragBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragBase;
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

.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragBase;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragBase;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

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

    .line 71
    aget-object v2, p1, v3

    check-cast v2, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    .line 73
    :try_start_0
    iget-object v4, p0, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineExtendedCached:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v5, v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getLineExtendedDTO(Z)Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    move-result-object v2

    iput-object v2, v4, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    :goto_1
    return-object v7

    :cond_0
    move v2, v3

    .line 73
    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    iput-object v1, v2, Lnz/co/telecom/smartphone/fragments/FragBase;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    .line 77
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getStatusCode()I

    move-result v2

    if-lez v2, :cond_1

    .line 78
    sget-object v2, Lnz/co/telecom/smartphone/fragments/FragBase;->TAG:Ljava/lang/String;

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

    .line 82
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    invoke-virtual {v2, v6}, Lnz/co/telecom/smartphone/fragments/FragBase;->createMessage(I)V

    goto :goto_1

    .line 84
    :cond_1
    sget-object v2, Lnz/co/telecom/smartphone/fragments/FragBase;->TAG:Ljava/lang/String;

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

    .line 85
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    invoke-virtual {v2, v6}, Lnz/co/telecom/smartphone/fragments/FragBase;->createMessage(I)V

    goto :goto_1

    .line 87
    .end local v1    # "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    :catch_1
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lorg/codehaus/jackson/JsonProcessingException;

    if-eqz v2, :cond_2

    .line 90
    sget-object v2, Lnz/co/telecom/smartphone/fragments/FragBase;->TAG:Ljava/lang/String;

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

    .line 92
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    iput-object v7, v2, Lnz/co/telecom/smartphone/fragments/FragBase;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    .line 93
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    invoke-virtual {v2, v6}, Lnz/co/telecom/smartphone/fragments/FragBase;->createMessage(I)V

    goto/16 :goto_1

    .line 95
    :cond_2
    sget-object v2, Lnz/co/telecom/smartphone/fragments/FragBase;->TAG:Ljava/lang/String;

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

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    const/16 v3, 0x201

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/fragments/FragBase;->createMessage(I)V

    goto/16 :goto_1

    .line 101
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    iget-object v1, v1, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    if-eqz v1, :cond_0

    .line 111
    const/4 v1, 0x1

    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineExtendedCached:Z

    .line 112
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    const/16 v2, 0x202

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/fragments/FragBase;->createMessage(I)V

    .line 115
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/fragments/FragBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    .line 117
    .local v0, "and":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    iget-object v1, v1, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->isPrePaid()Z

    move-result v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->isPostPaid()Z

    move-result v2

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/FragBase$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    iget-object v3, v3, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getBillPaymentAvailable()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->refreshNavigationMenu(ZZZ)V

    .line 123
    .end local v0    # "and":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 124
    return-void
.end method
