.class public Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "ExtrasCatalogueDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x49a94fdbf5366524L


# instance fields
.field private balance:D

.field private disabledMessageAccount:Ljava/lang/String;

.field private productGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public getBalance()D
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;->balance:D

    return-wide v0
.end method

.method public getDisabledMessageAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;->disabledMessageAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;->disabledMessageAccount:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getProductGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;->productGroups:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;->productGroups:Ljava/util/List;

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
    .line 25
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;->timestamp:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;->timestamp:Ljava/util/Date;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public setBalance(D)V
    .locals 0
    .param p1, "balance"    # D

    .prologue
    .line 37
    iput-wide p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;->balance:D

    .line 38
    return-void
.end method

.method public setDisabledMessageAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "disabledMessageAccount"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;->disabledMessageAccount:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setProductGroups(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "productGroups":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;->productGroups:Ljava/util/List;

    .line 54
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 29
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;->timestamp:Ljava/util/Date;

    .line 30
    return-void
.end method
