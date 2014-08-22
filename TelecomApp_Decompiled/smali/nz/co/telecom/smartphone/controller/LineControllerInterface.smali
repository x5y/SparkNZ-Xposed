.class public interface abstract Lnz/co/telecom/smartphone/controller/LineControllerInterface;
.super Ljava/lang/Object;
.source "LineControllerInterface.java"


# virtual methods
.method public abstract getLineExtendedDTO()Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation
.end method

.method public abstract getLineProductsDTO()Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnz/co/telecom/smartphone/service/HttpServiceException;
        }
    .end annotation
.end method
