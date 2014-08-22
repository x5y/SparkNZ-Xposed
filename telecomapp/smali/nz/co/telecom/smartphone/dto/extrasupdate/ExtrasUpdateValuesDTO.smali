.class public Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateValuesDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "ExtrasUpdateValuesDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x36ce3d2be15cd210L


# instance fields
.field public message:Ljava/lang/String;

.field public screens:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateValuesDTO;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateValuesDTO;->message:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getScreens()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateValuesDTO;->screens:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateValuesDTO;->screens:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateValuesDTO;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateValuesDTO;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateValuesDTO;->message:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setScreens(Ljava/lang/String;)V
    .locals 0
    .param p1, "screens"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateValuesDTO;->screens:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateValuesDTO;->title:Ljava/lang/String;

    .line 22
    return-void
.end method
