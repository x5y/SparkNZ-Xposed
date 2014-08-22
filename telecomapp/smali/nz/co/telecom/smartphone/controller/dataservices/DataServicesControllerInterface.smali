.class public interface abstract Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;
.super Ljava/lang/Object;
.source "DataServicesControllerInterface.java"


# virtual methods
.method public abstract clearCache()V
.end method

.method public abstract getAccountInfoDTO(Ljava/util/List;)Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;
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
.end method

.method public abstract getAccountInfoDTO(ZLjava/util/List;)Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;
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
.end method

.method public abstract getAlertsAndNotificationsDTO()Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;
.end method

.method public abstract getAlertsAndNotificationsDTO(Z)Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getConfigProfileDTO(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getExtrasCatalogueDTO()Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
.end method

.method public abstract getExtrasCatalogueDTO(Z)Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getLineExtendedDTO()Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
.end method

.method public abstract getLineExtendedDTO(Z)Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getLineProductsDTO()Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;
.end method

.method public abstract getLineProductsDTO(Z)Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getMyAccountDTO()Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;
.end method

.method public abstract getMyAccountDTO(Z)Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getOrdersListDTO()Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;
.end method

.method public abstract getOrdersListDTO(Z)Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRecentActivityDTO()Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;
.end method

.method public abstract getRecentActivityDTO(Z)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRecentActivityOptionState()Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;
.end method

.method public abstract getUserCredentials()Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
.end method

.method public abstract setRecentActivityOptionState(Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;)V
.end method

.method public abstract storeUserCredentials(Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;)V
.end method
