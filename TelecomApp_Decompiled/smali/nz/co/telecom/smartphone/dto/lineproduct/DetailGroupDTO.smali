.class public Lnz/co/telecom/smartphone/dto/lineproduct/DetailGroupDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "DetailGroupDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4c430edade4d8c25L


# instance fields
.field private details:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/DetailGroupDTO;->details:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/DetailGroupDTO;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/DetailGroupDTO;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/DetailGroupDTO;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/DetailGroupDTO;->type:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "details":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/DetailGroupDTO;->details:Ljava/util/List;

    .line 25
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/DetailGroupDTO;->title:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/DetailGroupDTO;->type:Ljava/lang/String;

    .line 41
    return-void
.end method
