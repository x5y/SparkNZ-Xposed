.class public Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "ConfigProfileDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x17bb943c7d1c4959L


# instance fields
.field private settings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileSettingsDTO;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:Ljava/util/Date;


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
.method public getSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileSettingsDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;->settings:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;->settings:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;->timestamp:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;->timestamp:Ljava/util/Date;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public setSettings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileSettingsDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "settings":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileSettingsDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;->settings:Ljava/util/List;

    .line 35
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 26
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/configprofile/ConfigProfileDTO;->timestamp:Ljava/util/Date;

    .line 27
    return-void
.end method
