.class public Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "MyAccountDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private accountProtection:Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionsDTO;

.field private callDiversion:Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;

.field private callManagementSettings:Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;

.field private timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountProtection()Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionsDTO;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->accountProtection:Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionsDTO;

    return-object v0
.end method

.method public getCallDiversion()Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->callDiversion:Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;

    return-object v0
.end method

.method public getCallManagementSettings()Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->callManagementSettings:Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public setAccountProtection(Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionsDTO;)V
    .locals 0
    .param p1, "accountProtection"    # Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionsDTO;

    .prologue
    .line 37
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->accountProtection:Lnz/co/telecom/smartphone/dto/myaccount/AccountProtectionsDTO;

    .line 38
    return-void
.end method

.method public setCallDiversion(Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;)V
    .locals 0
    .param p1, "callDiversion"    # Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;

    .prologue
    .line 29
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->callDiversion:Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;

    .line 30
    return-void
.end method

.method public setCallManagementSettings(Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;)V
    .locals 0
    .param p1, "callSettings"    # Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;

    .prologue
    .line 21
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->callManagementSettings:Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;

    .line 22
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 45
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountDTO;->timestamp:Ljava/util/Date;

    .line 46
    return-void
.end method
