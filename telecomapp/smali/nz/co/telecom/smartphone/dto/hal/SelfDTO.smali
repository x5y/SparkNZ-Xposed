.class public Lnz/co/telecom/smartphone/dto/hal/SelfDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "SelfDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3042a6f968e22facL


# instance fields
.field private href:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/hal/SelfDTO;->href:Ljava/lang/String;

    return-object v0
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/hal/SelfDTO;->href:Ljava/lang/String;

    .line 21
    return-void
.end method
