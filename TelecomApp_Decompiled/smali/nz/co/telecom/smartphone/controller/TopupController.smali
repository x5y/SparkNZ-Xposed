.class public Lnz/co/telecom/smartphone/controller/TopupController;
.super Lnz/co/telecom/smartphone/controller/BaseController;
.source "TopupController.java"

# interfaces
.implements Lnz/co/telecom/smartphone/controller/TopupControllerInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private topupService:Lnz/co/telecom/smartphone/service/TopupServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lnz/co/telecom/smartphone/controller/TopupController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/controller/TopupController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lnz/co/telecom/smartphone/controller/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public getTopUpResults(Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lnz/co/telecom/smartphone/dto/topup/TopupDTO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const/4 v1, 0x0

    .line 26
    .local v1, "result":Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    :try_start_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/controller/TopupController;->topupService:Lnz/co/telecom/smartphone/service/TopupServiceInterface;

    const-string v3, "ENDPOINT_VOUCHER_TOPUP"

    invoke-static {v3}, Lnz/co/telecom/smartphone/Profile;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lnz/co/telecom/smartphone/service/TopupServiceInterface;->getTopUpResults(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 32
    return-object v1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Lnz/co/telecom/smartphone/service/HttpServiceException;
    sget-object v2, Lnz/co/telecom/smartphone/controller/TopupController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    throw v0
.end method
