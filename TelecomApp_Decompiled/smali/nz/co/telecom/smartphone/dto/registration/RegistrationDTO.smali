.class public Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
.super Ljava/lang/Object;
.source "RegistrationDTO.java"


# instance fields
.field private code:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private onNet:Z

.field private onNetCheck:Z

.field private sessionID:Ljava/lang/String;

.field private tokenID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodeInt()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->code:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 27
    sget v0, Lnz/co/telecom/smartphone/TelecomConstants;->REGISTRATION_CODE_ALL_EXCEPTIONS:I

    .line 29
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->code:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->description:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->sessionID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->sessionID:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTokenID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->tokenID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->tokenID:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isOnNet()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->onNet:Z

    return v0
.end method

.method public isOnNetCheck()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->onNetCheck:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->code:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->description:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setOnNet(Z)V
    .locals 0
    .param p1, "onNet"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->onNet:Z

    .line 19
    return-void
.end method

.method public setOneNetCheck(Z)V
    .locals 0
    .param p1, "onNetCheck"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->onNetCheck:Z

    .line 47
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionID"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->sessionID:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setTokenID(Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenID"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->tokenID:Ljava/lang/String;

    .line 63
    return-void
.end method
