.class public Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "OrdersListOrdersDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x582b396b00d207c9L


# instance fields
.field private action:Ljava/lang/String;

.field private date:Ljava/util/Date;

.field private result:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->action:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->result:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->result:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->type:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isOrderTypeFailed()Z
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isResultFailed()Z
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->getResult()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isResultInProgress()Z
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->getResult()Ljava/lang/String;

    move-result-object v0

    const-string v1, "In Progress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isResultPending()Z
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->getResult()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pending"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isResultSuccess()Z
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->getResult()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Successful"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->getResult()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->action:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 83
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->date:Ljava/util/Date;

    .line 84
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->result:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->title:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->type:Ljava/lang/String;

    .line 76
    return-void
.end method
