.class public Lnz/co/telecom/smartphone/controller/BuyExtrasController;
.super Lnz/co/telecom/smartphone/controller/BaseController;
.source "BuyExtrasController.java"

# interfaces
.implements Lnz/co/telecom/smartphone/controller/BuyExtrasControllerInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private buyExtrasService:Lnz/co/telecom/smartphone/service/BuyExtrasServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lnz/co/telecom/smartphone/controller/BuyExtrasController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/controller/BuyExtrasController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lnz/co/telecom/smartphone/controller/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public processBuyExtrasRequest(Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;)Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;
    .locals 8
    .param p1, "extrasCatalogueProductsDTO"    # Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v4, 0x0

    .line 27
    .local v4, "result":Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;
    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->get_links()Ljava/util/Map;

    move-result-object v1

    .line 28
    .local v1, "actionDtoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;>;"
    const-string v5, "action"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;

    .line 29
    .local v3, "lineProductActionDTO":Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;
    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->getHref()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lnz/co/telecom/smartphone/controller/BuyExtrasController;->buyExtrasService:Lnz/co/telecom/smartphone/service/BuyExtrasServiceInterface;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ENDPOINT_EXTRAS_BUY"

    invoke-static {v7}, Lnz/co/telecom/smartphone/Profile;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lnz/co/telecom/smartphone/service/BuyExtrasServiceInterface;->processBuyExtrasRequest(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 38
    return-object v4

    .line 33
    :catch_0
    move-exception v2

    .line 34
    .local v2, "exp":Ljava/lang/Exception;
    sget-object v5, Lnz/co/telecom/smartphone/controller/BuyExtrasController;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    throw v2
.end method
