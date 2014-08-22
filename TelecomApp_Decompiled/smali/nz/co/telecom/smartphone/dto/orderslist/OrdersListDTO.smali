.class public Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "OrdersListDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4b24a286cdf5305dL


# instance fields
.field private orders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public getOrders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;->orders:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;->orders:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public setOrders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "orders":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;->orders:Ljava/util/List;

    .line 35
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 26
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;->timestamp:Ljava/util/Date;

    .line 27
    return-void
.end method
