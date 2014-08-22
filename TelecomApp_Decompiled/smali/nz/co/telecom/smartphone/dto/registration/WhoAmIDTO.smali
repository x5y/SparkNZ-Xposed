.class public Lnz/co/telecom/smartphone/dto/registration/WhoAmIDTO;
.super Ljava/lang/Object;
.source "WhoAmIDTO.java"


# instance fields
.field private mdn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/registration/WhoAmIDTO;->mdn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/registration/WhoAmIDTO;->mdn:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setMdn(Ljava/lang/String;)V
    .locals 0
    .param p1, "mdn"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/registration/WhoAmIDTO;->mdn:Ljava/lang/String;

    .line 15
    return-void
.end method
