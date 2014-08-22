.class public Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;
.super Ljava/lang/Object;
.source "CallDiversionDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private diversionSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;",
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
.method public getDiversionSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;->diversionSettings:Ljava/util/List;

    return-object v0
.end method

.method public getHeading()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;->heading:Ljava/lang/String;

    return-object v0
.end method

.method public setDiversionSettings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "diversionSettings":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionSettingsDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;->diversionSettings:Ljava/util/List;

    .line 25
    return-void
.end method

.method public setHeading(Ljava/lang/String;)V
    .locals 0
    .param p1, "heading"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/myaccount/CallDiversionDTO;->heading:Ljava/lang/String;

    .line 17
    return-void
.end method
