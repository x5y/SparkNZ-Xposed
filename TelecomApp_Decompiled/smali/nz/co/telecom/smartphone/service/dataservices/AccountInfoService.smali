.class public Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;
.super Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;
.source "AccountInfoService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/dataservices/AccountInfoServiceInterface;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountInfoDTO(Ljava/util/List;)Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;
    .locals 3
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

    .prologue
    .line 55
    .local p1, "urlParameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;->accountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;->accountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;->accountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    .line 71
    :goto_0
    return-object v1

    .line 60
    :cond_0
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;

    .line 63
    .local v0, "entity":Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;->timestamp:Ljava/util/Date;

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;->objectAsBytes:[B

    if-nez v1, :cond_2

    .line 65
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;->objectAsBytes:[B

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;->byteArrayToObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;->accountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    .line 71
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;->accountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    goto :goto_0
.end method

.method public getAccountInfoDTO(ZLjava/util/List;)Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;
    .locals 3
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "urlParameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;

    .line 30
    .local v0, "entity":Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;->timestamp:Ljava/util/Date;

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;->objectAsBytes:[B

    if-nez v1, :cond_2

    .line 32
    :cond_0
    new-instance v1, Lcom/activeandroid/query/Delete;

    invoke-direct {v1}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 34
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;->mAccountController:Lnz/co/telecom/smartphone/controller/AccountControllerInterface;

    invoke-interface {v1, p2}, Lnz/co/telecom/smartphone/controller/AccountControllerInterface;->getAccountInfoDTO(Ljava/util/List;)Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;->accountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    .line 35
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;->accountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    if-nez v1, :cond_1

    .line 36
    new-instance v1, Lnz/co/telecom/smartphone/service/HttpServiceException;

    const-string v2, "acccountInfoDTO is null"

    invoke-direct {v1, v2}, Lnz/co/telecom/smartphone/service/HttpServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_1
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;->accountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;->setTimestamp(Ljava/util/Date;)V

    .line 41
    new-instance v0, Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;

    .end local v0    # "entity":Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;
    invoke-direct {v0}, Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;-><init>()V

    .line 42
    .restart local v0    # "entity":Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;->timestamp:Ljava/util/Date;

    .line 43
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;->accountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;->objectToByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, v0, Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;->objectAsBytes:[B

    .line 44
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;->save()V

    .line 50
    :goto_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;->accountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    return-object v1

    .line 46
    :cond_2
    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;->objectAsBytes:[B

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;->byteArrayToObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/AccountInfoService;->accountInfoDTO:Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;

    goto :goto_0
.end method
