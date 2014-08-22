.class public Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "ExtrasCatalogueProductsDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6a10229b8fae2369L


# instance fields
.field private _links:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;",
            ">;"
        }
    .end annotation
.end field

.field private chargePeriod:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueComponentsDTO;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private details:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDetailsDTO;",
            ">;"
        }
    .end annotation
.end field

.field private disabled:Z

.field private disabledMessageProduct:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private price:D

.field private termsConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueTermsConditionsDTO;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public getChargePeriod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->chargePeriod:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->chargePeriod:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->code:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->code:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueComponentsDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->components:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->components:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->description:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDetailsDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->details:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->details:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getDisabled()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->disabled:Z

    return v0
.end method

.method public getDisabledMessageProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->disabledMessageProduct:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->disabledMessageProduct:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->id:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->price:D

    return-wide v0
.end method

.method public getTermsConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueTermsConditionsDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->termsConditions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->termsConditions:Ljava/util/List;

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
    .line 60
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public get_links()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->_links:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->_links:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public setChargePeriod(Ljava/lang/String;)V
    .locals 0
    .param p1, "chargePeriod"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->chargePeriod:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->code:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setComponents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueComponentsDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueComponentsDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->components:Ljava/util/List;

    .line 121
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->description:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDetailsDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "details":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDetailsDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->details:Ljava/util/List;

    .line 113
    return-void
.end method

.method public setDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->disabled:Z

    .line 89
    return-void
.end method

.method public setDisabledMessageProduct(Ljava/lang/String;)V
    .locals 0
    .param p1, "disabledMessageProduct"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->disabledMessageProduct:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->id:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setPrice(D)V
    .locals 0
    .param p1, "price"    # D

    .prologue
    .line 80
    iput-wide p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->price:D

    .line 81
    return-void
.end method

.method public setTermsConditions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueTermsConditionsDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "termsConditions":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueTermsConditionsDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->termsConditions:Ljava/util/List;

    .line 105
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->title:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public set_links(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "_links":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->_links:Ljava/util/Map;

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 136
    .local v0, "classDescription":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disabledMessageProduct : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->disabledMessageProduct:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "description : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "price : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->price:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->disabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chargePeriod : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->chargePeriod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
