.class public Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "ExtrasUpdateDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x25c5f0b9f46f93c1L


# instance fields
.field public content:Ljava/lang/String;

.field private timestamp:Ljava/util/Date;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateValuesDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->content:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->content:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->timestamp:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->timestamp:Ljava/util/Date;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->type:Ljava/lang/String;

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
            "Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateValuesDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->values:Ljava/util/List;

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
    .line 54
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->content:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 30
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->timestamp:Ljava/util/Date;

    .line 31
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->title:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->type:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateValuesDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateValuesDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;->values:Ljava/util/List;

    .line 63
    return-void
.end method
