.class public Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "MessageGroupDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x62f5773f26820d4cL


# instance fields
.field private type:Ljava/lang/String;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/messages/MessageDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;->type:Ljava/lang/String;

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
            "Lnz/co/telecom/smartphone/dto/messages/MessageDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;->values:Ljava/util/List;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;->type:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/messages/MessageDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/messages/MessageDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;->values:Ljava/util/List;

    .line 32
    return-void
.end method
