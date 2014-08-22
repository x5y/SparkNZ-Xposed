.class Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3;
.super Ljava/lang/Thread;
.source "FragBuyExtraComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->processBuyExtraRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 242
    :try_start_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    iget-object v2, v2, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mBuyExtrasController:Lnz/co/telecom/smartphone/controller/BuyExtrasController;

    iget-object v3, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    # getter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;
    invoke-static {v3}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$1700(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/controller/BuyExtrasController;->processBuyExtrasRequest(Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;)Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;

    move-result-object v2

    # setter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->extrasBuyMessageDTO:Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;
    invoke-static {v1, v2}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$1602(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;)Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    # getter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$1900(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3$1;

    invoke-direct {v2, p0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3$1;-><init>(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$3;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    const/4 v2, 0x0

    # setter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->extrasBuyMessageDTO:Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;
    invoke-static {v1, v2}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$1602(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;)Lnz/co/telecom/smartphone/dto/extrasbuy/ExtrasBuyMessageDTO;

    .line 245
    # getter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error with processBuyExtrasRequest"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
