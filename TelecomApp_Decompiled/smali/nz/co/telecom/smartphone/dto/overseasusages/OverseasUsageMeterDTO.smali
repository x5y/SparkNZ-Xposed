.class public Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "OverseasUsageMeterDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x318c0fae9eb45c8bL


# instance fields
.field private amountUsed:F

.field private cap:F

.field private lineAmountUsed:F

.field private remainingLabel:Ljava/lang/String;

.field private secondCap:F

.field private title:Ljava/lang/String;

.field private usageLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public getAmountUsed()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->amountUsed:F

    return v0
.end method

.method public getCap()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->cap:F

    return v0
.end method

.method public getLineAmountUsed()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->lineAmountUsed:F

    return v0
.end method

.method public getRemainingLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->remainingLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->remainingLabel:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSecondCap()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->secondCap:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getUsageLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->usageLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->usageLabel:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setAmountUsed(F)V
    .locals 0
    .param p1, "amountUsed"    # F

    .prologue
    .line 54
    iput p1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->amountUsed:F

    .line 55
    return-void
.end method

.method public setCap(F)V
    .locals 0
    .param p1, "cap"    # F

    .prologue
    .line 70
    iput p1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->cap:F

    .line 71
    return-void
.end method

.method public setLineAmountUsed(F)V
    .locals 0
    .param p1, "lineAmountUsed"    # F

    .prologue
    .line 62
    iput p1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->lineAmountUsed:F

    .line 63
    return-void
.end method

.method public setRemainingLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "remainingLabel"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->remainingLabel:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setSecondCap(F)V
    .locals 0
    .param p1, "secondCap"    # F

    .prologue
    .line 78
    iput p1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->secondCap:F

    .line 79
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->title:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setUsageLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "usageLabel"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/overseasusages/OverseasUsageMeterDTO;->usageLabel:Ljava/lang/String;

    .line 39
    return-void
.end method
