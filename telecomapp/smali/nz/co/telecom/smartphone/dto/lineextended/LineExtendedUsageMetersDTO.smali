.class public Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "LineExtendedUsageMetersDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x318c0fae9eb45c8bL


# instance fields
.field private amountUsed:F

.field private cap:F

.field private lineAmountUsed:F

.field private periodEnd:Ljava/util/Date;

.field private periodEndLabel:Ljava/lang/String;

.field private productInstanceId:Ljava/lang/String;

.field private remainingLabel:Ljava/lang/String;

.field private secondCap:F

.field private title:Ljava/lang/String;

.field private usageLabel:Ljava/lang/String;

.field private usageType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public getAmountUsed()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->amountUsed:F

    return v0
.end method

.method public getCap()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->cap:F

    return v0
.end method

.method public getLineAmountUsed()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->lineAmountUsed:F

    return v0
.end method

.method public getPeriodEnd()Ljava/util/Date;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->periodEnd:Ljava/util/Date;

    return-object v0
.end method

.method public getPeriodEndLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->periodEndLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->periodEndLabel:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getProductInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->productInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainingLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->remainingLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->remainingLabel:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSecondCap()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->secondCap:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getUsageLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->usageLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->usageLabel:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getUsageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->usageType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->usageType:Ljava/lang/String;

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
    .line 75
    iput p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->amountUsed:F

    .line 76
    return-void
.end method

.method public setCap(F)V
    .locals 0
    .param p1, "cap"    # F

    .prologue
    .line 91
    iput p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->cap:F

    .line 92
    return-void
.end method

.method public setLineAmountUsed(F)V
    .locals 0
    .param p1, "lineAmountUsed"    # F

    .prologue
    .line 83
    iput p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->lineAmountUsed:F

    .line 84
    return-void
.end method

.method public setPeriodEnd(Ljava/util/Date;)V
    .locals 0
    .param p1, "periodEnd"    # Ljava/util/Date;

    .prologue
    .line 107
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->periodEnd:Ljava/util/Date;

    .line 108
    return-void
.end method

.method public setPeriodEndLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "periodEndLabel"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->periodEndLabel:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setProductInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "productInstanceId"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->productInstanceId:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setRemainingLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "remainingLabel"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->remainingLabel:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setSecondCap(F)V
    .locals 0
    .param p1, "secondCap"    # F

    .prologue
    .line 99
    iput p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->secondCap:F

    .line 100
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->title:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setUsageLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "usageLabel"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->usageLabel:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setUsageType(Ljava/lang/String;)V
    .locals 0
    .param p1, "usageType"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->usageType:Ljava/lang/String;

    .line 116
    return-void
.end method
