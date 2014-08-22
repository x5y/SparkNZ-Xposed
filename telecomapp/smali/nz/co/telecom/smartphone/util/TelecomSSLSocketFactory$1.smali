.class Lnz/co/telecom/smartphone/util/TelecomSSLSocketFactory$1;
.super Ljava/lang/Object;
.source "TelecomSSLSocketFactory.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/util/TelecomSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/util/TelecomSSLSocketFactory;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/util/TelecomSSLSocketFactory;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lnz/co/telecom/smartphone/util/TelecomSSLSocketFactory$1;->this$0:Lnz/co/telecom/smartphone/util/TelecomSSLSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # [Ljava/security/cert/X509Certificate;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "here"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # [Ljava/security/cert/X509Certificate;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "here"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "here"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method
