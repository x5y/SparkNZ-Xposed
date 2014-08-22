.class public interface abstract Lnz/co/telecom/smartphone/service/ExtrasServiceInterface;
.super Ljava/lang/Object;
.source "ExtrasServiceInterface.java"


# virtual methods
.method public abstract getExtrasCatalogueDTO(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation
.end method

.method public abstract getExtrasUpdateDTO(Ljava/lang/String;Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/extrasupdate/ExtrasUpdateDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation
.end method
