.class public Lnz/co/telecom/smartphone/service/AlertsAndNotificationsService;
.super Lnz/co/telecom/smartphone/service/RestfulClient;
.source "AlertsAndNotificationsService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/AlertsAndNotificationsServiceInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field static sContextProvider:Lcom/google/inject/Provider;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lnz/co/telecom/smartphone/service/RestfulClient;-><init>()V

    .line 24
    sget-object v0, Lnz/co/telecom/smartphone/service/AlertsAndNotificationsService;->sContextProvider:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lnz/co/telecom/smartphone/service/AlertsAndNotificationsService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAlertsAndNotificationsDTO(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 28
    const-class v0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    invoke-virtual {p0, v0, p1}, Lnz/co/telecom/smartphone/service/AlertsAndNotificationsService;->getEntity(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;

    return-object v0
.end method

.method public getAlertsUpdateDTO(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
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

    .prologue
    .line 32
    .local p2, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const-class v0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;

    invoke-virtual {p0, v0, p1, p2}, Lnz/co/telecom/smartphone/service/AlertsAndNotificationsService;->getEntityForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;

    return-object v0
.end method
