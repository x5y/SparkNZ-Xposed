.class public Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;
.super Ljava/lang/Object;
.source "AccessControlExceptionDTO.java"


# static fields
.field public static final IDENTITY_SOFT_LOCKED:Ljava/lang/String; = "com.sun.identity.idsvcs.GeneralFailure"

.field public static final INVALID_CREDENTIALS:Ljava/lang/String; = "com.sun.identity.idsvcs.InvalidCredentials"

.field public static final INVALID_PASSWORD:Ljava/lang/String; = "com.sun.identity.idsvcs.InvalidPassword"

.field public static final MAXIMUM_SESSIONS_EXCEEDED:Ljava/lang/String; = "com.sun.identity.idsvcs.MaximumSessionReached"

.field public static final NULL_POINTER_EXCEPTION:Ljava/lang/String; = "java.lang.NullPointerException"

.field public static final RESPONSE_CODE_INVALID_CREDENTIALS:I = 0x191

.field public static final RESPONSE_CODE_SOFT_LOCKED:I = 0x1f4

.field public static final RESPONSE_CODE_TOO_MANY_SESSIONS:I = 0x193


# instance fields
.field private message:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isExceptionTypeIdentitySoftLocked()Z
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;->name:Ljava/lang/String;

    const-string v1, "com.sun.identity.idsvcs.GeneralFailure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isExceptionTypeInvalidCredentials()Z
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;->name:Ljava/lang/String;

    const-string v1, "com.sun.identity.idsvcs.InvalidCredentials"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;->name:Ljava/lang/String;

    const-string v1, "com.sun.identity.idsvcs.InvalidPassword"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;->name:Ljava/lang/String;

    const-string v1, "java.lang.NullPointerException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExceptionTypeMaximumSessionsExceeded()Z
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;->name:Ljava/lang/String;

    const-string v1, "com.sun.identity.idsvcs.MaximumSessionReached"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;->message:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlExceptionDTO;->name:Ljava/lang/String;

    .line 32
    return-void
.end method
