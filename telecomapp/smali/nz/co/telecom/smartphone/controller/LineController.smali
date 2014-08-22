.class public Lnz/co/telecom/smartphone/controller/LineController;
.super Lnz/co/telecom/smartphone/controller/BaseController;
.source "LineController.java"

# interfaces
.implements Lnz/co/telecom/smartphone/controller/LineControllerInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lineService:Lnz/co/telecom/smartphone/service/LineServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lnz/co/telecom/smartphone/controller/LineController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/controller/LineController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lnz/co/telecom/smartphone/controller/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public getLineExtendedDTO()Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 25
    .local v1, "result":Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
    :try_start_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/controller/LineController;->lineService:Lnz/co/telecom/smartphone/service/LineServiceInterface;

    const-string v3, "ENDPOINT_LINE_EXTENDED"

    invoke-static {v3}, Lnz/co/telecom/smartphone/Profile;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lnz/co/telecom/smartphone/service/LineServiceInterface;->getLineExtendedDTO(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
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
    sget-object v2, Lnz/co/telecom/smartphone/controller/LineController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    throw v0
.end method

.method public getLineProductsDTO()Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 39
    .local v1, "result":Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;
    :try_start_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/controller/LineController;->lineService:Lnz/co/telecom/smartphone/service/LineServiceInterface;

    const-string v3, "ENDPOINT_LINE_PRODUCTS"

    invoke-static {v3}, Lnz/co/telecom/smartphone/Profile;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lnz/co/telecom/smartphone/service/LineServiceInterface;->getLineProductsDTO(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 46
    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Lnz/co/telecom/smartphone/service/HttpServiceException;
    sget-object v2, Lnz/co/telecom/smartphone/controller/LineController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    throw v0
.end method
