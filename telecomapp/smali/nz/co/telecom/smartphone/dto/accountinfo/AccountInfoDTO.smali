.class public Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;
.super Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;
.source "AccountInfoDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x8b3764a00a940f2L


# instance fields
.field private amountOwing:D

.field private dueDate:Ljava/util/Date;

.field private timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/creditcard/CreditCardDTO;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public getAmountOwing()D
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;->amountOwing:D

    return-wide v0
.end method

.method public getDueDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;->dueDate:Ljava/util/Date;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public setAmountOwing(D)V
    .locals 0
    .param p1, "amountOwing"    # D

    .prologue
    .line 37
    iput-wide p1, p0, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;->amountOwing:D

    .line 38
    return-void
.end method

.method public setDueDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "dueDate"    # Ljava/util/Date;

    .prologue
    .line 45
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;->dueDate:Ljava/util/Date;

    .line 46
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 29
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/accountinfo/AccountInfoDTO;->timestamp:Ljava/util/Date;

    .line 30
    return-void
.end method
