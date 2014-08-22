.class public Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionWrapper;
.super Ljava/lang/Object;
.source "AccessControlExceptionWrapper.java"


# instance fields
.field private exception:Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getException()Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionWrapper;->exception:Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;

    return-object v0
.end method

.method public setException(Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;)V
    .locals 0
    .param p1, "exception"    # Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;

    .prologue
    .line 12
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionWrapper;->exception:Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;

    .line 13
    return-void
.end method
