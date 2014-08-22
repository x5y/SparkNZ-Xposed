.class public Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;
.super Lcom/activeandroid/Model;
.source "AccountInfoEntity.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "AccountInfoEntity"
.end annotation


# instance fields
.field public objectAsBytes:[B
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "objectAsBytes"
    .end annotation
.end field

.field public timestamp:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "timestamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/entity/accountinfo/AccountInfoEntity;->timestamp:Ljava/util/Date;

    return-void
.end method
