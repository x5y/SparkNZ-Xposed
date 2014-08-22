.class public Lnz/co/telecom/smartphone/service/HttpServiceException;
.super Ljava/lang/Exception;
.source "HttpServiceException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private badRequestResponse:Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/telecom/smartphone/service/HttpServiceException;->statusCode:I

    .line 37
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    iput p1, p0, Lnz/co/telecom/smartphone/service/HttpServiceException;->statusCode:I

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 15
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    iput p1, p0, Lnz/co/telecom/smartphone/service/HttpServiceException;->statusCode:I

    .line 17
    return-void
.end method

.method public constructor <init>(ILnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "badRequestResponseDTO"    # Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 21
    iput p1, p0, Lnz/co/telecom/smartphone/service/HttpServiceException;->statusCode:I

    .line 22
    iput-object p2, p0, Lnz/co/telecom/smartphone/service/HttpServiceException;->badRequestResponse:Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lnz/co/telecom/smartphone/service/HttpServiceException;->statusCode:I

    .line 33
    return-void
.end method


# virtual methods
.method public getBadRequestResponseDTO()Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnz/co/telecom/smartphone/service/HttpServiceException;->badRequestResponse:Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lnz/co/telecom/smartphone/service/HttpServiceException;->statusCode:I

    return v0
.end method
