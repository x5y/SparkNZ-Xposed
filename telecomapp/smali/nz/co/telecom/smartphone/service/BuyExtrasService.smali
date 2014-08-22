.class public Lnz/co/telecom/smartphone/service/BuyExtrasService;
.super Lnz/co/telecom/smartphone/service/RestfulClient;
.source "BuyExtrasService.java"

# interfaces
.implements Lnz/co/telecom/smartphone/service/BuyExtrasServiceInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lnz/co/telecom/smartphone/service/RestfulClient;-><init>()V

    return-void
.end method


# virtual methods
.method public processBuyExtrasRequest(Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    const-class v0, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnz/co/telecom/smartphone/service/BuyExtrasService;->getEntityForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;

    return-object v0
.end method
