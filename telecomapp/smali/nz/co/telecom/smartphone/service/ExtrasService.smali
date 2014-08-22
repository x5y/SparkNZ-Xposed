.class public Lnz/co/telecom/smartphone/service/ExtrasService;
.super Lnz/co/telecom/smartphone/service/RestfulClient;
.source "ExtrasService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/ExtrasServiceInterface;


# static fields
.field static sContextProvider:Lcom/google/inject/Provider;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lnz/co/telecom/smartphone/service/RestfulClient;-><init>()V

    .line 14
    sget-object v0, Lnz/co/telecom/smartphone/service/ExtrasService;->sContextProvider:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lnz/co/telecom/smartphone/service/ExtrasService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getExtrasCatalogueDTO(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 23
    const-class v0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    invoke-virtual {p0, v0, p1}, Lnz/co/telecom/smartphone/service/ExtrasService;->getEntity(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    return-object v0
.end method

.method public getExtrasUpdateDTO(Ljava/lang/String;Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 19
    const-class v0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;

    invoke-virtual {p0, v0, p2}, Lnz/co/telecom/smartphone/service/ExtrasService;->getEntityForPost(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;

    return-object v0
.end method
