.class public Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyValuesDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "ExtrasBuyValuesDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x54e0b18322c511d4L


# instance fields
.field public message:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyValuesDTO;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyValuesDTO;->message:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyValuesDTO;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyValuesDTO;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyValuesDTO;->message:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyValuesDTO;->title:Ljava/lang/String;

    .line 21
    return-void
.end method
