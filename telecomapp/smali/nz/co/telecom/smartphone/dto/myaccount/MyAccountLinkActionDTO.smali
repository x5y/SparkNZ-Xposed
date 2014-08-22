.class public Lnz/co/telecom/smartphone/dto/myaccount/MyAccountLinkActionDTO;
.super Ljava/lang/Object;
.source "MyAccountLinkActionDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private href:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountLinkActionDTO;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountLinkActionDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountLinkActionDTO;->href:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountLinkActionDTO;->title:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 28
    .local v0, "stringBuffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountLinkActionDTO;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "href:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/dto/myaccount/MyAccountLinkActionDTO;->href:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
