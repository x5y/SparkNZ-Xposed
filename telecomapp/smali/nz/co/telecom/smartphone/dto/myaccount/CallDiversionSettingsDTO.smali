.class public Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;
.super Ljava/lang/Object;
.source "CallDiversionSettingsDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _links:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnz/co/telecom/smartphone/dto/myaccount/MyAccountLinkActionDTO;",
            ">;"
        }
    .end annotation
.end field

.field private callDiversionTitle:Ljava/lang/String;

.field private diversionOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;",
            ">;"
        }
    .end annotation
.end field

.field private selectedOptionId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallDiversionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;->callDiversionTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDiversionOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;->diversionOptions:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedOptionId()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;->selectedOptionId:I

    return v0
.end method

.method public get_links()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnz/co/telecom/smartphone/dto/myaccount/MyAccountLinkActionDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;->_links:Ljava/util/Map;

    return-object v0
.end method

.method public setCallDiversionTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "callDiversionTitle"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;->callDiversionTitle:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setDiversionOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "diversionOptions":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;->diversionOptions:Ljava/util/List;

    .line 39
    return-void
.end method

.method public setSelectedOptionId(I)V
    .locals 0
    .param p1, "selectedOptionId"    # I

    .prologue
    .line 30
    iput p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;->selectedOptionId:I

    .line 31
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
            "Lnz/co/telecom/smartphone/dto/myaccount/MyAccountLinkActionDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "_links":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnz/co/telecom/smartphone/dto/myaccount/MyAccountLinkActionDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;->_links:Ljava/util/Map;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 51
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    .local v3, "stringBuffer":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;->callDiversionTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;->selectedOptionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    iget-object v4, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;->diversionOptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;

    .line 56
    .local v0, "callDiversionOptionDTO":Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 59
    .end local v0    # "callDiversionOptionDTO":Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;
    :cond_0
    const-string v4, "\n_links\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    iget-object v4, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;->_links:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    .local v2, "mapKey":Ljava/lang/String;
    iget-object v4, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;->_links:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountLinkActionDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountLinkActionDTO;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 64
    .end local v2    # "mapKey":Ljava/lang/String;
    :cond_1
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
