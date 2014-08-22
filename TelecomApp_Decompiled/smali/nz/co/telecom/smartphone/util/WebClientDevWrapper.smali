.class public Lnz/co/telecom/smartphone/util/WebClientDevWrapper;
.super Ljava/lang/Object;
.source "WebClientDevWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrapClient(Lorg/apache/http/client/HttpClient;)Lorg/apache/http/client/HttpClient;
    .locals 10
    .param p0, "base"    # Lorg/apache/http/client/HttpClient;

    .prologue
    const/4 v7, 0x0

    .line 24
    :try_start_0
    const-string v6, "TLS"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 25
    .local v1, "ctx":Ljavax/net/ssl/SSLContext;
    new-instance v5, Lnz/co/telecom/smartphone/util/WebClientDevWrapper$1;

    invoke-direct {v5}, Lnz/co/telecom/smartphone/util/WebClientDevWrapper$1;-><init>()V

    .line 40
    .local v5, "tm":Ljavax/net/ssl/X509TrustManager;
    const/4 v6, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljavax/net/ssl/TrustManager;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v8, v9}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 41
    new-instance v4, Lnz/co/telecom/smartphone/util/TelecomSSLSocketFactory;

    invoke-direct {v4, v1}, Lnz/co/telecom/smartphone/util/TelecomSSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;)V

    .line 42
    .local v4, "ssf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 43
    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 44
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v3

    .line 45
    .local v3, "sr":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "https"

    const/16 v9, 0x1bb

    invoke-direct {v6, v8, v4, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 46
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    invoke-direct {v6, v0, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v1    # "ctx":Ljavax/net/ssl/SSLContext;
    .end local v3    # "sr":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4    # "ssf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v5    # "tm":Ljavax/net/ssl/X509TrustManager;
    :goto_0
    return-object v6

    .line 47
    :catch_0
    move-exception v2

    .line 48
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v7

    .line 49
    goto :goto_0
.end method
