.class public Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;
.super Ljava/lang/Object;
.source "SettingLinkDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3042a6f968e22facL


# instance fields
.field private _links:Lnz/co/telecom/smartphone/dto/hal/LinkDTO;

.field private destinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/alertsandnotifications/DestinationDTO;",
            ">;"
        }
    .end annotation
.end field

.field private isOn:Z

.field private mdn:Ljava/lang/String;

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

.field private savedMDN:Ljava/lang/String;

.field private submitTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDestinations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/alertsandnotifications/DestinationDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->destinations:Ljava/util/List;

    return-object v0
.end method

.method public getIsOn()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->isOn:Z

    return v0
.end method

.method public getMDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->mdn:Ljava/lang/String;

    return-object v0
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
    .line 45
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->messages:Ljava/util/List;

    return-object v0
.end method

.method public getSubmitTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->submitTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->submitTitle:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public get_links()Lnz/co/telecom/smartphone/dto/hal/LinkDTO;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->_links:Lnz/co/telecom/smartphone/dto/hal/LinkDTO;

    return-object v0
.end method

.method public resetMDN()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->savedMDN:Ljava/lang/String;

    iput-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->mdn:Ljava/lang/String;

    return-void
.end method

.method public setDestinations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/alertsandnotifications/DestinationDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "destinations":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/alertsandnotifications/DestinationDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->destinations:Ljava/util/List;

    .line 66
    return-void
.end method

.method public setIsOn(Z)V
    .locals 0
    .param p1, "isOn"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->isOn:Z

    .line 34
    return-void
.end method

.method public setMDN(Ljava/lang/String;)V
    .locals 0
    .param p1, "mdn"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->mdn:Ljava/lang/String;

    .line 74
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
    .line 49
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->messages:Ljava/util/List;

    .line 50
    return-void
.end method

.method public setSavedMDN(Ljava/lang/String;)V
    .locals 0
    .param p1, "savedMDN"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->savedMDN:Ljava/lang/String;

    return-void
.end method

.method public setSubmitTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "submitTitle"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->submitTitle:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public set_links(Lnz/co/telecom/smartphone/dto/hal/LinkDTO;)V
    .locals 0
    .param p1, "_links"    # Lnz/co/telecom/smartphone/dto/hal/LinkDTO;

    .prologue
    .line 41
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/SettingLinkDTO;->_links:Lnz/co/telecom/smartphone/dto/hal/LinkDTO;

    .line 42
    return-void
.end method
