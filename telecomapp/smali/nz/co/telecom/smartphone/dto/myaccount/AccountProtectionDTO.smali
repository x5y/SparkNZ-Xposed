.class public Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionDTO;
.super Ljava/lang/Object;
.source "AccountProtectionDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private protectionText:Ljava/lang/String;

.field private protectionTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProtectionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionDTO;->protectionText:Ljava/lang/String;

    return-object v0
.end method

.method public getProtectionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionDTO;->protectionTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setProtectionText(Ljava/lang/String;)V
    .locals 0
    .param p1, "protectionText"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionDTO;->protectionText:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setProtectionTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "protectionTitle"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionDTO;->protectionTitle:Ljava/lang/String;

    .line 16
    return-void
.end method
