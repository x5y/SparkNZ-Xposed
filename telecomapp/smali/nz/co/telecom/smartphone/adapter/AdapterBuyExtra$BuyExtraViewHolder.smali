.class public Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
.super Ljava/lang/Object;
.source "AdapterBuyExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BuyExtraViewHolder"
.end annotation


# instance fields
.field private extraCatalogueProductsDTOWrapper:Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;

.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;

.field private tvAccountDisabledMessageText:Landroid/widget/TextView;

.field private tvExtraProductChargePeriod:Landroid/widget/TextView;

.field private tvExtraProductDescription:Landroid/widget/TextView;

.field private tvExtraProductPrice:Landroid/widget/TextView;

.field private tvExtraProductTitle:Landroid/widget/TextView;

.field private tvTitle:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

.field private tvUsageTypeDisbledMessageText:Landroid/widget/TextView;

.field private viewGroupAccountDisabledMessagePanel:Landroid/view/ViewGroup;

.field private viewGroupDetailsSection:Landroid/view/ViewGroup;

.field private viewGroupRowDivider:Landroid/view/ViewGroup;

.field private viewGroupSectionHeader:Landroid/view/ViewGroup;

.field private viewGroupUsageDisabledMessagePanel:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupAccountDisabledMessagePanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$002(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 103
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupAccountDisabledMessagePanel:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$100(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvAccountDisabledMessageText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvExtraProductDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1002(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 103
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvExtraProductDescription:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$102(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 103
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvAccountDisabledMessageText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1100(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvExtraProductPrice:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1102(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 103
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvExtraProductPrice:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1202(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;)Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;

    .prologue
    .line 103
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->extraCatalogueProductsDTOWrapper:Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;

    return-object p1
.end method

.method static synthetic access$200(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvTitle:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    return-object v0
.end method

.method static synthetic access$202(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Lnz/co/telecom/smartphone/widget/TMYBoldTextView;)Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    .param p1, "x1"    # Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .prologue
    .line 103
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvTitle:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    return-object p1
.end method

.method static synthetic access$300(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupUsageDisabledMessagePanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$302(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 103
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupUsageDisabledMessagePanel:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$400(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvUsageTypeDisbledMessageText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 103
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvUsageTypeDisbledMessageText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupSectionHeader:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$502(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 103
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupSectionHeader:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$600(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupDetailsSection:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$602(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 103
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupDetailsSection:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$702(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 103
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupRowDivider:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$800(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvExtraProductTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 103
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvExtraProductTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$900(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvExtraProductChargePeriod:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 103
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvExtraProductChargePeriod:Landroid/widget/TextView;

    return-object p1
.end method


# virtual methods
.method public getCatalogueProductsDTO()Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->extraCatalogueProductsDTOWrapper:Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;->extrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    return-object v0
.end method

.method public getUsageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->extraCatalogueProductsDTOWrapper:Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;->usageType:Ljava/lang/String;

    return-object v0
.end method
