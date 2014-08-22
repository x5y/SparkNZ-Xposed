.class public Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueTermsConditionsContentsDTO;
.super Lnz/co/telecom/smartphone/dto/AbstractDTO;
.source "ExtrasCatalogueTermsConditionsContentsDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x438529de87e4ab8cL


# instance fields
.field private contents:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lnz/co/telecom/smartphone/dto/AbstractDTO;-><init>()V

    .line 19
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueTermsConditionsContentsDTO;->contents:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueTermsConditionsContentsDTO;->contents:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueTermsConditionsContentsDTO;->contents:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setContents(Ljava/lang/String;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueTermsConditionsContentsDTO;->contents:Ljava/lang/String;

    .line 28
    return-void
.end method
