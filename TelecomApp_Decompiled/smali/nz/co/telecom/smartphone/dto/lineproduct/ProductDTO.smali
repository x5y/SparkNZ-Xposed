.class public Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "ProductDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x68f9e574b940ba66L


# instance fields
.field private _embedded:Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

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

.field private additionalDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/DetailGroupDTO;",
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
            "Lnz/co/telecom/smartphone/dto/lineproduct/ComponentDTO;",
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
            "Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;",
            ">;"
        }
    .end annotation
.end field

.field private periodEnd:Ljava/util/Date;

.field private periodEndLabel:Ljava/lang/String;

.field private price:D

.field private termsConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/TermsConditionsDTO;",
            ">;"
        }
    .end annotation
.end field

.field private testable:Z

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdditionalDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/DetailGroupDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->additionalDetails:Ljava/util/List;

    return-object v0
.end method

.method public getChargePeriod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->chargePeriod:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->code:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->code:Ljava/lang/String;

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
            "Lnz/co/telecom/smartphone/dto/lineproduct/ComponentDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->components:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->details:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->details:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->id:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->labels:Ljava/util/List;

    return-object v0
.end method

.method public getPeriodEnd()Ljava/util/Date;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->periodEnd:Ljava/util/Date;

    return-object v0
.end method

.method public getPeriodEndLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->periodEndLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->price:D

    return-wide v0
.end method

.method public getTermsConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/TermsConditionsDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->termsConditions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->termsConditions:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getTestable()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->testable:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->type:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public get_embedded()Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->_embedded:Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    return-object v0
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
    .line 165
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->_links:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->_links:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public setAdditionalDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/DetailGroupDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "additionalDetails":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineproduct/DetailGroupDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->additionalDetails:Ljava/util/List;

    .line 42
    return-void
.end method

.method public setChargePeriod(Ljava/lang/String;)V
    .locals 0
    .param p1, "chargePeriod"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->chargePeriod:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->code:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setComponents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/ComponentDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineproduct/ComponentDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->components:Ljava/util/List;

    .line 66
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->description:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "details":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->details:Ljava/util/List;

    .line 74
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->id:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setLabels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->labels:Ljava/util/List;

    .line 98
    return-void
.end method

.method public setPeriodEnd(Ljava/util/Date;)V
    .locals 0
    .param p1, "periodEnd"    # Ljava/util/Date;

    .prologue
    .line 105
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->periodEnd:Ljava/util/Date;

    .line 106
    return-void
.end method

.method public setPeriodEndLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "periodEndLabel"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->periodEndLabel:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setPrice(D)V
    .locals 0
    .param p1, "price"    # D

    .prologue
    .line 121
    iput-wide p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->price:D

    .line 122
    return-void
.end method

.method public setTermsConditions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/TermsConditionsDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "termsConditions":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineproduct/TermsConditionsDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->termsConditions:Ljava/util/List;

    .line 130
    return-void
.end method

.method public setTestable(Z)V
    .locals 0
    .param p1, "testable"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->testable:Z

    .line 138
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->title:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->type:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public set_embedded(Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;)V
    .locals 0
    .param p1, "_embedded"    # Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    .prologue
    .line 161
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->_embedded:Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    .line 162
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
    .line 169
    .local p1, "_links":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->_links:Ljava/util/Map;

    .line 170
    return-void
.end method
