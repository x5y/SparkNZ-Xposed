.class public Lnz/co/telecom/smartphone/service/dataservices/OrdersListService;
.super Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;
.source "OrdersListService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/dataservices/OrdersListServiceInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private ordersListDTO:Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lnz/co/telecom/smartphone/service/dataservices/OrdersListService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/service/dataservices/OrdersListService;->TAG:Ljava/lang/String;

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
.method public getOrdersListDTO()Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;
    .locals 3

    .prologue
    .line 46
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/OrdersListService;->ordersListDTO:Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/OrdersListService;->ordersListDTO:Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/OrdersListService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/OrdersListService;->ordersListDTO:Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    .line 59
    :goto_0
    return-object v1

    .line 50
    :cond_0
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;

    .line 52
    .local v0, "entity":Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;->timestamp:Ljava/util/Date;

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/OrdersListService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;->objectAsBytes:[B

    if-nez v1, :cond_2

    .line 54
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 57
    :cond_2
    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;->objectAsBytes:[B

    invoke-super {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;->byteArrayToObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/OrdersListService;->ordersListDTO:Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    .line 59
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/OrdersListService;->ordersListDTO:Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    goto :goto_0
.end method

.method public getOrdersListDTO(Z)Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;
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

    const-class v2, Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;

    .line 25
    .local v0, "entity":Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;->timestamp:Ljava/util/Date;

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/OrdersListService;->isExpired(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;->objectAsBytes:[B

    if-nez v1, :cond_1

    .line 27
    :cond_0
    new-instance v1, Lcom/activeandroid/query/Delete;

    invoke-direct {v1}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v2, Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 29
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/OrdersListService;->mOrdersController:Lnz/co/telecom/smartphone/controller/OrdersControllerInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/controller/OrdersControllerInterface;->getOrdersListDTO()Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/OrdersListService;->ordersListDTO:Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    .line 30
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/OrdersListService;->ordersListDTO:Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;->setTimestamp(Ljava/util/Date;)V

    .line 32
    new-instance v0, Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;

    .end local v0    # "entity":Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;
    invoke-direct {v0}, Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;-><init>()V

    .line 33
    .restart local v0    # "entity":Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;->timestamp:Ljava/util/Date;

    .line 34
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/OrdersListService;->ordersListDTO:Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    invoke-super {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/AbstractDataServicesService;->objectToByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, v0, Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;->objectAsBytes:[B

    .line 35
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;->save()V

    .line 40
    :goto_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/OrdersListService;->ordersListDTO:Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    return-object v1

    .line 37
    :cond_1
    iget-object v1, v0, Lnz/co/telecom/smartphone/entity/orderslist/OrdersListEntity;->objectAsBytes:[B

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/service/dataservices/OrdersListService;->byteArrayToObject([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    iput-object v1, p0, Lnz/co/telecom/smartphone/service/dataservices/OrdersListService;->ordersListDTO:Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;

    goto :goto_0
.end method
