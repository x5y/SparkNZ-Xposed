.class public Lnz/co/telecom/smartphone/controller/AccountController;
.super Lnz/co/telecom/smartphone/controller/BaseController;
.source "AccountController.java"

# interfaces
.implements Lnz/co/telecom/smartphone/controller/AccountControllerInterface;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accountService:Lnz/co/telecom/smartphone/service/AccountServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lnz/co/telecom/smartphone/controller/AccountController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/controller/AccountController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lnz/co/telecom/smartphone/controller/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountInfoDTO(Ljava/util/List;)Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "urlParameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v1, 0x0

    .line 32
    .local v1, "result":Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;
    :try_start_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/controller/AccountController;->accountService:Lnz/co/telecom/smartphone/service/AccountServiceInterface;

    const-string v3, "ENDPOINT_ACCOUNT_INFO"

    invoke-static {v3}, Lnz/co/telecom/smartphone/Profile;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lnz/co/telecom/smartphone/service/AccountServiceInterface;->getAccountInfoDTO(Ljava/lang/String;Ljava/util/List;)Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 39
    return-object v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "hse":Lnz/co/telecom/smartphone/service/HttpServiceException;
    sget-object v2, Lnz/co/telecom/smartphone/controller/AccountController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    throw v0
.end method
