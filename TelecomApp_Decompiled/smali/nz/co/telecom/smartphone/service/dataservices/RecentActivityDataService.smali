.class public Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;
.super Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;
.source "RecentActivityDataService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataServiceInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private recentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;->TAG:Ljava/lang/String;

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
.method public getRecentActivityDTO()Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;->recentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;->recentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;->recentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    .line 71
    :goto_0
    return-object v1

    .line 62
    :cond_0
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/recentactivity/RecentActivityEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/entity/recentactivity/RecentActivityEntity;

    .line 64
    .local v0, "entity":Lnz/co/telecom/smartphone/entity/recentactivity/RecentActivityEntity;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/recentactivity/RecentActivityEntity;->timestamp:Ljava/util/Date;

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/recentactivity/RecentActivityEntity;->objectAsBytes:[B

    if-nez v1, :cond_2

    .line 66
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 69
    :cond_2
    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/recentactivity/RecentActivityEntity;->objectAsBytes:[B

    invoke-super {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;->byteArrayToObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;->recentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    .line 71
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;->recentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    goto :goto_0
.end method

.method public getRecentActivityDTO(Z)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;
    .locals 3
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/recentactivity/RecentActivityEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/entity/recentactivity/RecentActivityEntity;

    .line 37
    .local v0, "entity":Lnz/co/telecom/smartphone/entity/recentactivity/RecentActivityEntity;
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/recentactivity/RecentActivityEntity;->timestamp:Ljava/util/Date;

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/recentactivity/RecentActivityEntity;->objectAsBytes:[B

    if-nez v1, :cond_1

    .line 39
    :cond_0
    new-instance v1, Lcom/activeandroid/query/Delete;

    invoke-direct {v1}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/overseasusage/OverseasUsageEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 41
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;->mRecentActivityController:Lnz/co/telecom/smartphone/controller/RecentActivityControllerInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/controller/RecentActivityControllerInterface;->getRecentActivityDTO()Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;->recentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    .line 42
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;->recentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;->setTimestamp(Ljava/util/Date;)V

    .line 44
    new-instance v0, Lnz/co/telecom/smartphone/entity/recentactivity/RecentActivityEntity;

    .end local v0    # "entity":Lnz/co/telecom/smartphone/entity/recentactivity/RecentActivityEntity;
    invoke-direct {v0}, Lnz/co/telecom/smartphone/entity/recentactivity/RecentActivityEntity;-><init>()V

    .line 45
    .restart local v0    # "entity":Lnz/co/telecom/smartphone/entity/recentactivity/RecentActivityEntity;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lnz/co/telecom/smartphone/entity/recentactivity/RecentActivityEntity;->timestamp:Ljava/util/Date;

    .line 46
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;->recentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    invoke-super {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;->objectToByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, v0, Lnz/co/telecom/smartphone/entity/recentactivity/RecentActivityEntity;->objectAsBytes:[B

    .line 47
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/entity/recentactivity/RecentActivityEntity;->save()V

    .line 52
    :goto_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;->recentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    return-object v1

    .line 49
    :cond_1
    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/recentactivity/RecentActivityEntity;->objectAsBytes:[B

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;->byteArrayToObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;->recentActivityDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityDTO;

    goto :goto_0
.end method

.method public getRecentActivityOptionState()Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;->mRecentActivityController:Lnz/co/telecom/smartphone/controller/RecentActivityControllerInterface;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/controller/RecentActivityControllerInterface;->getRecentActivityOptionState()Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;

    move-result-object v0

    return-object v0
.end method

.method public setRecentActivityOptionState(Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;)V
    .locals 1
    .param p1, "optionState"    # Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;

    .prologue
    .line 29
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/dataservices/RecentActivityDataService;->mRecentActivityController:Lnz/co/telecom/smartphone/controller/RecentActivityControllerInterface;

    invoke-interface {v0, p1}, Lnz/co/telecom/smartphone/controller/RecentActivityControllerInterface;->setRecentActivityOptionState(Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;)V

    .line 30
    return-void
.end method
