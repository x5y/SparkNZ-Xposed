.class public Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;
.super Ljava/lang/Object;
.source "BadRequestResponseDTO.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private type:Ljava/lang/String;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;->values:Ljava/util/List;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;->type:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;->values:Ljava/util/List;

    .line 27
    return-void
.end method
