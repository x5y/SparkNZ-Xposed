.class public Lnz/co/telecom/smartphone/service/dataservices/ConfigProfileService;
.super Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;
.source "ConfigProfileService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/dataservices/ConfigProfileServiceInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lnz/co/telecom/smartphone/service/dataservices/ConfigProfileService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/service/dataservices/ConfigProfileService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigProfileDTO(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;
    .locals 5
    .param p1, "forceRefresh"    # Z
    .param p2, "app"    # Ljava/lang/String;
    .param p3, "app_version"    # Ljava/lang/String;
    .param p4, "os_version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    sget-object v2, Lnz/co/telecom/smartphone/service/dataservices/ConfigProfileService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v2, Lnz/co/telecom/smartphone/service/dataservices/ConfigProfileService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app_version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-object v2, Lnz/co/telecom/smartphone/service/dataservices/ConfigProfileService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "os_version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 v0, 0x0

    .line 27
    .local v0, "configProfileDTO":Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;
    new-instance v2, Lcom/activeandroid/query/Select;

    invoke-direct {v2}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v3, Lnz/co/telecom/smartphone/entity/configprofile/ConfigProfileEntity;

    invoke-virtual {v2, v3}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v2

    invoke-virtual {v2}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/entity/configprofile/ConfigProfileEntity;

    .line 29
    .local v1, "entity":Lnz/co/telecom/smartphone/entity/configprofile/ConfigProfileEntity;
    if-nez p1, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, v1, Lnz/co/telecom/smartphone/entity/configprofile/ConfigProfileEntity;->timestamp:Ljava/util/Date;

    invoke-virtual {p0, v2}, Lnz/co/telecom/smartphone/service/dataservices/ConfigProfileService;->isExpired(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lnz/co/telecom/smartphone/entity/configprofile/ConfigProfileEntity;->objectAsBytes:[B

    if-nez v2, :cond_1

    .line 31
    :cond_0
    new-instance v2, Lcom/activeandroid/query/Delete;

    invoke-direct {v2}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v3, Lnz/co/telecom/smartphone/entity/configprofile/ConfigProfileEntity;

    invoke-virtual {v2, v3}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v2

    invoke-virtual {v2}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 33
    iget-object v2, p0, Lnz/co/telecom/smartphone/service/dataservices/ConfigProfileService;->mConfigController:Lnz/co/telecom/smartphone/controller/ConfigControllerInterface;

    invoke-interface {v2, p2, p3, p4}, Lnz/co/telecom/smartphone/controller/ConfigControllerInterface;->getConfigProfileDTO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;

    move-result-object v0

    .line 34
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;->setTimestamp(Ljava/util/Date;)V

    .line 36
    new-instance v1, Lnz/co/telecom/smartphone/entity/configprofile/ConfigProfileEntity;

    .end local v1    # "entity":Lnz/co/telecom/smartphone/entity/configprofile/ConfigProfileEntity;
    invoke-direct {v1}, Lnz/co/telecom/smartphone/entity/configprofile/ConfigProfileEntity;-><init>()V

    .line 37
    .restart local v1    # "entity":Lnz/co/telecom/smartphone/entity/configprofile/ConfigProfileEntity;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v1, Lnz/co/telecom/smartphone/entity/configprofile/ConfigProfileEntity;->timestamp:Ljava/util/Date;

    .line 39
    invoke-super {p0, v0}, Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;->objectToByteArray(Ljava/lang/Object;)[B

    move-result-object v2

    iput-object v2, v1, Lnz/co/telecom/smartphone/entity/configprofile/ConfigProfileEntity;->objectAsBytes:[B

    .line 40
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/entity/configprofile/ConfigProfileEntity;->save()V

    .line 45
    :goto_0
    return-object v0

    .line 42
    :cond_1
    iget-object v2, v1, Lnz/co/telecom/smartphone/entity/configprofile/ConfigProfileEntity;->objectAsBytes:[B

    invoke-virtual {p0, v2}, Lnz/co/telecom/smartphone/service/dataservices/ConfigProfileService;->byteArrayToObject([B)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "configProfileDTO":Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;
    check-cast v0, Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;

    .restart local v0    # "configProfileDTO":Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;
    goto :goto_0
.end method
