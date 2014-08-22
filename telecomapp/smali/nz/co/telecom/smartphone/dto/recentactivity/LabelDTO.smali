.class public Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "LabelDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x24bff2a8201c3299L


# instance fields
.field private label:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;->label:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;->label:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;->type:Ljava/lang/String;

    .line 34
    return-void
.end method
