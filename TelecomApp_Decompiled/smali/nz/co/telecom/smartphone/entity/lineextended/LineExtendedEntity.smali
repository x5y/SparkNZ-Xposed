.class public Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;
.super Lcom/activeandroid/Model;
.source "LineExtendedEntity.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "LineExtendedEntity"
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
    .line 10
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/entity/lineextended/LineExtendedEntity;->timestamp:Ljava/util/Date;

    return-void
.end method
