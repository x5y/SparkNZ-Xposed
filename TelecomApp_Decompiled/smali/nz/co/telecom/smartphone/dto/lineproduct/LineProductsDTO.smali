.class public Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "LineProductsDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x752de7917983da95L


# instance fields
.field private productGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;",
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
.method public getProductGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;->productGroups:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;->productGroups:Ljava/util/List;

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
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public setProductGroups(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "lineProductGroups":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;->productGroups:Ljava/util/List;

    .line 35
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 26
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;->timestamp:Ljava/util/Date;

    .line 27
    return-void
.end method
