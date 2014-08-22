.class public Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "LineExtendedMessagesDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x62a603d7f041dfb2L


# instance fields
.field public content:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;->content:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;->content:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;->type:Ljava/lang/String;

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
            "Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;->values:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;->content:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;->title:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;->type:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedValueDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedMessagesDTO;->values:Ljava/util/List;

    .line 52
    return-void
.end method
