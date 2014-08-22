.class public Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
.super Ljava/lang/Object;
.source "AccessControlLoginDTO.java"


# instance fields
.field private exception:Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;

.field private tokenId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;->tokenId:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;->exception:Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;

    return-void
.end method


# virtual methods
.method public getException()Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;->exception:Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;

    return-object v0
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;->tokenId:Ljava/lang/String;

    return-object v0
.end method

.method public setException(Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;)V
    .locals 0
    .param p1, "exception"    # Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;

    .prologue
    .line 21
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;->exception:Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;

    .line 22
    return-void
.end method

.method public setTokenId(Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;->tokenId:Ljava/lang/String;

    .line 14
    return-void
.end method
