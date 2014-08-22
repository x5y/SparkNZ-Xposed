.class public Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataService;
.super Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;
.source "AlertsAndNotificationsDataService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataServiceInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# instance fields
.field private alertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlertsAndNotificationsDTO()Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;
    .locals 3

    .prologue
    .line 42
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataService;->alertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataService;->alertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataService;->alertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    .line 54
    :goto_0
    return-object v1

    .line 46
    :cond_0
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;

    .line 48
    .local v0, "entity":Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;->timestamp:Ljava/util/Date;

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;->objectAsBytes:[B

    if-nez v1, :cond_2

    .line 49
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;->objectAsBytes:[B

    invoke-super {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;->byteArrayToObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataService;->alertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    .line 54
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataService;->alertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    goto :goto_0
.end method

.method public getAlertsAndNotificationsDTO(Z)Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;
    .locals 3
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;

    .line 22
    .local v0, "entity":Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;->timestamp:Ljava/util/Date;

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;->objectAsBytes:[B

    if-nez v1, :cond_1

    .line 23
    :cond_0
    new-instance v1, Lcom/activeandroid/query/Delete;

    invoke-direct {v1}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 25
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataService;->mAlertsAndNotificationsController:Lnz/co/telecom/smartphone/controller/AlertsAndNotificationsControllerInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/controller/AlertsAndNotificationsControllerInterface;->getAlertsAndNotificationsDTO()Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataService;->alertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    .line 26
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataService;->alertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;->setTimestamp(Ljava/util/Date;)V

    .line 28
    new-instance v0, Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;

    .end local v0    # "entity":Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;
    invoke-direct {v0}, Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;-><init>()V

    .line 29
    .restart local v0    # "entity":Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;->timestamp:Ljava/util/Date;

    .line 30
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataService;->alertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    invoke-super {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;->objectToByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, v0, Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;->objectAsBytes:[B

    .line 31
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;->save()V

    .line 36
    :goto_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataService;->alertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    return-object v1

    .line 33
    :cond_1
    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/alertsandnotifications/AlertsAndNotificationsEntity;->objectAsBytes:[B

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataService;->byteArrayToObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataService;->alertsAndNotificationsDTO:Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    goto :goto_0
.end method
