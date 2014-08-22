.class public Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueLinksDTO;
.super Ljava/lang/Object;
.source "ExtrasCatalogueLinksDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7eb1280678feef53L


# instance fields
.field public action:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueActionDTO;",
            ">;"
        }
    .end annotation
.end field

.field public self:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getAction()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueActionDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueLinksDTO;->action:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueLinksDTO;->action:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public getSelf()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueLinksDTO;->self:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueLinksDTO;->self:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_0
.end method

.method public setAction(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueActionDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "action":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueActionDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueLinksDTO;->action:Ljava/util/Map;

    .line 32
    return-void
.end method

.method public setSelf(Ljava/lang/Object;)V
    .locals 0
    .param p1, "self"    # Ljava/lang/Object;

    .prologue
    .line 23
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueLinksDTO;->self:Ljava/lang/Object;

    .line 24
    return-void
.end method
