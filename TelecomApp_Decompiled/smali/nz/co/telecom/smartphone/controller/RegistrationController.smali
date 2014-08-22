.class public Lnz/co/telecom/smartphone/controller/RegistrationController;
.super Lnz/co/telecom/smartphone/controller/BaseController;
.source "RegistrationController.java"

# interfaces
.implements Lnz/co/telecom/smartphone/controller/RegistrationControllerInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mNetworkUtils:Lnz/co/telecom/smartphone/util/NetworkUtils;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private registrationService:Lnz/co/telecom/smartphone/service/RegistrationServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lnz/co/telecom/smartphone/controller/RegistrationController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/controller/RegistrationController;->TAG:Ljava/lang/String;

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
.method public createTokenSession(Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const/4 v2, 0x0

    .line 31
    .local v2, "registrationDTO":Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    :try_start_0
    const-string v3, "ENDPOINT_ACCESS_CREATE"

    invoke-static {v3}, Lnz/co/telecom/smartphone/Profile;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "actionUrl":Ljava/lang/String;
    iget-object v3, p0, Lnz/co/telecom/smartphone/controller/RegistrationController;->mNetworkUtils:Lnz/co/telecom/smartphone/util/NetworkUtils;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/util/NetworkUtils;->isOnNet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    const-string v3, "https"

    const-string v4, "http"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 35
    :cond_0
    iget-object v3, p0, Lnz/co/telecom/smartphone/controller/RegistrationController;->registrationService:Lnz/co/telecom/smartphone/service/RegistrationServiceInterface;

    invoke-interface {v3, v0, p1}, Lnz/co/telecom/smartphone/service/RegistrationServiceInterface;->createTokenSession(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 39
    return-object v2

    .line 36
    .end local v0    # "actionUrl":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 37
    .local v1, "exp":Lnz/co/telecom/smartphone/service/HttpServiceException;
    new-instance v3, Lnz/co/telecom/smartphone/service/HttpServiceException;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getStatusCode()I

    move-result v4

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public updatePassword(Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const/4 v2, 0x0

    .line 46
    .local v2, "registrationDTO":Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    :try_start_0
    const-string v3, "ENDPOINT_ACCESS_UPDATE"

    invoke-static {v3}, Lnz/co/telecom/smartphone/Profile;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "actionUrl":Ljava/lang/String;
    iget-object v3, p0, Lnz/co/telecom/smartphone/controller/RegistrationController;->registrationService:Lnz/co/telecom/smartphone/service/RegistrationServiceInterface;

    invoke-interface {v3, v0, p1}, Lnz/co/telecom/smartphone/service/RegistrationServiceInterface;->updatePassword(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 51
    return-object v2

    .line 48
    .end local v0    # "actionUrl":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "exp":Lnz/co/telecom/smartphone/service/HttpServiceException;
    new-instance v3, Lnz/co/telecom/smartphone/service/HttpServiceException;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getStatusCode()I

    move-result v4

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;)V

    throw v3
.end method
