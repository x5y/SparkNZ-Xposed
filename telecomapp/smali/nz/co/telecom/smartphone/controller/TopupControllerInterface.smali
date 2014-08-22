.class public interface abstract Lnz/co/telecom/smartphone/controller/TopupControllerInterface;
.super Ljava/lang/Object;
.source "TopupControllerInterface.java"


# virtual methods
.method public abstract getTopUpResults(Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lnz/co/telecom/smartphone/dto/topup/TopupDTO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
