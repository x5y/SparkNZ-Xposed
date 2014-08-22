.class public Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "ActionLinkDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xdf932a01e7b116fL


# instance fields
.field private _links:Lnz/co/telecom/smartphone/dto/hal/LinkDTO;

.field private disabled:Z

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisabled()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;->disabled:Z

    return v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;->messages:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public get_links()Lnz/co/telecom/smartphone/dto/hal/LinkDTO;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;->_links:Lnz/co/telecom/smartphone/dto/hal/LinkDTO;

    return-object v0
.end method

.method public setDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;->disabled:Z

    .line 28
    return-void
.end method

.method public setMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;->messages:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;->title:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public set_links(Lnz/co/telecom/smartphone/dto/hal/LinkDTO;)V
    .locals 0
    .param p1, "_links"    # Lnz/co/telecom/smartphone/dto/hal/LinkDTO;

    .prologue
    .line 35
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;->_links:Lnz/co/telecom/smartphone/dto/hal/LinkDTO;

    .line 36
    return-void
.end method
