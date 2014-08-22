.class public Lnz/co/telecom/smartphone/service/AccessControlService;
.super Lnz/co/telecom/smartphone/service/RestfulClient;
.source "AccessControlService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/AccessControlServiceInterface;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lnz/co/telecom/smartphone/service/AccessControlService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/service/AccessControlService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lnz/co/telecom/smartphone/service/RestfulClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getSessionToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/AccessControlService;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->getUserCredentials()Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    move-result-object v0

    .line 134
    .local v0, "userCredentialsDTO":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public invokeWhoAmI(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/registration/WhoAmIDTO;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    const-string v9, "https"

    const-string v10, "http"

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 51
    const/4 v7, -0x1

    .line 53
    .local v7, "statusCode":I
    const/4 v1, 0x0

    .line 55
    .local v1, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/service/AccessControlService;->buildHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    .line 56
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 58
    .local v4, "request":Lorg/apache/http/client/methods/HttpGet;
    const-string v9, "Origin"

    iget-object v10, p0, Lnz/co/telecom/smartphone/service/AccessControlService;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v10}, Lnz/co/telecom/smartphone/service/PropertiesService;->getHeaderOrigin()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v9, Lnz/co/telecom/smartphone/service/AccessControlService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invokeWhoAmI mPropertiesService.getAppVersionName()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lnz/co/telecom/smartphone/service/AccessControlService;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v11}, Lnz/co/telecom/smartphone/service/PropertiesService;->getAppVersionName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v9, Lnz/co/telecom/smartphone/service/AccessControlService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invokeWhoAmI mPropertiesService.getAppVersionCode()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lnz/co/telecom/smartphone/service/AccessControlService;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v11}, Lnz/co/telecom/smartphone/service/PropertiesService;->getAppVersionCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v9, "User-Agent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Telecom-Android version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lnz/co/telecom/smartphone/service/AccessControlService;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v11}, Lnz/co/telecom/smartphone/service/PropertiesService;->getAppVersionName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " build("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lnz/co/telecom/smartphone/service/AccessControlService;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v11}, Lnz/co/telecom/smartphone/service/PropertiesService;->getAppVersionCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v9, Lnz/co/telecom/smartphone/service/AccessControlService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "send : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {v1, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 64
    .local v5, "response":Lorg/apache/http/HttpResponse;
    sget-object v9, Lnz/co/telecom/smartphone/service/AccessControlService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "received : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    .line 66
    .local v8, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 68
    const/16 v9, 0xc8

    if-ne v7, v9, :cond_0

    .line 69
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 70
    .local v2, "inputStream":Ljava/io/InputStream;
    iget-object v9, p0, Lnz/co/telecom/smartphone/service/AccessControlService;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    const-class v10, Lnz/co/telecom/smartphone/dto/registration/WhoAmIDTO;

    invoke-virtual {v9, v2, v10}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnz/co/telecom/smartphone/dto/registration/WhoAmIDTO;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .local v6, "result":Lnz/co/telecom/smartphone/dto/registration/WhoAmIDTO;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 81
    return-object v6

    .line 72
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "result":Lnz/co/telecom/smartphone/dto/registration/WhoAmIDTO;
    :cond_0
    :try_start_1
    new-instance v9, Lnz/co/telecom/smartphone/service/HttpServiceException;

    const-string v10, "Received an unexpected response from the sever."

    invoke-direct {v9, v7, v10}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;)V

    throw v9
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "cpe":Lorg/apache/http/client/ClientProtocolException;
    :try_start_2
    new-instance v9, Lnz/co/telecom/smartphone/service/HttpServiceException;

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v7, v10, v0}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .end local v0    # "cpe":Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v9

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v9

    .line 76
    :catch_1
    move-exception v3

    .line 77
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v9, Lnz/co/telecom/smartphone/service/HttpServiceException;

    const-string v10, "Failed to read a response from the server."

    invoke-direct {v9, v7, v10, v3}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public performLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
    .locals 7
    .param p1, "mobileNumber"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v1, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "username"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "password"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "uri"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "realm=/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnz/co/telecom/smartphone/service/AccessControlService;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v6}, Lnz/co/telecom/smartphone/service/PropertiesService;->getAccessControlRealmName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    const-class v3, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;

    invoke-virtual {p0, v3, p3, v1}, Lnz/co/telecom/smartphone/service/AccessControlService;->postForLoginDeviceLogin(Ljava/lang/Class;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;

    .line 95
    .local v0, "accessControlLoginDTO":Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
    iget-object v3, p0, Lnz/co/telecom/smartphone/service/AccessControlService;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->getUserCredentials()Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    move-result-object v2

    .line 96
    .local v2, "userCredentialsDTO":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    if-nez v2, :cond_0

    .line 97
    new-instance v2, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    .end local v2    # "userCredentialsDTO":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    invoke-direct {v2}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;-><init>()V

    .line 98
    .restart local v2    # "userCredentialsDTO":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setAutoSignin(Z)V

    .line 101
    :cond_0
    invoke-virtual {v2, p1}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserMobileNumber(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v2, p2}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserPassword(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;->getTokenId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setSessionToken(Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lnz/co/telecom/smartphone/service/AccessControlService;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;

    invoke-virtual {v3, v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->storeUserCredentials(Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;)V

    .line 105
    return-object v0
.end method

.method public performLogout(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sessionToken"    # Ljava/lang/String;
    .param p3, "clearTokenOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/AccessControlService;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->getUserCredentials()Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    move-result-object v0

    .line 112
    .local v0, "userCredentialsDTO":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setSessionToken(Ljava/lang/String;)V

    .line 118
    if-nez p3, :cond_0

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setAutoSignin(Z)V

    .line 120
    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserMobileNumber(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserPassword(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserAccountNumber(Ljava/lang/String;)V

    .line 124
    :cond_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/AccessControlService;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;

    invoke-virtual {v1, v0}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesController;->storeUserCredentials(Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;)V

    .line 125
    invoke-static {v2}, Lnz/co/telecom/smartphone/SessionCookies;->setRequestingCookies(Ljava/util/List;)V

    .line 128
    :cond_1
    invoke-virtual {p0, p1, p2}, Lnz/co/telecom/smartphone/service/AccessControlService;->postForSessionLogout(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method protected postForLoginDeviceLogin(Ljava/lang/Class;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 16
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const/4 v11, -0x1

    .line 153
    .local v11, "statusCode":I
    const/4 v10, 0x0

    .line 154
    .local v10, "result":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x0

    .line 156
    .local v5, "httpClient":Lorg/apache/http/client/HttpClient;
    const/4 v1, 0x0

    .line 159
    .local v1, "accessControlExceptionWrapper":Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionWrapper;
    :try_start_0
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .end local v5    # "httpClient":Lorg/apache/http/client/HttpClient;
    .local v6, "httpClient":Lorg/apache/http/client/HttpClient;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/AccessControlService;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v13}, Lnz/co/telecom/smartphone/service/PropertiesService;->isSSLCertOK()Z

    move-result v13

    if-nez v13, :cond_5

    .line 162
    invoke-static {v6}, Lnz/co/telecom/smartphone/util/WebClientDevWrapper;->wrapClient(Lorg/apache/http/client/HttpClient;)Lorg/apache/http/client/HttpClient;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 165
    .end local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "httpClient":Lorg/apache/http/client/HttpClient;
    :goto_0
    :try_start_2
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 166
    .local v8, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string v13, "Origin"

    move-object/from16 v0, p0

    iget-object v14, v0, Lnz/co/telecom/smartphone/service/AccessControlService;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v14}, Lnz/co/telecom/smartphone/service/PropertiesService;->getHeaderOrigin()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v13, "host"

    move-object/from16 v0, p0

    iget-object v14, v0, Lnz/co/telecom/smartphone/service/AccessControlService;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v14}, Lnz/co/telecom/smartphone/service/PropertiesService;->getHeaderHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v13, "Cache-Control"

    const-string v14, "no-cache"

    invoke-virtual {v8, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v13, "Accept-Encoding"

    const-string v14, "gzip;q=1.0"

    invoke-virtual {v8, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v13, Lnz/co/telecom/smartphone/service/AccessControlService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "postForLoginDeviceLogin mPropertiesService.getAppVersionName()"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/telecom/smartphone/service/AccessControlService;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v15}, Lnz/co/telecom/smartphone/service/PropertiesService;->getAppVersionName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v13, Lnz/co/telecom/smartphone/service/AccessControlService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "postForLoginDeviceLogin mPropertiesService.getAppVersionCode()"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/telecom/smartphone/service/AccessControlService;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v15}, Lnz/co/telecom/smartphone/service/PropertiesService;->getAppVersionCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v13, "User-Agent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Telecom-Android version "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/telecom/smartphone/service/AccessControlService;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v15}, Lnz/co/telecom/smartphone/service/PropertiesService;->getAppVersionName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " build("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lnz/co/telecom/smartphone/service/AccessControlService;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v15}, Lnz/co/telecom/smartphone/service/PropertiesService;->getAppVersionCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    if-eqz p3, :cond_0

    .line 174
    new-instance v13, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v8, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 177
    :cond_0
    sget-object v13, Lnz/co/telecom/smartphone/service/AccessControlService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "send : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-interface {v5, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 179
    .local v9, "response":Lorg/apache/http/HttpResponse;
    sget-object v13, Lnz/co/telecom/smartphone/service/AccessControlService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "received : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    .line 182
    .local v12, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 184
    const/16 v13, 0xc8

    if-ne v11, v13, :cond_2

    .line 185
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 186
    .local v3, "buffer":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    move-object/from16 v0, p1

    invoke-virtual {v13, v3, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 200
    .end local v10    # "result":Ljava/lang/Object;, "TT;"
    :goto_1
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 203
    if-nez v10, :cond_1

    .line 204
    new-instance v2, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;

    invoke-direct {v2}, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;-><init>()V

    .line 205
    .local v2, "accessControlLoginDTO":Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionWrapper;->getException()Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;

    move-result-object v13

    invoke-virtual {v2, v13}, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;->setException(Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;)V

    .line 207
    move-object v10, v2

    .line 209
    .end local v2    # "accessControlLoginDTO":Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
    :cond_1
    return-object v10

    .line 187
    .end local v3    # "buffer":Ljava/io/InputStream;
    .restart local v10    # "result":Ljava/lang/Object;, "TT;"
    :cond_2
    const/16 v13, 0x191

    if-eq v11, v13, :cond_3

    const/16 v13, 0x193

    if-eq v11, v13, :cond_3

    const/16 v13, 0x1f4

    if-ne v11, v13, :cond_4

    .line 190
    :cond_3
    :try_start_3
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 191
    .restart local v3    # "buffer":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    const-class v14, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionWrapper;

    invoke-virtual {v13, v3, v14}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "accessControlExceptionWrapper":Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionWrapper;
    check-cast v1, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionWrapper;

    .line 192
    .restart local v1    # "accessControlExceptionWrapper":Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionWrapper;
    goto :goto_1

    .line 193
    .end local v3    # "buffer":Ljava/io/InputStream;
    :cond_4
    new-instance v13, Lnz/co/telecom/smartphone/service/HttpServiceException;

    const-string v14, "Received an unexpected response from the sever."

    invoke-direct {v13, v11, v14}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;)V

    throw v13
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    .end local v1    # "accessControlExceptionWrapper":Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionWrapper;
    .end local v8    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v4

    .line 196
    .local v4, "cpe":Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    :try_start_4
    new-instance v13, Lnz/co/telecom/smartphone/service/HttpServiceException;

    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v11, v14, v4}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 200
    .end local v4    # "cpe":Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v13

    :goto_3
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v13

    .line 197
    :catch_1
    move-exception v7

    .line 198
    .local v7, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v13, Lnz/co/telecom/smartphone/service/HttpServiceException;

    const-string v14, "Failed to read a response from the server."

    invoke-direct {v13, v11, v14, v7}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 200
    .end local v5    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v1    # "accessControlExceptionWrapper":Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionWrapper;
    .restart local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    :catchall_1
    move-exception v13

    move-object v5, v6

    .end local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "httpClient":Lorg/apache/http/client/HttpClient;
    goto :goto_3

    .line 197
    .end local v5    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    :catch_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "httpClient":Lorg/apache/http/client/HttpClient;
    goto :goto_4

    .line 195
    .end local v5    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    :catch_3
    move-exception v4

    move-object v5, v6

    .end local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "httpClient":Lorg/apache/http/client/HttpClient;
    goto :goto_2

    .end local v5    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    :cond_5
    move-object v5, v6

    .end local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "httpClient":Lorg/apache/http/client/HttpClient;
    goto/16 :goto_0
.end method

.method protected postForSessionLogout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 219
    const/4 v4, -0x1

    .line 221
    .local v4, "statusCode":I
    invoke-virtual {p0, p2}, Lnz/co/telecom/smartphone/service/AccessControlService;->buildHttpClient(Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    .line 222
    .local v1, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    if-nez p1, :cond_0

    .line 243
    :goto_0
    return-void

    .line 225
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 228
    .local v2, "post":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    sget-object v6, Lnz/co/telecom/smartphone/service/AccessControlService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 230
    .local v3, "response":Lorg/apache/http/HttpResponse;
    sget-object v6, Lnz/co/telecom/smartphone/service/AccessControlService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 233
    .local v5, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 235
    const/16 v6, 0xc8

    if-eq v4, v6, :cond_1

    .line 236
    new-instance v6, Lnz/co/telecom/smartphone/service/HttpServiceException;

    const-string v7, "Error when logging out of session"

    invoke-direct {v6, v4, v7}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "exp":Ljava/lang/Exception;
    :try_start_1
    new-instance v6, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    .end local v0    # "exp":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v6

    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    .restart local v5    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_1
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0
.end method
