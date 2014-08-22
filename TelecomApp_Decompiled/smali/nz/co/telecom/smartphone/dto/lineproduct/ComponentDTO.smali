.class public Lnz/co/telecom/smartphone/dto/lineproduct/ComponentDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "ComponentDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3ce602bfb38a7a14L


# instance fields
.field private properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private usageType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ComponentDTO;->properties:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ComponentDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUsageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ComponentDTO;->usageType:Ljava/lang/String;

    return-object v0
.end method

.method public setProperties(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "properties":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;>;"
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ComponentDTO;->properties:Ljava/util/List;

    .line 24
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ComponentDTO;->title:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setUsageType(Ljava/lang/String;)V
    .locals 0
    .param p1, "usageType"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/lineproduct/ComponentDTO;->usageType:Ljava/lang/String;

    .line 40
    return-void
.end method
