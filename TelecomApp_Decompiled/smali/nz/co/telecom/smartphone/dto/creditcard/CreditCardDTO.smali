.class public Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;
.super Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;
.source "CreditCardDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3fc64da06b4bb050L


# instance fields
.field private amount:I

.field private balance:F

.field private billingResult:I

.field private channel:Ljava/lang/String;

.field private customerNumber:Ljava/lang/String;

.field private customerReference:Ljava/lang/String;

.field private declineCode:I

.field private ippReceiptNumber:I

.field private messages:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

.field private result:I

.field private sessionId:Ljava/lang/String;

.field private sst:Ljava/lang/String;

.field private transactionDateTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->amount:I

    return v0
.end method

.method public getBalance()F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->balance:F

    return v0
.end method

.method public getBillingResult()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->billingResult:I

    return v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->channel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->channel:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getCustomerNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->customerNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->customerNumber:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getCustomerReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->customerReference:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->customerNumber:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDeclineCode()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->declineCode:I

    return v0
.end method

.method public getIppReceiptNumber()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->ippReceiptNumber:I

    return v0
.end method

.method public getMessages()Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->messages:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->result:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSst()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->sst:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->sst:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTransactionDateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->transactionDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public setAmount(I)V
    .locals 0
    .param p1, "amount"    # I

    .prologue
    .line 87
    iput p1, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->amount:I

    .line 88
    return-void
.end method

.method public setBalance(F)V
    .locals 0
    .param p1, "balance"    # F

    .prologue
    .line 39
    iput p1, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->balance:F

    .line 40
    return-void
.end method

.method public setBillingResult(I)V
    .locals 0
    .param p1, "billingResult"    # I

    .prologue
    .line 103
    iput p1, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->billingResult:I

    .line 104
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->channel:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setCustomerNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "customerNumber"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->customerNumber:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setCustomerReference(Ljava/lang/String;)V
    .locals 0
    .param p1, "customerReference"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->customerReference:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setDeclineCode(I)V
    .locals 0
    .param p1, "declineCode"    # I

    .prologue
    .line 71
    iput p1, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->declineCode:I

    .line 72
    return-void
.end method

.method public setIppReceiptNumber(I)V
    .locals 0
    .param p1, "ippReceiptNumber"    # I

    .prologue
    .line 79
    iput p1, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->ippReceiptNumber:I

    .line 80
    return-void
.end method

.method public setMessages(Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;)V
    .locals 0
    .param p1, "messages"    # Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

    .prologue
    .line 31
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->messages:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

    .line 32
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 63
    iput p1, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->result:I

    .line 64
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->sessionId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSst(Ljava/lang/String;)V
    .locals 0
    .param p1, "sst"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->sst:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setTransactionDateTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "transactionDateTime"    # Ljava/util/Date;

    .prologue
    .line 119
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;->transactionDateTime:Ljava/util/Date;

    .line 120
    return-void
.end method
