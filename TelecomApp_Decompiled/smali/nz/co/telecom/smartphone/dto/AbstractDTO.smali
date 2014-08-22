.class public abstract Lnz/co/telecom/smartphone/dto/AbstractDTO;
.super Ljava/lang/Object;
.source "AbstractDTO.java"


# instance fields
.field private mEntityId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntityId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/AbstractDTO;->mEntityId:Ljava/lang/Long;

    return-object v0
.end method

.method public setEntityId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "entityId"    # Ljava/lang/Long;

    .prologue
    .line 12
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/AbstractDTO;->mEntityId:Ljava/lang/Long;

    .line 13
    return-void
.end method
