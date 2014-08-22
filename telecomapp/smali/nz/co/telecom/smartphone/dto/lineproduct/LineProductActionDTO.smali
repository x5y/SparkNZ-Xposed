.class public Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "LineProductActionDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1e3cd23e61c53d20L


# instance fields
.field private disabled:Z

.field private href:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisabled()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->disabled:Z

    return v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->href:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->href:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->type:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->disabled:Z

    .line 22
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->href:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->title:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->type:Ljava/lang/String;

    .line 46
    return-void
.end method
