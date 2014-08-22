.class public Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "ProductGroupDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x23e1c9ff42a0c44bL


# instance fields
.field private allowPurchase:Z

.field private disabledMessageUsageType:Ljava/lang/String;

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;",
            ">;"
        }
    .end annotation
.end field

.field private products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private usageType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllowPurchase()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->allowPurchase:Z

    return v0
.end method

.method public getDisabledMessageUsageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->disabledMessageUsageType:Ljava/lang/String;

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->messages:Ljava/util/List;

    return-object v0
.end method

.method public getProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->products:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->products:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUsageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->usageType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->usageType:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setAllowPurchase(Z)V
    .locals 0
    .param p1, "allowPurchase"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->allowPurchase:Z

    .line 27
    return-void
.end method

.method public setDisabledMessageUsageType(Ljava/lang/String;)V
    .locals 0
    .param p1, "disabledMessageUsageType"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->disabledMessageUsageType:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->messages:Ljava/util/List;

    .line 43
    return-void
.end method

.method public setProducts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->products:Ljava/util/List;

    .line 51
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->title:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setUsageType(Ljava/lang/String;)V
    .locals 0
    .param p1, "usageType"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->usageType:Ljava/lang/String;

    .line 67
    return-void
.end method
