.class public Lnz/co/telecom/smartphone/service/dataservices/LineProductService;
.super Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;
.source "LineProductService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/dataservices/LineProductServiceInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lineProductsDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lnz/co/telecom/smartphone/service/dataservices/LineProductService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/service/dataservices/LineProductService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;-><init>()V

    return-void
.end method


# virtual methods
.method public getLineProductsDTO()Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineProductService;->lineProductsDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineProductService;->lineProductsDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/LineProductService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineProductService;->lineProductsDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    .line 63
    :goto_0
    return-object v1

    .line 52
    :cond_0
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;

    .line 55
    .local v0, "entity":Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;->timestamp:Ljava/util/Date;

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/LineProductService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;->objectAsBytes:[B

    if-nez v1, :cond_2

    .line 57
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 60
    :cond_2
    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;->objectAsBytes:[B

    invoke-super {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;->byteArrayToObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineProductService;->lineProductsDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    .line 63
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineProductService;->lineProductsDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    goto :goto_0
.end method

.method public getLineProductsDTO(Z)Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;
    .locals 3
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;

    .line 26
    .local v0, "entity":Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;->timestamp:Ljava/util/Date;

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/LineProductService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;->objectAsBytes:[B

    if-nez v1, :cond_1

    .line 28
    :cond_0
    new-instance v1, Lcom/activeandroid/query/Delete;

    invoke-direct {v1}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 30
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineProductService;->mLineController:Lnz/co/telecom/smartphone/controller/LineControllerInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/controller/LineControllerInterface;->getLineProductsDTO()Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineProductService;->lineProductsDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    .line 31
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineProductService;->lineProductsDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;->setTimestamp(Ljava/util/Date;)V

    .line 33
    new-instance v0, Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;

    .end local v0    # "entity":Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;
    invoke-direct {v0}, Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;-><init>()V

    .line 34
    .restart local v0    # "entity":Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;->timestamp:Ljava/util/Date;

    .line 35
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineProductService;->lineProductsDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    invoke-super {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;->objectToByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, v0, Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;->objectAsBytes:[B

    .line 36
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;->save()V

    .line 42
    :goto_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineProductService;->lineProductsDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    return-object v1

    .line 38
    :cond_1
    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/lineproduct/LineProductEntity;->objectAsBytes:[B

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/LineProductService;->byteArrayToObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineProductService;->lineProductsDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    goto :goto_0
.end method
