.class public Lnz/co/telecom/smartphone/controller/AlertsAndNotificationsController;
.super Lnz/co/telecom/smartphone/controller/BaseController;
.source "AlertsAndNotificationsController.java"

# interfaces
.implements Lnz/co/telecom/smartphone/controller/AlertsAndNotificationsControllerInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alertsAndNotificationsService:Lnz/co/telecom/smartphone/service/AlertsAndNotificationsServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lnz/co/telecom/smartphone/controller/AlertsAndNotificationsController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/controller/AlertsAndNotificationsController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lnz/co/telecom/smartphone/controller/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlertsAndNotificationsDTO()Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 27
    .local v1, "result":Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;
    :try_start_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/controller/AlertsAndNotificationsController;->alertsAndNotificationsService:Lnz/co/telecom/smartphone/service/AlertsAndNotificationsServiceInterface;

    const-string v3, "ENDPOINT_ACCESS_ALERTS_AND_NOTIFICATIONS"

    invoke-static {v3}, Lnz/co/telecom/smartphone/Profile;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lnz/co/telecom/smartphone/service/AlertsAndNotificationsServiceInterface;->getAlertsAndNotificationsDTO(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 32
    return-object v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Lnz/co/telecom/smartphone/service/HttpServiceException;
    sget-object v2, Lnz/co/telecom/smartphone/controller/AlertsAndNotificationsController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    throw v0
.end method

.method public getAlertsUpdateResults(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const/4 v1, 0x0

    .line 39
    .local v1, "result":Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;
    :try_start_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/controller/AlertsAndNotificationsController;->alertsAndNotificationsService:Lnz/co/telecom/smartphone/service/AlertsAndNotificationsServiceInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ENDPOINT_ACCESS_ALERTS_AND_NOTIFICATIONS_UPDATE"

    invoke-static {v4}, Lnz/co/telecom/smartphone/Profile;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lnz/co/telecom/smartphone/service/AlertsAndNotificationsServiceInterface;->getAlertsUpdateDTO(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 44
    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lnz/co/telecom/smartphone/service/HttpServiceException;
    sget-object v2, Lnz/co/telecom/smartphone/controller/AlertsAndNotificationsController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    throw v0
.end method
