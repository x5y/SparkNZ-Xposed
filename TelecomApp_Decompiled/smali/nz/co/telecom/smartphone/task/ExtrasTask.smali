.class public Lnz/co/telecom/smartphone/task/ExtrasTask;
.super Landroid/os/AsyncTask;
.source "ExtrasTask.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private action:Ljava/lang/Object;

.field private adapterPlanExtra:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;

.field private debug:Z

.field protected extrasController:Lnz/co/telecom/smartphone/controller/ExtrasControllerInterface;

.field private mContext:Landroid/content/Context;

.field private result:I

.field private returnContent:Ljava/lang/String;

.field private returnTitle:Ljava/lang/String;

.field private returnedMessage:Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lnz/co/telecom/smartphone/task/ExtrasTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/task/ExtrasTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->debug:Z

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->result:I

    .line 27
    iput-object v1, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->returnedMessage:Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;

    .line 28
    iput-object v1, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->returnTitle:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->returnContent:Ljava/lang/String;

    return-void
.end method

.method private parseServerResponse()I
    .locals 10

    .prologue
    const v9, 0x7f0e00c6

    const v8, 0x7f0e00c5

    .line 51
    :try_start_0
    iget-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v5

    const-class v6, Lnz/co/telecom/smartphone/controller/ExtrasControllerInterface;

    invoke-interface {v5, v6}, Lroboguice/inject/RoboInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/telecom/smartphone/controller/ExtrasControllerInterface;

    iput-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->extrasController:Lnz/co/telecom/smartphone/controller/ExtrasControllerInterface;

    .line 53
    iget-boolean v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->debug:Z

    if-eqz v5, :cond_0

    .line 54
    sget-object v5, Lnz/co/telecom/smartphone/task/ExtrasTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " returnedMessage extrasController "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->extrasController:Lnz/co/telecom/smartphone/controller/ExtrasControllerInterface;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    const/4 v2, 0x0

    .line 58
    .local v2, "href":Ljava/lang/String;
    iget-boolean v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->debug:Z

    if-eqz v5, :cond_2

    .line 59
    iget-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->action:Ljava/lang/Object;

    instance-of v5, v5, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;

    if-eqz v5, :cond_7

    .line 60
    iget-object v3, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->action:Ljava/lang/Object;

    check-cast v3, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;

    .line 62
    .local v3, "lineProductActionDTO":Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;
    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->getHref()Ljava/lang/String;

    move-result-object v2

    .line 68
    .end local v3    # "lineProductActionDTO":Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;
    :cond_1
    :goto_0
    sget-object v5, Lnz/co/telecom/smartphone/task/ExtrasTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " returnedMessage .getHref() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_2
    iget-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->extrasController:Lnz/co/telecom/smartphone/controller/ExtrasControllerInterface;

    invoke-interface {v5, v2}, Lnz/co/telecom/smartphone/controller/ExtrasControllerInterface;->getExtrasUpdateDTO(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;

    move-result-object v5

    iput-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->returnedMessage:Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;

    .line 72
    iget-boolean v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->debug:Z

    if-eqz v5, :cond_3

    .line 73
    sget-object v5, Lnz/co/telecom/smartphone/task/ExtrasTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " returnedMessage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->returnedMessage:Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_3
    iget-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->returnedMessage:Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;

    if-eqz v5, :cond_6

    .line 75
    iget-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->returnedMessage:Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;

    iget-object v5, v5, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->type:Ljava/lang/String;

    const-string v6, "SUCCESS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 76
    const/4 v5, 0x1

    iput v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->result:I

    .line 78
    :cond_4
    iget-boolean v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->debug:Z

    if-eqz v5, :cond_5

    .line 79
    sget-object v5, Lnz/co/telecom/smartphone/task/ExtrasTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " returnedMessage.values "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->returnedMessage:Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->getValues()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_5
    iget-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->returnedMessage:Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->getValues()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->returnedMessage:Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 83
    iget-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->returnedMessage:Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->getValues()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateValuesDTO;

    .line 85
    .local v4, "oneVal":Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateValuesDTO;
    iget-object v5, v4, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateValuesDTO;->title:Ljava/lang/String;

    iput-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->returnTitle:Ljava/lang/String;

    .line 86
    iget-object v5, v4, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateValuesDTO;->message:Ljava/lang/String;

    iput-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->returnContent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v2    # "href":Ljava/lang/String;
    .end local v4    # "oneVal":Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateValuesDTO;
    :cond_6
    :goto_1
    iget v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->result:I

    return v5

    .line 63
    .restart local v2    # "href":Ljava/lang/String;
    :cond_7
    :try_start_1
    iget-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->action:Ljava/lang/Object;

    instance-of v5, v5, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;

    if-eqz v5, :cond_1

    .line 64
    iget-object v0, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->action:Ljava/lang/Object;

    check-cast v0, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;

    .line 65
    .local v0, "actionLinkDTO":Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;->get_links()Lnz/co/telecom/smartphone/dto/hal/LinkDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/hal/LinkDTO;->getSelf()Lnz/co/telecom/smartphone/dto/hal/SelfDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/hal/SelfDTO;->getHref()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 88
    .end local v0    # "actionLinkDTO":Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;
    :cond_8
    iget-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->mContext:Landroid/content/Context;

    const v6, 0x7f0e00c5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->returnTitle:Ljava/lang/String;

    .line 89
    iget-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->mContext:Landroid/content/Context;

    const v6, 0x7f0e00c6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->returnContent:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 92
    .end local v2    # "href":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lnz/co/telecom/smartphone/task/ExtrasTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    iget-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->returnTitle:Ljava/lang/String;

    .line 96
    iget-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->returnContent:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 34
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->mContext:Landroid/content/Context;

    .line 35
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;

    iput-object v0, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->adapterPlanExtra:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;

    .line 37
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->debug:Z

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lnz/co/telecom/smartphone/task/ExtrasTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->action:Ljava/lang/Object;

    .line 42
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->debug:Z

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Lnz/co/telecom/smartphone/task/ExtrasTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->action:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_1
    invoke-direct {p0}, Lnz/co/telecom/smartphone/task/ExtrasTask;->parseServerResponse()I

    move-result v0

    iput v0, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->result:I

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 104
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 105
    iget-boolean v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->debug:Z

    if-eqz v5, :cond_0

    .line 106
    sget-object v5, Lnz/co/telecom/smartphone/task/ExtrasTask;->TAG:Ljava/lang/String;

    const-string v6, "ExtraTask post "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->action:Ljava/lang/Object;

    instance-of v5, v5, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;

    if-eqz v5, :cond_4

    .line 110
    iget-object v1, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->action:Ljava/lang/Object;

    check-cast v1, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;

    .line 112
    .local v1, "lineProductActionDTO":Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;
    iget v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->result:I

    if-ne v3, v5, :cond_3

    :goto_0
    invoke-virtual {v1, v3}, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->setDisabled(Z)V

    .line 119
    .end local v1    # "lineProductActionDTO":Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;
    :cond_1
    :goto_1
    iget-object v3, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->adapterPlanExtra:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->notifyDataSetChanged()V

    .line 121
    new-instance v2, Landroid/content/Intent;

    const-string v3, "EXTRA_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v2, "messageIntent":Landroid/content/Intent;
    const-string v3, "EXTRA_RESULTS"

    iget v4, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->result:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const-string v3, "ActivitySlidingMain_TITLE"

    iget-object v4, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->returnTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v3, "ActivitySlidingMain_TYPE_CONTENT"

    iget-object v4, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->returnContent:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v3, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 127
    iget-boolean v3, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->debug:Z

    if-eqz v3, :cond_2

    .line 128
    sget-object v3, Lnz/co/telecom/smartphone/task/ExtrasTask;->TAG:Ljava/lang/String;

    const-string v4, "ExtraTask post "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_2
    return-void

    .end local v2    # "messageIntent":Landroid/content/Intent;
    .restart local v1    # "lineProductActionDTO":Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;
    :cond_3
    move v3, v4

    .line 112
    goto :goto_0

    .line 114
    .end local v1    # "lineProductActionDTO":Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;
    :cond_4
    iget-object v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->action:Ljava/lang/Object;

    instance-of v5, v5, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;

    if-eqz v5, :cond_1

    .line 115
    iget-object v0, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->action:Ljava/lang/Object;

    check-cast v0, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;

    .line 116
    .local v0, "actionLinkDTO":Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;
    iget v5, p0, Lnz/co/telecom/smartphone/task/ExtrasTask;->result:I

    if-ne v3, v5, :cond_5

    :goto_2
    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;->setDisabled(Z)V

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2
.end method
