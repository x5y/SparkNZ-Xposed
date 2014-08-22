.class public Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;
.super Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;
.source "ExtrasCatalogueService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueServiceInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private extrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;->TAG:Ljava/lang/String;

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
.method public getExtrasCatalogueDTO()Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
    .locals 3

    .prologue
    .line 46
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;->extrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;->extrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;->extrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    .line 59
    :goto_0
    return-object v1

    .line 50
    :cond_0
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;

    .line 52
    .local v0, "entity":Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;->timestamp:Ljava/util/Date;

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;->objectAsBytes:[B

    if-nez v1, :cond_2

    .line 54
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 57
    :cond_2
    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;->objectAsBytes:[B

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;->byteArrayToObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;->extrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    .line 59
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;->extrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    goto :goto_0
.end method

.method public getExtrasCatalogueDTO(Z)Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
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

    const-class v2, Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;

    .line 25
    .local v0, "entity":Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;->timestamp:Ljava/util/Date;

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;->objectAsBytes:[B

    if-nez v1, :cond_1

    .line 27
    :cond_0
    new-instance v1, Lcom/activeandroid/query/Delete;

    invoke-direct {v1}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 29
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;->mExtrasController:Lnz/co/telecom/smartphone/controller/ExtrasControllerInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/controller/ExtrasControllerInterface;->getExtrasCatalogueDTO()Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;->extrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    .line 30
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;->extrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;->setTimestamp(Ljava/util/Date;)V

    .line 32
    new-instance v0, Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;

    .end local v0    # "entity":Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;
    invoke-direct {v0}, Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;-><init>()V

    .line 33
    .restart local v0    # "entity":Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;->timestamp:Ljava/util/Date;

    .line 34
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;->extrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    invoke-super {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;->objectToByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, v0, Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;->objectAsBytes:[B

    .line 35
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;->save()V

    .line 40
    :goto_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;->extrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    return-object v1

    .line 37
    :cond_1
    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/extrascatalogue/ExtrasCatalogueEntity;->objectAsBytes:[B

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;->byteArrayToObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/ExtrasCatalogueService;->extrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    goto :goto_0
.end method
