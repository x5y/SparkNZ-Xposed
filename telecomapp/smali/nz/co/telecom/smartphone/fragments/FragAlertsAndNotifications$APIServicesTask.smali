.class Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;
.super Landroid/os/AsyncTask;
.source "FragAlertsAndNotifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;
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

.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

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

    .line 87
    aget-object v2, p1, v4

    check-cast v2, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    .line 90
    :try_start_0
    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineExtendedCached:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-interface {v6, v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getLineExtendedDTO(Z)Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    move-result-object v2

    iput-object v2, v5, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    .line 91
    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isAlertsAndNotificationsCached:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-interface {v6, v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getAlertsAndNotificationsDTO(Z)Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    move-result-object v2

    iput-object v2, v5, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->mAlertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :goto_2
    return-object v8

    :cond_0
    move v2, v4

    .line 90
    goto :goto_0

    :cond_1
    move v2, v4

    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    iput-object v1, v2, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    .line 94
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getStatusCode()I

    move-result v2

    if-lez v2, :cond_2

    .line 95
    # getter for: Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->access$000()Ljava/lang/String;

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

    .line 96
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    invoke-virtual {v2, v7}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->createMessage(I)V

    goto :goto_2

    .line 98
    :cond_2
    # getter for: Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->access$000()Ljava/lang/String;

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

    .line 99
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    invoke-virtual {v2, v7}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->createMessage(I)V

    goto :goto_2

    .line 101
    .end local v1    # "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    :catch_1
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lorg/codehaus/jackson/JsonProcessingException;

    if-eqz v2, :cond_3

    .line 104
    # getter for: Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->access$000()Ljava/lang/String;

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

    .line 105
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    iput-object v8, v2, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    .line 106
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    invoke-virtual {v2, v7}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->createMessage(I)V

    goto/16 :goto_2

    .line 108
    :cond_3
    # getter for: Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->access$000()Ljava/lang/String;

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

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    const/16 v3, 0x201

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->createMessage(I)V

    goto/16 :goto_2

    .line 113
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 121
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->mAlertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    if-eqz v0, :cond_0

    .line 122
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineExtendedCached:Z

    .line 123
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isAlertsAndNotificationsCached:Z

    .line 124
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;

    const/16 v1, 0x202

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragAlertsAndNotifications;->createMessage(I)V

    .line 126
    :cond_0
    return-void
.end method
