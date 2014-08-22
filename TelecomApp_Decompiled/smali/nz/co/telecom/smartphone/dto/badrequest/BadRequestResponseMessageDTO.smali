.class public Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;
.super Ljava/lang/Object;
.source "BadRequestResponseMessageDTO.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;->code:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;->message:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;->title:Ljava/lang/String;

    .line 18
    return-void
.end method
