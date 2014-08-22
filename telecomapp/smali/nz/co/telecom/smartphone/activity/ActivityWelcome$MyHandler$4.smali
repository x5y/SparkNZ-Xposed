.class Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;
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
    .line 436
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler;

    iput-object p2, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x208

    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, "apiBaseUrl":Z
    const/4 v1, 0x0

    .line 442
    .local v1, "apiForceUpdate":Z
    :try_start_0
    const-string v2, ""
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 445
    .local v2, "app_version":Ljava/lang/String;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    invoke-virtual {v8}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$500(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 452
    :goto_0
    :try_start_2
    iget-object v7, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    iget-object v8, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    iget-object v8, v8, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    const/4 v9, 0x0

    iget-object v10, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    const v11, 0x7f0e0015

    invoke-virtual {v10, v11}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v9, v10, v2, v11}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getConfigProfileDTO(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;

    move-result-object v8

    iput-object v8, v7, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mConfigProfileDTO:Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;

    .line 453
    iget-object v7, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    iget-object v7, v7, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mConfigProfileDTO:Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;->getSettings()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileSettingsDTO;

    .line 454
    .local v6, "setting":Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileSettingsDTO;
    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileSettingsDTO;->getKey()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    const v9, 0x7f0e0012

    invoke-virtual {v8, v9}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 455
    const/4 v0, 0x1

    .line 456
    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileSettingsDTO;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnz/co/telecom/smartphone/Profile;->createProfile(Ljava/lang/String;)V
    :try_end_2
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 475
    .end local v2    # "app_version":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "setting":Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileSettingsDTO;
    :catch_0
    move-exception v4

    .line 476
    .local v4, "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    invoke-virtual {v4}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getStatusCode()I

    move-result v7

    if-lez v7, :cond_6

    .line 477
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$1000()Ljava/lang/String;

    move-result-object v7

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

    .line 478
    iget-object v7, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V
    invoke-static {v7, v13}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$000(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V

    .line 497
    .end local v4    # "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    :goto_2
    return-void

    .line 457
    .restart local v2    # "app_version":Ljava/lang/String;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "setting":Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileSettingsDTO;
    :cond_1
    :try_start_3
    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileSettingsDTO;->getKey()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    const v9, 0x7f0e00fa

    invoke-virtual {v8, v9}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 458
    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileSettingsDTO;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "T"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileSettingsDTO;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "t"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 459
    :cond_2
    const/4 v1, 0x1

    .line 460
    iget-object v7, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    const/16 v8, 0x206

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V
    invoke-static {v7, v8}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$000(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V
    :try_end_3
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 483
    .end local v2    # "app_version":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "setting":Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileSettingsDTO;
    :catch_1
    move-exception v3

    .line 484
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 485
    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Lorg/codehaus/jackson/JsonProcessingException;

    if-eqz v7, :cond_7

    .line 486
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$1000()Ljava/lang/String;

    move-result-object v7

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

    .line 487
    iget-object v7, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V
    invoke-static {v7, v13}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$000(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V

    goto :goto_2

    .line 464
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "app_version":Ljava/lang/String;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    if-nez v0, :cond_4

    .line 465
    :try_start_4
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$1000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "No API_BASE_URL"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v7, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    const/16 v8, 0x208

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V
    invoke-static {v7, v8}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$000(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V

    goto :goto_2

    .line 467
    :cond_4
    if-nez v1, :cond_5

    .line 471
    iget-object v7, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->processUserRegistration()V
    invoke-static {v7}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$1100(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V

    goto/16 :goto_2

    .line 473
    :cond_5
    iget-object v7, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    const/16 v8, 0x205

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V
    invoke-static {v7, v8}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$000(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V
    :try_end_4
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 480
    .end local v2    # "app_version":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .restart local v4    # "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    :cond_6
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$1000()Ljava/lang/String;

    move-result-object v7

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

    .line 481
    iget-object v7, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    const/16 v8, 0x207

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V
    invoke-static {v7, v8}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$000(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V

    goto/16 :goto_2

    .line 489
    .end local v4    # "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_7
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$1000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

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

    .line 490
    iget-object v7, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V
    invoke-static {v7, v13}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$000(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V

    goto/16 :goto_2

    .line 493
    :cond_8
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$1000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v7, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->val$activity:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V
    invoke-static {v7, v13}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$000(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V

    goto/16 :goto_2

    .line 446
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "app_version":Ljava/lang/String;
    :catch_2
    move-exception v7

    goto/16 :goto_0
.end method
