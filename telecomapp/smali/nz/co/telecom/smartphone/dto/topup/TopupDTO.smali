.class public Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
.super Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;
.source "TopupDTO.java"


# instance fields
.field private balance:D

.field private balanceDateTime:Ljava/util/Date;

.field private messages:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

.field private subscription_id:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public getBalance()D
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->balance:D

    return-wide v0
.end method

.method public getBalanceDateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->balanceDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getMessages()Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->messages:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

    return-object v0
.end method

.method public getSubscription_id()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->subscription_id:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setBalance(D)V
    .locals 0
    .param p1, "balance"    # D

    .prologue
    .line 30
    iput-wide p1, p0, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->balance:D

    .line 31
    return-void
.end method

.method public setBalanceDateTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "balanceDateTime"    # Ljava/util/Date;

    .prologue
    .line 38
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->balanceDateTime:Ljava/util/Date;

    .line 39
    return-void
.end method

.method public setMessages(Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;)V
    .locals 0
    .param p1, "messages"    # Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

    .prologue
    .line 54
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->messages:Lnz/co/telecom/smartphone/dto/creditcard/CreditCardMessagesDTO;

    .line 55
    return-void
.end method

.method public setSubscription_id(I)V
    .locals 0
    .param p1, "subscription_id"    # I

    .prologue
    .line 46
    iput p1, p0, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->subscription_id:I

    .line 47
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;->type:Ljava/lang/String;

    .line 20
    return-void
.end method
