.class public Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;
.super Ljava/lang/Object;
.source "DataServicesController.java"

# interfaces
.implements Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# instance fields
.field private accountInfoService:Lnz/co/telecom/smartphone/service/dataservices/AccountInfoServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field alertsAndNotificationsDataServiceInterface:Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private configProfileService:Lnz/co/telecom/smartphone/service/dataservices/ConfigProfileServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private extrasCatalogueService:Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private lineExtendedService:Lnz/co/telecom/smartphone/service/dataservices/LineExtendedServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private lineProductService:Lnz/co/telecom/smartphone/service/dataservices/LineProductServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private myAccountDataService:Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private ordersListService:Lnz/co/telecom/smartphone/service/dataservices/OrdersListServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private recentActivityDataService:Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private userCredentialsService:Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 82
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 83
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 84
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 88
    :try_start_0
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAccountInfoDTO(Ljava/util/List;)Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "urlParameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->accountInfoService:Lnz/co/telecom/smartphone/service/dataservices/AccountInfoServiceInterface;

    invoke-interface {v0, p1}, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoServiceInterface;->getAccountInfoDTO(Ljava/util/List;)Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    move-result-object v0

    return-object v0
.end method

.method public getAccountInfoDTO(ZLjava/util/List;)Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "urlParameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->accountInfoService:Lnz/co/telecom/smartphone/service/dataservices/AccountInfoServiceInterface;

    invoke-interface {v0, p1, p2}, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoServiceInterface;->getAccountInfoDTO(ZLjava/util/List;)Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    move-result-object v0

    return-object v0
.end method

.method public getAlertsAndNotificationsDTO()Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->alertsAndNotificationsDataServiceInterface:Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataServiceInterface;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataServiceInterface;->getAlertsAndNotificationsDTO()Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    move-result-object v0

    return-object v0
.end method

.method public getAlertsAndNotificationsDTO(Z)Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->alertsAndNotificationsDataServiceInterface:Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataServiceInterface;

    invoke-interface {v0, p1}, Lnz/co/telecom/smartphone/service/dataservices/AlertsAndNotificationsDataServiceInterface;->getAlertsAndNotificationsDTO(Z)Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    move-result-object v0

    return-object v0
.end method

.method public getConfigProfileDTO(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .param p2, "app"    # Ljava/lang/String;
    .param p3, "app_version"    # Ljava/lang/String;
    .param p4, "os_version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->configProfileService:Lnz/co/telecom/smartphone/service/dataservices/ConfigProfileServiceInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lnz/co/telecom/smartphone/service/dataservices/ConfigProfileServiceInterface;->getConfigProfileDTO(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;

    move-result-object v0

    return-object v0
.end method

.method public getExtrasCatalogueDTO()Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->extrasCatalogueService:Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueServiceInterface;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueServiceInterface;->getExtrasCatalogueDTO()Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    move-result-object v0

    return-object v0
.end method

.method public getExtrasCatalogueDTO(Z)Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->extrasCatalogueService:Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueServiceInterface;

    invoke-interface {v0, p1}, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueServiceInterface;->getExtrasCatalogueDTO(Z)Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    move-result-object v0

    return-object v0
.end method

.method public getLineExtendedDTO()Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->lineExtendedService:Lnz/co/telecom/smartphone/service/dataservices/LineExtendedServiceInterface;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedServiceInterface;->getLineExtendedDTO()Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    move-result-object v0

    return-object v0
.end method

.method public getLineExtendedDTO(Z)Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->lineExtendedService:Lnz/co/telecom/smartphone/service/dataservices/LineExtendedServiceInterface;

    invoke-interface {v0, p1}, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedServiceInterface;->getLineExtendedDTO(Z)Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    move-result-object v0

    return-object v0
.end method

.method public getLineProductsDTO()Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->lineProductService:Lnz/co/telecom/smartphone/service/dataservices/LineProductServiceInterface;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/service/dataservices/LineProductServiceInterface;->getLineProductsDTO()Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    move-result-object v0

    return-object v0
.end method

.method public getLineProductsDTO(Z)Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->lineProductService:Lnz/co/telecom/smartphone/service/dataservices/LineProductServiceInterface;

    invoke-interface {v0, p1}, Lnz/co/telecom/smartphone/service/dataservices/LineProductServiceInterface;->getLineProductsDTO(Z)Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    move-result-object v0

    return-object v0
.end method

.method public getMyAccountDTO()Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->myAccountDataService:Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataServiceInterface;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataServiceInterface;->getMyAccountDTO()Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    move-result-object v0

    return-object v0
.end method

.method public getMyAccountDTO(Z)Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->myAccountDataService:Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataServiceInterface;

    invoke-interface {v0, p1}, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataServiceInterface;->getMyAccountDTO(Z)Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    move-result-object v0

    return-object v0
.end method

.method public getOrdersListDTO()Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->ordersListService:Lnz/co/telecom/smartphone/service/dataservices/OrdersListServiceInterface;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/service/dataservices/OrdersListServiceInterface;->getOrdersListDTO()Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    move-result-object v0

    return-object v0
.end method

.method public getOrdersListDTO(Z)Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->ordersListService:Lnz/co/telecom/smartphone/service/dataservices/OrdersListServiceInterface;

    invoke-interface {v0, p1}, Lnz/co/telecom/smartphone/service/dataservices/OrdersListServiceInterface;->getOrdersListDTO(Z)Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    move-result-object v0

    return-object v0
.end method

.method public getRecentActivityDTO()Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->recentActivityDataService:Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataServiceInterface;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataServiceInterface;->getRecentActivityDTO()Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    move-result-object v0

    return-object v0
.end method

.method public getRecentActivityDTO(Z)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->recentActivityDataService:Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataServiceInterface;

    invoke-interface {v0, p1}, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataServiceInterface;->getRecentActivityDTO(Z)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    move-result-object v0

    return-object v0
.end method

.method public getRecentActivityOptionState()Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->recentActivityDataService:Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataServiceInterface;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataServiceInterface;->getRecentActivityOptionState()Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;

    move-result-object v0

    return-object v0
.end method

.method public getUserCredentials()Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->userCredentialsService:Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsServiceInterface;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsServiceInterface;->getUserCredentials()Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    move-result-object v0

    return-object v0
.end method

.method public setRecentActivityOptionState(Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;)V
    .locals 1
    .param p1, "optionState"    # Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;

    .prologue
    .line 166
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->recentActivityDataService:Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataServiceInterface;

    invoke-interface {v0, p1}, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataServiceInterface;->setRecentActivityOptionState(Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;)V

    .line 167
    return-void
.end method

.method public storeUserCredentials(Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;)V
    .locals 1
    .param p1, "userCredentialsDTO"    # Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    .prologue
    .line 129
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->userCredentialsService:Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsServiceInterface;

    invoke-interface {v0, p1}, Lnz/co/telecom/smartphone/service/dataservices/UserCredentialsServiceInterface;->storeUserCredentials(Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;)V

    .line 130
    return-void
.end method
