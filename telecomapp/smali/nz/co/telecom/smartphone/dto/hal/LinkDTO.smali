.class public Lnz/co/telecom/smartphone/dto/hal/LinkDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "LinkDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x408430e435565883L


# instance fields
.field private self:Lnz/co/telecom/smartphone/dto/hal/SelfDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelf()Lnz/co/telecom/smartphone/dto/hal/SelfDTO;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/hal/LinkDTO;->self:Lnz/co/telecom/smartphone/dto/hal/SelfDTO;

    return-object v0
.end method

.method public setSelf(Lnz/co/telecom/smartphone/dto/hal/SelfDTO;)V
    .locals 0
    .param p1, "self"    # Lnz/co/telecom/smartphone/dto/hal/SelfDTO;

    .prologue
    .line 20
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/hal/LinkDTO;->self:Lnz/co/telecom/smartphone/dto/hal/SelfDTO;

    .line 21
    return-void
.end method
