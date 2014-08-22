.class public interface abstract Lnz/co/telecom/smartphone/controller/AlertsAndNotificationsControllerInterface;
.super Ljava/lang/Object;
.source "AlertsAndNotificationsControllerInterface.java"


# virtual methods
.method public abstract getAlertsAndNotificationsDTO()Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getAlertsUpdateResults(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;
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
.end method
