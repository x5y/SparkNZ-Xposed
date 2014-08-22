.class public Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;
.super Ljava/lang/Object;
.source "CallSettingsDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _links:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnz/co/telecom/smartphone/dto/myaccount/MyAccountLinkActionDTO;",
            ">;"
        }
    .end annotation
.end field

.field private callSettingText:Ljava/lang/String;

.field private callSettingTitle:Ljava/lang/String;

.field private isSettingOn:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallSettingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;->callSettingText:Ljava/lang/String;

    return-object v0
.end method

.method public getCallSettingTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;->callSettingTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSettingOn()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;->isSettingOn:Z

    return v0
.end method

.method public get_links()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnz/co/telecom/smartphone/dto/myaccount/MyAccountLinkActionDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;->_links:Ljava/util/Map;

    return-object v0
.end method

.method public setCallSettingText(Ljava/lang/String;)V
    .locals 0
    .param p1, "callSettingText"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;->callSettingText:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setCallSettingTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "callSettingTitle"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;->callSettingTitle:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setIsSettingOn(Z)V
    .locals 0
    .param p1, "settingOn"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;->isSettingOn:Z

    .line 37
    return-void
.end method

.method public set_links(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnz/co/telecom/smartphone/dto/myaccount/MyAccountLinkActionDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "_links":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnz/co/telecom/smartphone/dto/myaccount/MyAccountLinkActionDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;->_links:Ljava/util/Map;

    .line 45
    return-void
.end method
