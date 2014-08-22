.class public Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "OptionLinkDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3c2fad206a41e59aL


# instance fields
.field private _links:Lnz/co/telecom/smartphone/dto/hal/LinkDTO;

.field private selected:Z

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelected()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;->selected:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;->type:I

    return v0
.end method

.method public get_links()Lnz/co/telecom/smartphone/dto/hal/LinkDTO;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;->_links:Lnz/co/telecom/smartphone/dto/hal/LinkDTO;

    return-object v0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;->selected:Z

    .line 34
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;->title:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 49
    iput p1, p0, Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;->type:I

    .line 50
    return-void
.end method

.method public set_links(Lnz/co/telecom/smartphone/dto/hal/LinkDTO;)V
    .locals 0
    .param p1, "_links"    # Lnz/co/telecom/smartphone/dto/hal/LinkDTO;

    .prologue
    .line 25
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;->_links:Lnz/co/telecom/smartphone/dto/hal/LinkDTO;

    .line 26
    return-void
.end method
