.class public Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;
.super Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;
.source "LineExtendedService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/dataservices/LineExtendedServiceInterface;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;-><init>()V

    return-void
.end method


# virtual methods
.method public getLineExtendedDTO()Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
    .locals 3

    .prologue
    .line 45
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;->lineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;->lineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;->lineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    .line 58
    :goto_0
    return-object v1

    .line 49
    :cond_0
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;

    .line 51
    .local v0, "entity":Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;->timestamp:Ljava/util/Date;

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;->objectAsBytes:[B

    if-nez v1, :cond_2

    .line 53
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 56
    :cond_2
    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;->objectAsBytes:[B

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;->byteArrayToObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;->lineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    .line 58
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;->lineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    goto :goto_0
.end method

.method public getLineExtendedDTO(Z)Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
    .locals 3
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;

    .line 23
    .local v0, "entity":Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;->timestamp:Ljava/util/Date;

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;->objectAsBytes:[B

    if-nez v1, :cond_1

    .line 25
    :cond_0
    new-instance v1, Lcom/activeandroid/query/Delete;

    invoke-direct {v1}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 27
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;->mLineController:Lnz/co/telecom/smartphone/controller/LineControllerInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/controller/LineControllerInterface;->getLineExtendedDTO()Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;->lineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    .line 28
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;->lineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->setTimestamp(Ljava/util/Date;)V

    .line 30
    new-instance v0, Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;

    .end local v0    # "entity":Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;
    invoke-direct {v0}, Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;-><init>()V

    .line 31
    .restart local v0    # "entity":Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;->timestamp:Ljava/util/Date;

    .line 33
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;->lineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;->objectToByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, v0, Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;->objectAsBytes:[B

    .line 34
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;->save()V

    .line 39
    :goto_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;->lineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    return-object v1

    .line 36
    :cond_1
    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;->objectAsBytes:[B

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;->byteArrayToObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/LineExtendedService;->lineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    goto :goto_0
.end method
