.class public Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "ExtrasBuyMessageDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x178d2b795ddac300L


# instance fields
.field private type:Ljava/lang/String;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyValuesDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;->type:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyValuesDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;->values:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;->type:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyValuesDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyValuesDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;->values:Ljava/util/List;

    .line 35
    return-void
.end method
