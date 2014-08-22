.class public Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;
.super Ljava/lang/Object;
.source "PreferenceDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1b53beaed01fab4eL


# instance fields
.field private _embedded:Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->labels:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public get_embedded()Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->_embedded:Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    return-object v0
.end method

.method public setLabels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->labels:Ljava/util/List;

    .line 29
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->title:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public set_embedded(Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;)V
    .locals 0
    .param p1, "_embedded"    # Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    .prologue
    .line 36
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;->_embedded:Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    .line 37
    return-void
.end method
