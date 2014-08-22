.class public Lnz/co/telecom/smartphone/controller/ExtrasController;
.super Lnz/co/telecom/smartphone/controller/BaseController;
.source "ExtrasController.java"

# interfaces
.implements Lnz/co/telecom/smartphone/controller/ExtrasControllerInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private extrasService:Lnz/co/telecom/smartphone/service/ExtrasServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lnz/co/telecom/smartphone/controller/ExtrasController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/controller/ExtrasController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lnz/co/telecom/smartphone/controller/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtrasCatalogueDTO()Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 40
    .local v1, "result":Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
    :try_start_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/controller/ExtrasController;->extrasService:Lnz/co/telecom/smartphone/service/ExtrasServiceInterface;

    const-string v3, "ENDPOINT_EXTRAS_CATALOGUE"

    invoke-static {v3}, Lnz/co/telecom/smartphone/Profile;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lnz/co/telecom/smartphone/service/ExtrasServiceInterface;->getExtrasCatalogueDTO(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
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
    sget-object v2, Lnz/co/telecom/smartphone/controller/ExtrasController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    throw v0
.end method

.method public getExtrasUpdateDTO(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    const/4 v1, 0x0

    .line 23
    .local v1, "result":Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;
    :try_start_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/controller/ExtrasController;->extrasService:Lnz/co/telecom/smartphone/service/ExtrasServiceInterface;

    const-string v3, "ENDPOINT_EXTRAS_UPDATE"

    invoke-static {v3}, Lnz/co/telecom/smartphone/Profile;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lnz/co/telecom/smartphone/service/ExtrasServiceInterface;->getExtrasUpdateDTO(Ljava/lang/String;Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 29
    return-object v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Lnz/co/telecom/smartphone/service/HttpServiceException;
    sget-object v2, Lnz/co/telecom/smartphone/controller/ExtrasController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    throw v0
.end method
