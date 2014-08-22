.class public interface abstract Lnz/co/telecom/smartphone/service/LineServiceInterface;
.super Ljava/lang/Object;
.source "LineServiceInterface.java"


# virtual methods
.method public abstract getLineExtendedDTO(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation
.end method

.method public abstract getLineProductsDTO(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation
.end method
