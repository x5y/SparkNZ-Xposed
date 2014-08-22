.class public Lnz/co/telecom/smartphone/service/TopupService;
.super Lnz/co/telecom/smartphone/service/RestfulClient;
.source "TopupService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/TopupServiceInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lnz/co/telecom/smartphone/service/RestfulClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getTopUpResults(Ljava/lang/String;Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/topup/TopupDTO;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .prologue
    .line 15
    .local p2, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const-class v0, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    invoke-virtual {p0, v0, p1, p2}, Lnz/co/telecom/smartphone/service/TopupService;->getEntityForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/topup/TopupDTO;

    return-object v0
.end method
