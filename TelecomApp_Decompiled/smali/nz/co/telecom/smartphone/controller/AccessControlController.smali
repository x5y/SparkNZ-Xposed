.class public Lnz/co/telecom/smartphone/controller/AccessControlController;
.super Lnz/co/telecom/smartphone/controller/BaseController;
.source "AccessControlController.java"

# interfaces
.implements Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAccessControlService:Lnz/co/telecom/smartphone/service/AccessControlServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lnz/co/telecom/smartphone/controller/BaseController;-><init>()V

    .line 18
    const-class v0, Lnz/co/telecom/smartphone/controller/AccessControlController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/controller/AccessControlController;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getOpenAMCookieName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/AccessControlController;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/service/PropertiesService;->getAccessControlCookieName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lnz/co/telecom/smartphone/controller/AccessControlController;->mAccessControlService:Lnz/co/telecom/smartphone/service/AccessControlServiceInterface;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/service/AccessControlServiceInterface;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invokeWhoAmI()Lnz/co/telecom/smartphone/dto/registration/WhoAmIDTO;
    .locals 3

    .prologue
    .line 31
    :try_start_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/controller/AccessControlController;->mAccessControlService:Lnz/co/telecom/smartphone/service/AccessControlServiceInterface;

    const-string v2, "ENDPOINT_LINE_WHOAMI"

    invoke-static {v2}, Lnz/co/telecom/smartphone/Profile;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lnz/co/telecom/smartphone/service/AccessControlServiceInterface;->invokeWhoAmI(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/registration/WhoAmIDTO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 34
    :goto_0
    return-object v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "exp":Ljava/lang/Exception;
    iget-object v1, p0, Lnz/co/telecom/smartphone/controller/AccessControlController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    new-instance v1, Lnz/co/telecom/smartphone/dto/registration/WhoAmIDTO;

    invoke-direct {v1}, Lnz/co/telecom/smartphone/dto/registration/WhoAmIDTO;-><init>()V

    goto :goto_0
.end method

.method public performLogin(Ljava/lang/String;Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
    .locals 5
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;

    invoke-direct {v0}, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;-><init>()V

    .line 42
    .local v0, "accessControlLoginDTO":Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
    :try_start_0
    iget-object v3, p0, Lnz/co/telecom/smartphone/controller/AccessControlController;->mAccessControlService:Lnz/co/telecom/smartphone/service/AccessControlServiceInterface;

    const-string v4, "ENDPOINT_ACCESS_LOGIN"

    invoke-static {v4}, Lnz/co/telecom/smartphone/Profile;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, p2, v4}, Lnz/co/telecom/smartphone/service/AccessControlServiceInterface;->performLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 47
    .end local v0    # "accessControlLoginDTO":Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
    .local v1, "accessControlLoginDTO":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 43
    .end local v1    # "accessControlLoginDTO":Ljava/lang/Object;
    .restart local v0    # "accessControlLoginDTO":Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
    :catch_0
    move-exception v2

    .line 44
    .local v2, "exp":Ljava/lang/Exception;
    iget-object v3, p0, Lnz/co/telecom/smartphone/controller/AccessControlController;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    .line 45
    .restart local v1    # "accessControlLoginDTO":Ljava/lang/Object;
    goto :goto_0
.end method

.method public performLogout()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/controller/AccessControlController;->performLogout(Z)Z

    move-result v0

    return v0
.end method

.method public performLogout(Z)Z
    .locals 6
    .param p1, "clearTokenOnly"    # Z

    .prologue
    const/4 v3, 0x1

    .line 59
    :try_start_0
    iget-object v4, p0, Lnz/co/telecom/smartphone/controller/AccessControlController;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->getUserCredentials()Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    move-result-object v2

    .line 60
    .local v2, "userCredentialsDto":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    if-nez v2, :cond_1

    .line 76
    .end local v2    # "userCredentialsDto":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    :cond_0
    :goto_0
    return v3

    .line 64
    .restart local v2    # "userCredentialsDto":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    :cond_1
    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "sessionToken":Ljava/lang/String;
    iget-object v4, p0, Lnz/co/telecom/smartphone/controller/AccessControlController;->mAccessControlService:Lnz/co/telecom/smartphone/service/AccessControlServiceInterface;

    const-string v5, "ENDPOINT_ACCESS_LOGOUT"

    invoke-static {v5}, Lnz/co/telecom/smartphone/Profile;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1, p1}, Lnz/co/telecom/smartphone/service/AccessControlServiceInterface;->performLogout(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    .end local v1    # "sessionToken":Ljava/lang/String;
    .end local v2    # "userCredentialsDto":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "exp":Ljava/lang/Exception;
    iget-object v3, p0, Lnz/co/telecom/smartphone/controller/AccessControlController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    const/4 v3, 0x0

    goto :goto_0
.end method
