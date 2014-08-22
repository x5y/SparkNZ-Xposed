.class Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;
.super Landroid/os/AsyncTask;
.source "FragViewActivityPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;
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

.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

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

    .line 127
    aget-object v2, p1, v4

    check-cast v2, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    iput-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    .line 129
    :try_start_0
    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineExtendedCached:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-interface {v6, v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getLineExtendedDTO(Z)Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    move-result-object v2

    iput-object v2, v5, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    .line 131
    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v6, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    sget-boolean v2, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isRecentActivityCached:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-interface {v6, v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getRecentActivityDTO(Z)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    move-result-object v2

    iput-object v2, v5, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    :goto_2
    return-object v8

    :cond_0
    move v2, v4

    .line 129
    goto :goto_0

    :cond_1
    move v2, v4

    .line 131
    goto :goto_1

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iput-object v1, v2, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    .line 135
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getStatusCode()I

    move-result v2

    if-lez v2, :cond_2

    .line 136
    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$000()Ljava/lang/String;

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

    .line 138
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    invoke-virtual {v2, v7}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->createMessage(I)V

    goto :goto_2

    .line 140
    :cond_2
    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$000()Ljava/lang/String;

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

    .line 141
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    invoke-virtual {v2, v7}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->createMessage(I)V

    goto :goto_2

    .line 143
    .end local v1    # "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lorg/codehaus/jackson/JsonProcessingException;

    if-eqz v2, :cond_3

    .line 146
    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$000()Ljava/lang/String;

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

    .line 148
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iput-object v8, v2, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    .line 149
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    invoke-virtual {v2, v7}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->createMessage(I)V

    goto/16 :goto_2

    .line 151
    :cond_3
    # getter for: Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->access$000()Ljava/lang/String;

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

    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    const/16 v3, 0x201

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->createMessage(I)V

    goto/16 :goto_2

    .line 157
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 122
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 165
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->mRecentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    if-eqz v0, :cond_0

    .line 166
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isLineExtendedCached:Z

    .line 167
    sput-boolean v1, Lnz/co/telecom/smartphone/fragments/FragBase;->s_isRecentActivityCached:Z

    .line 168
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager$APIServicesTask;->this$0:Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;

    const/16 v1, 0x202

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragViewActivityPager;->createMessage(I)V

    .line 170
    :cond_0
    return-void
.end method
