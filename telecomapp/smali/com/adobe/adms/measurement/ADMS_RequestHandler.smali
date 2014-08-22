.class final Lcom/adobe/adms/measurement/ADMS_RequestHandler;
.super Ljava/lang/Object;
.source "ADMS_RequestHandler.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static requestConnect(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 77
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, "requestURL":Ljava/net/URL;
    const-string v3, "https://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 79
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 80
    .local v0, "connectionSecure":Ljavax/net/ssl/HttpsURLConnection;
    new-instance v3, Lcom/adobe/adms/measurement/ADMS_RequestHandler$1;

    invoke-direct {v3}, Lcom/adobe/adms/measurement/ADMS_RequestHandler$1;-><init>()V

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 93
    .end local v0    # "connectionSecure":Ljavax/net/ssl/HttpsURLConnection;
    .end local v2    # "requestURL":Ljava/net/URL;
    :goto_0
    return-object v0

    .line 87
    .restart local v2    # "requestURL":Ljava/net/URL;
    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    .line 89
    .end local v2    # "requestURL":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception opening URL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static sendRequest(Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 30
    .local v4, "requestSent":Z
    if-nez p0, :cond_0

    move v5, v4

    .line 69
    .end local v4    # "requestSent":Z
    .local v5, "requestSent":I
    :goto_0
    return v5

    .line 36
    .end local v5    # "requestSent":I
    .restart local v4    # "requestSent":Z
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/adobe/adms/measurement/ADMS_RequestHandler;->requestConnect(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 37
    .local v0, "connection":Ljava/net/HttpURLConnection;
    if-eqz v0, :cond_2

    .line 38
    const/16 v7, 0x1388

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 39
    const/16 v7, 0x1388

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 41
    if-eqz p1, :cond_3

    .line 43
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 44
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 45
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 46
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 58
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/net/SocketTimeoutException;
    const/4 v4, 0x0

    .line 60
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v7

    const-string v8, "Timed out sending request."

    invoke-virtual {v7, v8}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    :cond_2
    :goto_2
    move v5, v4

    .line 69
    .restart local v5    # "requestSent":I
    goto :goto_0

    .line 51
    .end local v5    # "requestSent":I
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Request Sent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 53
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 54
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 56
    const/4 v4, 0x1

    goto :goto_2

    .line 61
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v1

    .line 62
    .local v1, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    .line 63
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException while sending request, retrying. Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    goto :goto_2

    .line 64
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    .line 66
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while attempting to send hit : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    goto :goto_2
.end method
