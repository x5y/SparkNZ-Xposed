.class public Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataService;
.super Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;
.source "MyAccountDataService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataServiceInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataService;->TAG:Ljava/lang/String;

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
.method public getMyAccountDTO()Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;
    .locals 3

    .prologue
    .line 45
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataService;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataService;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataService;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    .line 57
    :goto_0
    return-object v1

    .line 49
    :cond_0
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/myaccount/MyAccountEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/entity/myaccount/MyAccountEntity;

    .line 51
    .local v0, "entity":Lnz/co/telecom/smartphone/entity/myaccount/MyAccountEntity;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/myaccount/MyAccountEntity;->timestamp:Ljava/util/Date;

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 55
    :cond_2
    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/myaccount/MyAccountEntity;->objectAsBytes:[B

    invoke-super {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;->byteArrayToObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataService;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    .line 57
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataService;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    goto :goto_0
.end method

.method public getMyAccountDTO(Z)Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;
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

    const-class v2, Lnz/co/telecom/smartphone/entity/myaccount/MyAccountEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/entity/myaccount/MyAccountEntity;

    .line 25
    .local v0, "entity":Lnz/co/telecom/smartphone/entity/myaccount/MyAccountEntity;
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/myaccount/MyAccountEntity;->timestamp:Ljava/util/Date;

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    :cond_0
    new-instance v1, Lcom/activeandroid/query/Delete;

    invoke-direct {v1}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/myaccount/MyAccountEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 28
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataService;->mMyAccountController:Lnz/co/telecom/smartphone/controller/MyAccountControllerInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/controller/MyAccountControllerInterface;->getMyAccountDTO()Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataService;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    .line 29
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataService;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->setTimestamp(Ljava/util/Date;)V

    .line 31
    new-instance v0, Lnz/co/telecom/smartphone/entity/myaccount/MyAccountEntity;

    .end local v0    # "entity":Lnz/co/telecom/smartphone/entity/myaccount/MyAccountEntity;
    invoke-direct {v0}, Lnz/co/telecom/smartphone/entity/myaccount/MyAccountEntity;-><init>()V

    .line 32
    .restart local v0    # "entity":Lnz/co/telecom/smartphone/entity/myaccount/MyAccountEntity;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lnz/co/telecom/smartphone/entity/myaccount/MyAccountEntity;->timestamp:Ljava/util/Date;

    .line 33
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataService;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    invoke-super {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;->objectToByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, v0, Lnz/co/telecom/smartphone/entity/myaccount/MyAccountEntity;->objectAsBytes:[B

    .line 34
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/entity/myaccount/MyAccountEntity;->save()V

    .line 39
    :goto_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataService;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    return-object v1

    .line 36
    :cond_1
    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/myaccount/MyAccountEntity;->objectAsBytes:[B

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataService;->byteArrayToObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/MyAccountDataService;->mMyAccountDTO:Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;

    goto :goto_0
.end method
