.class public Lnz/co/telecom/smartphone/service/RestfulClient;
.super Ljava/lang/Object;
.source "RestfulClient.java"


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field static accessControlProvider:Lcom/google/inject/Provider;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static dataServicesProvider:Lcom/google/inject/Provider;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;",
            ">;"
        }
    .end annotation
.end field

.field static propertiesServiceProvider:Lcom/google/inject/Provider;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lnz/co/telecom/smartphone/service/PropertiesService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final REQUEST_TIMEOUT:I

.field private final SC_TOO_MANY_REQUEST:I

.field private final TAG:Ljava/lang/String;

.field private debug:Z

.field protected mAccessControl:Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;

.field protected mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

.field protected mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

.field protected final mapper:Lorg/codehaus/jackson/map/ObjectMapper;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v2, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->debug:Z

    .line 49
    const-class v0, Lnz/co/telecom/smartphone/service/RestfulClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    .line 50
    const/16 v0, 0x4e20

    iput v0, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->REQUEST_TIMEOUT:I

    .line 51
    const/16 v0, 0x1ad

    iput v0, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->SC_TOO_MANY_REQUEST:I

    .line 52
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 56
    sget-object v0, Lnz/co/telecom/smartphone/service/RestfulClient;->dataServicesProvider:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    iput-object v0, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    .line 60
    sget-object v0, Lnz/co/telecom/smartphone/service/RestfulClient;->accessControlProvider:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;

    iput-object v0, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mAccessControl:Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;

    .line 64
    sget-object v0, Lnz/co/telecom/smartphone/service/RestfulClient;->propertiesServiceProvider:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/service/PropertiesService;

    iput-object v0, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    .line 67
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    .line 68
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lorg/codehaus/jackson/JsonParser$Feature;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/JsonParser$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    .line 69
    return-void
.end method


# virtual methods
.method protected addClientCookies(Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 4
    .param p1, "httpClient"    # Lorg/apache/http/impl/client/DefaultHttpClient;

    .prologue
    .line 363
    iget-boolean v1, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->debug:Z

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mAccessControl:Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;

    invoke-interface {v3}, Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;->getOpenAMCookieName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mAccessControl:Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;

    invoke-interface {v3}, Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mAccessControl:Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "sessionToken":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lnz/co/telecom/smartphone/service/RestfulClient;->addClientCookies(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method protected addClientCookies(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/lang/String;)V
    .locals 4
    .param p1, "httpClient"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 378
    iget-boolean v1, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->debug:Z

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sessionToken : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    iget-object v1, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mAccessControl:Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;->getOpenAMCookieName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .local v0, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/PropertiesService;->getCookieDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 384
    const-string v1, "/"

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 385
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 386
    invoke-virtual {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 391
    .end local v0    # "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-virtual {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/CookieStore;->clear()V

    goto :goto_0
.end method

.method protected addCommonHeader(Lorg/apache/http/HttpRequest;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 337
    const-string v0, "host"

    iget-object v1, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/PropertiesService;->getHeaderHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v0, "Origin"

    iget-object v1, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/service/PropertiesService;->getHeaderOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip;q=1.0"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v0, "User-Agent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telecom-Android version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/service/PropertiesService;->getAppVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " build("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/service/PropertiesService;->getAppVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method protected addSessionCookies(Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 4
    .param p1, "httpClient"    # Lorg/apache/http/impl/client/DefaultHttpClient;

    .prologue
    .line 345
    invoke-static {}, Lnz/co/telecom/smartphone/SessionCookies;->getRequestingCookies()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 346
    invoke-static {}, Lnz/co/telecom/smartphone/SessionCookies;->getRequestingCookies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    .line 347
    .local v1, "oneCookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dtCookie"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mAccessControl:Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;

    invoke-interface {v3}, Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;->getOpenAMCookieName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    invoke-virtual {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    goto :goto_0

    .line 353
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "oneCookie":Lorg/apache/http/cookie/Cookie;
    :cond_1
    return-void
.end method

.method protected buildHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 3

    .prologue
    .line 404
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 405
    .local v1, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v2, 0x4e20

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 408
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 409
    .local v0, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    iget-object v2, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/service/PropertiesService;->isSSLCertOK()Z

    move-result v2

    if-nez v2, :cond_0

    .line 410
    invoke-static {v0}, Lnz/co/telecom/smartphone/util/WebClientDevWrapper;->wrapClient(Lorg/apache/http/client/HttpClient;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .end local v0    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    check-cast v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 413
    .restart local v0    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :cond_0
    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/service/RestfulClient;->addClientCookies(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 414
    invoke-static {}, Lnz/co/telecom/smartphone/SessionCookies;->getRequestingCookies()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 415
    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/service/RestfulClient;->addSessionCookies(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 418
    :cond_1
    return-object v0
.end method

.method protected buildHttpClient(Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 422
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 423
    .local v1, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v2, 0x4e20

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 425
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 426
    .local v0, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    iget-object v2, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesService;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/service/PropertiesService;->isSSLCertOK()Z

    move-result v2

    if-nez v2, :cond_0

    .line 427
    invoke-static {v0}, Lnz/co/telecom/smartphone/util/WebClientDevWrapper;->wrapClient(Lorg/apache/http/client/HttpClient;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .end local v0    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    check-cast v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 430
    .restart local v0    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :cond_0
    invoke-virtual {p0, v0, p1}, Lnz/co/telecom/smartphone/service/RestfulClient;->addClientCookies(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/lang/String;)V

    .line 431
    return-object v0
.end method

.method protected getEntity(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 20
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v15, -0x1

    .line 74
    .local v15, "statusCode":I
    const/4 v13, 0x0

    .line 75
    .local v13, "result":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    .line 77
    .local v6, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/service/RestfulClient;->buildHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v6

    .line 78
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 79
    .local v11, "request":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->debug:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lnz/co/telecom/smartphone/service/RestfulClient;->addCommonHeader(Lorg/apache/http/HttpRequest;)V

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getEntity send : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v6, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 85
    .local v12, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getEntity received : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    .line 87
    .local v16, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getEntity statusCode "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lnz/co/telecom/smartphone/SessionCookies;->getRequestingCookies()Ljava/util/List;

    move-result-object v17

    if-nez v17, :cond_1

    .line 90
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v4

    .line 91
    .local v4, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 92
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->debug:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 93
    const-string v17, "Cookie"

    const-string v18, "no cookies"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v4    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    :cond_1
    :goto_0
    const/16 v17, 0x191

    move/from16 v0, v17

    if-ne v15, v0, :cond_2

    .line 103
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/service/RestfulClient;->handleHttpStatusUnauthorized()V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/service/RestfulClient;->buildHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v6

    .line 105
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    .end local v11    # "request":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 106
    .restart local v11    # "request":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lnz/co/telecom/smartphone/service/RestfulClient;->addCommonHeader(Lorg/apache/http/HttpRequest;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getEntity SC_UNAUTHORIZED send : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v6, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getEntity SC_UNAUTHORIZED received : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    .line 111
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getEntity SC_UNAUTHORIZED statusCode : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->debug:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SC_UNAUTHORIZED "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SC_UNAUTHORIZED "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->debug:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 121
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v7

    .line 122
    .local v7, "inputStream":Ljava/io/InputStream;
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 123
    .local v10, "reader":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 124
    .local v9, "line":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v14, "sbResponse":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 126
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 168
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "sbResponse":Ljava/lang/StringBuilder;
    .end local v16    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v5

    .line 169
    .local v5, "cpe":Lorg/apache/http/client/ClientProtocolException;
    :try_start_1
    new-instance v17, Lnz/co/telecom/smartphone/service/HttpServiceException;

    invoke-virtual {v5}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1, v5}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    .end local v5    # "cpe":Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v17

    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 174
    invoke-static {}, Ljava/lang/System;->gc()V

    throw v17

    .line 95
    .restart local v4    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v11    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v12    # "response":Lorg/apache/http/HttpResponse;
    .restart local v16    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_3
    :try_start_2
    invoke-static {v4}, Lnz/co/telecom/smartphone/SessionCookies;->setRequestingCookies(Ljava/util/List;)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 170
    .end local v4    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v11    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    .end local v16    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v8

    .line 171
    .local v8, "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v17, Lnz/co/telecom/smartphone/service/HttpServiceException;

    const-string v18, "Failed to read a response from the server."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1, v8}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    .end local v8    # "ioe":Ljava/io/IOException;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v12    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "sbResponse":Ljava/lang/StringBuilder;
    .restart local v16    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->debug:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getEntity "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_5
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v15, v0, :cond_6

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v13

    .line 173
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local v14    # "sbResponse":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 174
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 176
    return-object v13

    .line 136
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "sbResponse":Ljava/lang/StringBuilder;
    :cond_6
    const/16 v17, 0x1f4

    move/from16 v0, v17

    if-eq v15, v0, :cond_7

    const/16 v17, 0x1ad

    move/from16 v0, v17

    if-ne v15, v0, :cond_8

    .line 137
    :cond_7
    :try_start_5
    new-instance v17, Lnz/co/telecom/smartphone/service/HttpServiceException;

    const-string v18, "Received an unexpected response from the sever or SC_TOO_MANY_REQUEST."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 139
    :cond_8
    const/16 v17, 0x190

    move/from16 v0, v17

    if-ne v15, v0, :cond_9

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-class v19, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;

    invoke-virtual/range {v17 .. v19}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;

    .line 141
    .local v3, "badResult":Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;
    new-instance v17, Lnz/co/telecom/smartphone/service/HttpServiceException;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v3}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;)V

    throw v17

    .line 143
    .end local v3    # "badResult":Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;
    :cond_9
    new-instance v17, Lnz/co/telecom/smartphone/service/HttpServiceException;

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 147
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local v14    # "sbResponse":Ljava/lang/StringBuilder;
    :cond_a
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v0, v15, :cond_b

    .line 148
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v7

    .line 150
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v7, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    .line 151
    goto :goto_2

    .end local v7    # "inputStream":Ljava/io/InputStream;
    :cond_b
    const/16 v17, 0x1ad

    move/from16 v0, v17

    if-ne v0, v15, :cond_c

    .line 152
    new-instance v17, Lnz/co/telecom/smartphone/service/HttpServiceException;

    const-string v18, "Received an unexpected response from the sever or SC_TOO_MANY_REQUEST."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 155
    :cond_c
    const/16 v17, 0x190

    move/from16 v0, v17

    if-eq v0, v15, :cond_d

    const/16 v17, 0x1f4

    move/from16 v0, v17

    if-ne v0, v15, :cond_e

    .line 157
    :cond_d
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v7

    .line 159
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    move-object/from16 v17, v0

    const-class v18, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;

    .line 161
    .restart local v3    # "badResult":Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;
    new-instance v17, Lnz/co/telecom/smartphone/service/HttpServiceException;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v3}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;)V

    throw v17

    .line 163
    .end local v3    # "badResult":Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    :cond_e
    new-instance v17, Lnz/co/telecom/smartphone/service/HttpServiceException;

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;)V

    throw v17
    :try_end_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method protected getEntityForPost(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
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
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v11, -0x1

    .line 266
    .local v11, "statusCode":I
    const/4 v9, 0x0

    .line 267
    .local v9, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/service/RestfulClient;->buildHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    .line 270
    .local v2, "httpClient":Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 271
    .local v6, "post":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lnz/co/telecom/smartphone/service/RestfulClient;->addCommonHeader(Lorg/apache/http/HttpRequest;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getEntityForPost send : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-interface {v2, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 275
    .local v8, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getEntityForPost received : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    .line 278
    .local v12, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 284
    const/16 v13, 0x191

    if-ne v11, v13, :cond_0

    .line 285
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/service/RestfulClient;->handleHttpStatusUnauthorized()V

    .line 286
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 287
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/service/RestfulClient;->buildHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    .line 288
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    .end local v6    # "post":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 289
    .restart local v6    # "post":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lnz/co/telecom/smartphone/service/RestfulClient;->addCommonHeader(Lorg/apache/http/HttpRequest;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getEntityForPost SC_UNAUTHORIZED send : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-interface {v2, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 293
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getEntityForPost SC_UNAUTHORIZED received : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    .line 296
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 298
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getEntityForPost statusCode "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/16 v13, 0xc8

    if-eq v11, v13, :cond_1

    const/16 v13, 0x190

    if-ne v11, v13, :cond_5

    .line 301
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->debug:Z

    if-eqz v13, :cond_4

    .line 302
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-static {v13}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v3

    .line 303
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 304
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 305
    .local v5, "line":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v10, "sbResponse":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 307
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 320
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "sbResponse":Ljava/lang/StringBuilder;
    .end local v12    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v1

    .line 321
    .local v1, "cpe":Lorg/apache/http/client/ClientProtocolException;
    :try_start_1
    new-instance v13, Lnz/co/telecom/smartphone/service/HttpServiceException;

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v11, v14, v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    .end local v1    # "cpe":Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v13

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v13

    .line 310
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "sbResponse":Ljava/lang/StringBuilder;
    .restart local v12    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->debug:Z

    if-eqz v13, :cond_3

    .line 311
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 325
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "sbResponse":Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 327
    return-object v9

    .line 314
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_4
    :try_start_3
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-static {v13}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v3

    .line 315
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    move-object/from16 v0, p1

    invoke-virtual {v13, v3, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    .line 316
    goto :goto_1

    .line 318
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_5
    new-instance v13, Lnz/co/telecom/smartphone/service/HttpServiceException;

    const-string v14, "Received an unexpected response from the sever."

    invoke-direct {v13, v11, v14}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;)V

    throw v13
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 322
    .end local v6    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v4

    .line 323
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_4
    new-instance v13, Lnz/co/telecom/smartphone/service/HttpServiceException;

    const-string v14, "Failed to read a response from the server."

    invoke-direct {v13, v11, v14, v4}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected getEntityForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;
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
    .line 189
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const/4 v11, -0x1

    .line 191
    .local v11, "statusCode":I
    const/4 v9, 0x0

    .line 192
    .local v9, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/service/RestfulClient;->buildHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    .line 195
    .local v2, "httpClient":Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 196
    .local v6, "post":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lnz/co/telecom/smartphone/service/RestfulClient;->addCommonHeader(Lorg/apache/http/HttpRequest;)V

    .line 198
    if-eqz p3, :cond_0

    .line 199
    new-instance v13, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 202
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

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

    .line 203
    invoke-interface {v2, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 204
    .local v8, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

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

    .line 205
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    .line 206
    .local v12, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "statusCode : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->debug:Z

    if-eqz v13, :cond_1

    .line 209
    const-string v13, "getEntityForPost"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "starting token url "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->debug:Z

    if-eqz v13, :cond_2

    .line 211
    const-string v13, "getEntityForPost"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "starting token url "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_2
    const/16 v13, 0x191

    if-ne v11, v13, :cond_3

    .line 217
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/service/RestfulClient;->handleHttpStatusUnauthorized()V

    .line 218
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 219
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/service/RestfulClient;->buildHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    .line 220
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    .end local v6    # "post":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 221
    .restart local v6    # "post":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lnz/co/telecom/smartphone/service/RestfulClient;->addCommonHeader(Lorg/apache/http/HttpRequest;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

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

    .line 223
    invoke-interface {v2, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 224
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

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

    .line 225
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    .line 226
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 229
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->debug:Z

    if-eqz v13, :cond_4

    .line 230
    const-string v13, "getEntityForPost"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "starting token url "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->debug:Z

    if-eqz v13, :cond_5

    .line 232
    const-string v13, "getEntityForPost"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "starting token url "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->debug:Z

    if-eqz v13, :cond_6

    .line 234
    const-string v13, "getEntityForPost"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "starting statusCode "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->debug:Z

    if-eqz v13, :cond_9

    .line 239
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-static {v13}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v3

    .line 240
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 241
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 242
    .local v5, "line":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v10, "sbResponse":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 244
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 253
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "sbResponse":Ljava/lang/StringBuilder;
    .end local v12    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v1

    .line 254
    .local v1, "cpe":Lorg/apache/http/client/ClientProtocolException;
    :try_start_1
    new-instance v13, Lnz/co/telecom/smartphone/service/HttpServiceException;

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v11, v14, v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    .end local v1    # "cpe":Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v13

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v13

    .line 246
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "sbResponse":Ljava/lang/StringBuilder;
    .restart local v12    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->debug:Z

    if-eqz v13, :cond_8

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 258
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "sbResponse":Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 260
    return-object v9

    .line 250
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_9
    :try_start_3
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-static {v13}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v3

    .line 251
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RestfulClient;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    move-object/from16 v0, p1

    invoke-virtual {v13, v3, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    goto :goto_1

    .line 255
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v4

    .line 256
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_4
    new-instance v13, Lnz/co/telecom/smartphone/service/HttpServiceException;

    const-string v14, "Failed to read a response from the server."

    invoke-direct {v13, v11, v14, v4}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected handleHttpStatusUnauthorized()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 447
    iget-object v2, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v2}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getUserCredentials()Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    move-result-object v1

    .line 448
    .local v1, "userCredentialsDTO":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->isAutoSignin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    iget-object v2, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->mAccessControl:Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserMobileNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserPassword()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;->performLogin(Ljava/lang/String;Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;

    move-result-object v0

    .line 450
    .local v0, "accessControlLoginDTO":Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
    iget-object v2, p0, Lnz/co/telecom/smartphone/service/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accessControlLoginDTO.getTokenId() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;->getTokenId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void

    .line 455
    .end local v0    # "accessControlLoginDTO":Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
    :cond_0
    new-instance v2, Lnz/co/telecom/smartphone/exception/InvalidSessionTokenException;

    invoke-direct {v2}, Lnz/co/telecom/smartphone/exception/InvalidSessionTokenException;-><init>()V

    throw v2
.end method
