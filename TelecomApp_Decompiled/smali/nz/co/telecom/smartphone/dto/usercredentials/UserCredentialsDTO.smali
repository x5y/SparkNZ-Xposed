.class public Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "UserCredentialsDTO.java"


# instance fields
.field private isAutoSignin:Z

.field private sessionToken:Ljava/lang/String;

.field private userAccountNumber:Ljava/lang/String;

.field private userMobileNumber:Ljava/lang/String;

.field private userMobileNumberPrevious:Ljava/lang/String;

.field private userPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->sessionToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->sessionToken:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getUserAccountNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->userAccountNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->userAccountNumber:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getUserMobileNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->userMobileNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->userMobileNumber:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getUserMobileNumberPrevious()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->userMobileNumberPrevious:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->userPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->userPassword:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isAutoSignin()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->isAutoSignin:Z

    return v0
.end method

.method public setAutoSignin(Z)V
    .locals 0
    .param p1, "isAutoSignin"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->isAutoSignin:Z

    .line 37
    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->sessionToken:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setUserAccountNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAccountNumber"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->userAccountNumber:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setUserMobileNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "userMobileNumber"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->userMobileNumber:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setUserMobileNumberPrevious(Ljava/lang/String;)V
    .locals 0
    .param p1, "userMobileNumberPrevious"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->userMobileNumberPrevious:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setUserPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "userPassword"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->userPassword:Ljava/lang/String;

    .line 29
    return-void
.end method
