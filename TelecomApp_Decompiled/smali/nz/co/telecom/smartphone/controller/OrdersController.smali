.class public Lnz/co/telecom/smartphone/controller/OrdersController;
.super Lnz/co/telecom/smartphone/controller/BaseController;
.source "OrdersController.java"

# interfaces
.implements Lnz/co/telecom/smartphone/controller/OrdersControllerInterface;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private ordersService:Lnz/co/telecom/smartphone/service/OrdersServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lnz/co/telecom/smartphone/controller/OrdersController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/controller/OrdersController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lnz/co/telecom/smartphone/controller/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrdersListDTO()Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    const/4 v1, 0x0

    .line 22
    .local v1, "result":Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;
    :try_start_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/controller/OrdersController;->ordersService:Lnz/co/telecom/smartphone/service/OrdersServiceInterface;

    const-string v3, "ENDPOINT_ORDERS_LIST"

    invoke-static {v3}, Lnz/co/telecom/smartphone/Profile;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lnz/co/telecom/smartphone/service/OrdersServiceInterface;->getOrdersListDTO(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;
    :try_end_0
    .catch Lnz/co/telecom/smartphone/service/HttpServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 27
    return-object v1

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Lnz/co/telecom/smartphone/service/HttpServiceException;
    sget-object v2, Lnz/co/telecom/smartphone/controller/OrdersController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    throw v0
.end method
