.class public interface abstract Lnz/co/telecom/smartphone/service/AlertsAndNotificationsServiceInterface;
.super Ljava/lang/Object;
.source "AlertsAndNotificationsServiceInterface.java"


# virtual methods
.method public abstract getAlertsAndNotificationsDTO(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation
.end method

.method public abstract getAlertsUpdateDTO(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;
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
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation
.end method
