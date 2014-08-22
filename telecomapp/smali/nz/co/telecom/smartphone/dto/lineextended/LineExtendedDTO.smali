.class public Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "LineExtendedDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final K_POST_PAID:Ljava/lang/String; = "postpaid"

.field private static final K_PRE_PAID:Ljava/lang/String; = "prepaid"

.field private static final serialVersionUID:J = -0xd08cf7959a8c74aL


# instance fields
.field private balance:D

.field private balanceDateTime:Ljava/util/Date;

.field private billPaymentAvailable:Z

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;",
            ">;"
        }
    .end annotation
.end field

.field private nextBillDueDateTime:Ljava/util/Date;

.field private phoneNumber:Ljava/lang/String;

.field private timestamp:Ljava/util/Date;

.field private type:Ljava/lang/String;

.field private usageMeterGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public getBalance()D
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->balance:D

    return-wide v0
.end method

.method public getBalanceDateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->balanceDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getBillPaymentAvailable()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->billPaymentAvailable:Z

    return v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->messages:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->messages:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getNextBillDueDateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->nextBillDueDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->phoneNumber:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUsageMeterGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->usageMeterGroups:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->usageMeterGroups:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public isPostPaid()Z
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "postpaid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPrePaid()Z
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "prepaid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBalance(D)V
    .locals 0
    .param p1, "balance"    # D

    .prologue
    .line 82
    iput-wide p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->balance:D

    .line 83
    return-void
.end method

.method public setBalanceDateTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "balanceDateTime"    # Ljava/util/Date;

    .prologue
    .line 90
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->balanceDateTime:Ljava/util/Date;

    .line 91
    return-void
.end method

.method public setBillPaymentAvailable(Z)V
    .locals 0
    .param p1, "billPaymentAvailable"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->billPaymentAvailable:Z

    .line 107
    return-void
.end method

.method public setMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->messages:Ljava/util/List;

    .line 115
    return-void
.end method

.method public setNextBillDueDateTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "nextBillDueDateTime"    # Ljava/util/Date;

    .prologue
    .line 98
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->nextBillDueDateTime:Ljava/util/Date;

    .line 99
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->phoneNumber:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 58
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->timestamp:Ljava/util/Date;

    .line 59
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .end local p1    # "type":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->type:Ljava/lang/String;

    .line 75
    return-void

    .line 74
    .restart local p1    # "type":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setUsageMeterGroups(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "usageMeterGroups":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMeterGroupsDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->usageMeterGroups:Ljava/util/List;

    .line 123
    return-void
.end method
