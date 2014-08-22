.class public Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "PropertyDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4c2741d4beb1dbd7L


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;->key:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;->value:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;->key:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;->value:Ljava/lang/String;

    .line 28
    return-void
.end method
