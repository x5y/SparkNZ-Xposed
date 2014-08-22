.class Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;
.super Ljava/lang/Object;
.source "AdapterBuyExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtraCatalogueProductsDTOWrapper"
.end annotation


# instance fields
.field public disabledMessageAccount:Ljava/lang/String;

.field public disabledMessageUsageType:Ljava/lang/String;

.field public extrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;

.field public usageType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;)V
    .locals 0
    .param p2, "disabledMessageAccount"    # Ljava/lang/String;
    .param p3, "usageType"    # Ljava/lang/String;
    .param p4, "disabledMessageUsageType"    # Ljava/lang/String;
    .param p5, "extrasCatalogueProductsDTO"    # Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    .prologue
    .line 79
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;->disabledMessageAccount:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;->usageType:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;->disabledMessageUsageType:Ljava/lang/String;

    .line 83
    iput-object p5, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;->extrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    .line 84
    return-void
.end method
