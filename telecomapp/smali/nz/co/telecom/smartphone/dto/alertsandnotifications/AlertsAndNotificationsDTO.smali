.class public Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "AlertsAndNotificationsDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x367a428e3d0fffe0L


# instance fields
.field private copyTo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;",
            ">;"
        }
    .end annotation
.end field

.field private preferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getCopyTo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;->copyTo:Ljava/util/List;

    return-object v0
.end method

.method public getPreferences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;->preferences:Ljava/util/List;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public setCopyTo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "copyTo":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;->copyTo:Ljava/util/List;

    .line 34
    return-void
.end method

.method public setPreferences(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/alertsandnotifications/PreferenceDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;->preferences:Ljava/util/List;

    .line 28
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 15
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsAndNotificationsDTO;->timestamp:Ljava/util/Date;

    .line 16
    return-void
.end method
