.class public Lnz/co/telecom/smartphone/service/CreditCardService;
.super Lnz/co/telecom/smartphone/service/RestfulClient;
.source "CreditCardService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/CreditCardServiceInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private debug:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lnz/co/telecom/smartphone/service/RestfulClient;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/service/CreditCardService;->debug:Z

    .line 26
    const-string v0, "CreditCardService"

    iput-object v0, p0, Lnz/co/telecom/smartphone/service/CreditCardService;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCreditCardResult(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;
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
            "Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const-class v0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {p0, v0, p1}, Lnz/co/telecom/smartphone/service/CreditCardService;->getEntity(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    return-object v0
.end method

.method public getCreditCardToken(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;
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
            "Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const-class v0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    invoke-virtual {p0, v0, p1, p2}, Lnz/co/telecom/smartphone/service/CreditCardService;->getEntityForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;

    return-object v0
.end method

.method protected getEntity(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
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
    .line 43
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v11, -0x1

    .line 45
    .local v11, "statusCode":I
    const/4 v9, 0x0

    .line 46
    .local v9, "result":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 48
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lnz/co/telecom/smartphone/service/CreditCardService;->buildHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    .line 49
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 50
    .local v7, "request":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnz/co/telecom/smartphone/service/CreditCardService;->debug:Z

    if-eqz v13, :cond_0

    .line 51
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/CreditCardService;->TAG:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lnz/co/telecom/smartphone/service/CreditCardService;->addCommonHeader(Lorg/apache/http/HttpRequest;)V

    .line 53
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnz/co/telecom/smartphone/service/CreditCardService;->debug:Z

    if-eqz v13, :cond_1

    .line 54
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/CreditCardService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CreditCardService getEntity send : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    invoke-virtual {v2, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 56
    .local v8, "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnz/co/telecom/smartphone/service/CreditCardService;->debug:Z

    if-eqz v13, :cond_2

    .line 57
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/CreditCardService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CreditCardService getEntity received : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_2
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    .line 59
    .local v12, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 60
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnz/co/telecom/smartphone/service/CreditCardService;->debug:Z

    if-eqz v13, :cond_3

    .line 61
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/CreditCardService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CreditCardService getEntity statusCode "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnz/co/telecom/smartphone/service/CreditCardService;->debug:Z

    if-eqz v13, :cond_6

    .line 63
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-static {v13}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v3

    .line 64
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 65
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 66
    .local v5, "line":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v10, "sbResponse":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 68
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 77
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "sbResponse":Ljava/lang/StringBuilder;
    .end local v12    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "cpe":Lorg/apache/http/client/ClientProtocolException;
    :try_start_1
    new-instance v13, Lnz/co/telecom/smartphone/service/HttpServiceException;

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v11, v14, v1}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .end local v1    # "cpe":Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v13

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v13

    .line 70
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "sbResponse":Ljava/lang/StringBuilder;
    .restart local v12    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lnz/co/telecom/smartphone/service/CreditCardService;->debug:Z

    if-eqz v13, :cond_5

    .line 71
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/CreditCardService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CreditCardService getEntity "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/CreditCardService;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 82
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "sbResponse":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 84
    return-object v9

    .line 74
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_6
    :try_start_3
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-static {v13}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v3

    .line 75
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnz/co/telecom/smartphone/service/CreditCardService;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    move-object/from16 v0, p1

    invoke-virtual {v13, v3, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    goto :goto_1

    .line 79
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v4

    .line 80
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_4
    new-instance v13, Lnz/co/telecom/smartphone/service/HttpServiceException;

    const-string v14, "Failed to read a response from the server."

    invoke-direct {v13, v11, v14, v4}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
