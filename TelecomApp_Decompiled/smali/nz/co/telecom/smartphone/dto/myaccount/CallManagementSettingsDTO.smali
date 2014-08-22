.class public Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;
.super Ljava/lang/Object;
.source "CallManagementSettingsDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private callSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;",
            ">;"
        }
    .end annotation
.end field

.field private heading:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;->callSettings:Ljava/util/List;

    return-object v0
.end method

.method public getHeading()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;->heading:Ljava/lang/String;

    return-object v0
.end method

.method public setCallSettings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "callSettings":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/myaccount/CallSettingsDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;->callSettings:Ljava/util/List;

    .line 26
    return-void
.end method

.method public setHeading(Ljava/lang/String;)V
    .locals 0
    .param p1, "heading"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallManagementSettingsDTO;->heading:Ljava/lang/String;

    .line 18
    return-void
.end method
