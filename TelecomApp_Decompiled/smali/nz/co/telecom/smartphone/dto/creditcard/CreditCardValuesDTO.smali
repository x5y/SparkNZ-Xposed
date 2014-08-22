.class public Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "CreditCardValuesDTO.java"


# instance fields
.field public code:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->code:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->code:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->message:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->code:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->message:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardValuesDTO;->title:Ljava/lang/String;

    .line 28
    return-void
.end method
