.class public Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "AlertsMessagesDTO.java"


# instance fields
.field public type:Ljava/lang/String;

.field public values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsValuesDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;->type:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsValuesDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;->values:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;->values:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;->type:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setValues(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsValuesDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsValuesDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/AlertsMessagesDTO;->values:Ljava/util/ArrayList;

    .line 29
    return-void
.end method
