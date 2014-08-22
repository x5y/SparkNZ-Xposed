.class public Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;
.super Ljava/lang/Object;
.source "CallDiversionOptionDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private divertToMobile:Ljava/lang/String;

.field private optionId:I

.field private optionText:Ljava/lang/String;

.field private ringOptions:Lnz/co/telecom/smartphone/dto/myaccount/CallDivertRingOptionsDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDivertToMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->divertToMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionId()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->optionId:I

    return v0
.end method

.method public getOptionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->optionText:Ljava/lang/String;

    return-object v0
.end method

.method public getRingOptions()Lnz/co/telecom/smartphone/dto/myaccount/CallDivertRingOptionsDTO;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->ringOptions:Lnz/co/telecom/smartphone/dto/myaccount/CallDivertRingOptionsDTO;

    return-object v0
.end method

.method public setDivertToMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "divertToMobile"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->divertToMobile:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setOptionId(I)V
    .locals 0
    .param p1, "optionId"    # I

    .prologue
    .line 17
    iput p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->optionId:I

    .line 18
    return-void
.end method

.method public setOptionText(Ljava/lang/String;)V
    .locals 0
    .param p1, "optionText"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->optionText:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setRingOptions(Lnz/co/telecom/smartphone/dto/myaccount/CallDivertRingOptionsDTO;)V
    .locals 0
    .param p1, "ringOptions"    # Lnz/co/telecom/smartphone/dto/myaccount/CallDivertRingOptionsDTO;

    .prologue
    .line 41
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->ringOptions:Lnz/co/telecom/smartphone/dto/myaccount/CallDivertRingOptionsDTO;

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    .local v0, "stringBuffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\noptionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->optionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "optiontext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->optionText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "divertToMobile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->divertToMobile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    iget-object v1, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->ringOptions:Lnz/co/telecom/smartphone/dto/myaccount/CallDivertRingOptionsDTO;

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringOptions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionOptionDTO;->ringOptions:Lnz/co/telecom/smartphone/dto/myaccount/CallDivertRingOptionsDTO;

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/myaccount/CallDivertRingOptionsDTO;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
