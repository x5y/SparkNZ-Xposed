.class public Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "ExtrasCatalogueProductGroupsDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x66a060064ef89abfL


# instance fields
.field private disabledMessageUsageType:Ljava/lang/String;

.field private products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;",
            ">;"
        }
    .end annotation
.end field

.field private usageType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getDisabledMessageUsageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;->disabledMessageUsageType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;->disabledMessageUsageType:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;->products:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;->products:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getUsageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;->usageType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;->usageType:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setDisabledMessageUsageType(Ljava/lang/String;)V
    .locals 0
    .param p1, "disabledMessageUsageType"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;->disabledMessageUsageType:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setProducts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;->products:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setUsageType(Ljava/lang/String;)V
    .locals 0
    .param p1, "usageType"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;->usageType:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    .local v0, "classDescription":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usageType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;->usageType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disabledMessageUsageProduct : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;->disabledMessageUsageType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
