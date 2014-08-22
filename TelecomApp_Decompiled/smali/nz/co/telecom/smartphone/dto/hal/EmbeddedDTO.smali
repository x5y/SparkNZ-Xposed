.class public Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "EmbeddedDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x23635370f89e9d4eL


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;",
            ">;"
        }
    .end annotation
.end field

.field private options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;",
            ">;"
        }
    .end annotation
.end field

.field private settings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;->options:Ljava/util/List;

    return-object v0
.end method

.method public getSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;->settings:Ljava/util/List;

    return-object v0
.end method

.method public setActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;->actions:Ljava/util/List;

    .line 27
    return-void
.end method

.method public setOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/recentactivity/OptionLinkDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;->options:Ljava/util/List;

    .line 35
    return-void
.end method

.method public setSettings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "settings":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;->settings:Ljava/util/List;

    .line 43
    return-void
.end method
