.class public Lnz/co/telecom/smartphone/dto/messages/MessageDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "MessageDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x372c4cffebe5bdafL


# instance fields
.field private code:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private screens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private templated:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->code:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->code:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->message:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getScreens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->screens:Ljava/util/List;

    return-object v0
.end method

.method public getTemplated()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->templated:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->code:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->message:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setScreens(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "screens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->screens:Ljava/util/List;

    .line 43
    return-void
.end method

.method public setTemplated(Z)V
    .locals 0
    .param p1, "templated"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->templated:Z

    .line 59
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->title:Ljava/lang/String;

    .line 51
    return-void
.end method
