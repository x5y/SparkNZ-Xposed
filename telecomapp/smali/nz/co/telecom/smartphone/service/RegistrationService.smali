.class public Lnz/co/telecom/smartphone/service/RegistrationService;
.super Lnz/co/telecom/smartphone/service/RestfulClient;
.source "RegistrationService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/RegistrationServiceInterface;


# instance fields
.field private TAG:Ljava/lang/String;

.field private debug:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lnz/co/telecom/smartphone/service/RestfulClient;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/service/RegistrationService;->debug:Z

    .line 24
    const-string v0, "RegistrationService"

    iput-object v0, p0, Lnz/co/telecom/smartphone/service/RegistrationService;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createTokenSession(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    .locals 1
    .param p1, "actionUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 28
    .local p2, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const-class v0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    invoke-virtual {p0, v0, p1, p2}, Lnz/co/telecom/smartphone/service/RegistrationService;->getEntityForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    return-object v0
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
    .line 41
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const/4 v11, -0x1

    .line 43
    .local v11, "statusCode":I
    const/4 v9, 0x0

    .line 44
    .local v9, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/service/RegistrationService;->buildHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    .line 47
    .local v2, "httpClient":Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 48
    .local v6, "post":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lnz/co/telecom/smartphone/service/RegistrationService;->addCommonHeader(Lorg/apache/http/HttpRequest;)V

    .line 49
    if-eqz p3, :cond_0

    .line 50
    new-instance v13, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 52
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RegistrationService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RegistrationService URL "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnz/co/telecom/smartphone/service/RegistrationService;->debug:Z

    if-eqz v13, :cond_1

    .line 54
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RegistrationService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "urlParameters "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    invoke-interface {v2, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 56
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    .line 57
    .local v12, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 58
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnz/co/telecom/smartphone/service/RegistrationService;->debug:Z

    if-eqz v13, :cond_2

    .line 59
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RegistrationService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "statusCode "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_2
    const/16 v13, 0x193

    if-ne v11, v13, :cond_5

    .line 62
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/service/RegistrationService;->buildHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    .line 64
    const-string v13, "https"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 65
    const-string v13, "http"

    const-string v14, "https"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 67
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RegistrationService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "url "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    .end local v6    # "post":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 69
    .restart local v6    # "post":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lnz/co/telecom/smartphone/service/RegistrationService;->addCommonHeader(Lorg/apache/http/HttpRequest;)V

    .line 70
    if-eqz p3, :cond_4

    .line 71
    new-instance v13, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 73
    :cond_4
    invoke-interface {v2, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 74
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    .line 75
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 77
    :cond_5
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-static {v13}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v3

    .line 78
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 79
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 80
    .local v5, "line":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v10, "sbResponse":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 82
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "sbResponse":Ljava/lang/StringBuilder;
    .end local v12    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v1

    .line 88
    .local v1, "cpe":Lorg/apache/http/client/ClientProtocolException;
    :try_start_1
    new-instance v13, Lnz/co/telecom/smartphone/service/HttpServiceException;

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v11, v14, v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .end local v1    # "cpe":Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v13

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v13

    .line 84
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "sbResponse":Ljava/lang/StringBuilder;
    .restart local v12    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnz/co/telecom/smartphone/service/RegistrationService;->debug:Z

    if-eqz v13, :cond_7

    .line 85
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RegistrationService;->TAG:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/RegistrationService;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 92
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 94
    return-object v9

    .line 89
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "sbResponse":Ljava/lang/StringBuilder;
    .end local v12    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v4

    .line 90
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v13, Lnz/co/telecom/smartphone/service/HttpServiceException;

    const-string v14, "Failed to read a response from the server."

    invoke-direct {v13, v11, v14, v4}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public updatePassword(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    .locals 1
    .param p1, "actionUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 33
    .local p2, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const-class v0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    invoke-virtual {p0, v0, p1, p2}, Lnz/co/telecom/smartphone/service/RegistrationService;->getEntityForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    return-object v0
.end method
