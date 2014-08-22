.class public Lnz/co/telecom/smartphone/dto/alertsandnotifications/DestinationDTO;
.super Ljava/lang/Object;
.source "DestinationDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1b53beaed01fab4eL


# instance fields
.field private id:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/DestinationDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/DestinationDTO;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/DestinationDTO;->id:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/alertsandnotifications/DestinationDTO;->type:Ljava/lang/String;

    .line 27
    return-void
.end method
