.class public Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;
.super Landroid/widget/BaseAdapter;
.source "AdapterBuyExtra.java"

# interfaces
.implements Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;,
        Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private defaultScrollId:I

.field private mContext:Landroid/content/Context;

.field private mExtraCatalogueProductsDTOWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

.field private mInflater:Landroid/view/LayoutInflater;

.field private sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;Ljava/lang/String;)V
    .locals 11
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "extrasCatalogueDTO"    # Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
    .param p3, "mSort"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->sections:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mExtraCatalogueProductsDTOWrappers:Ljava/util/List;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->defaultScrollId:I

    .line 36
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mContext:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    iput-object p2, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    .line 41
    const/4 v8, 0x0

    .line 42
    .local v8, "localPosition":I
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;->getProductGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;

    .line 44
    .local v9, "productGroup":Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;
    invoke-virtual {v9}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;->getProducts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v9}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;->getProducts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    .line 46
    .local v5, "extrasCatalogueProductsDTO":Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;
    add-int/lit8 v8, v8, 0x1

    .line 47
    iget-object v10, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mExtraCatalogueProductsDTOWrappers:Ljava/util/List;

    new-instance v0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;

    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;->getDisabledMessageAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;->getUsageType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;->getDisabledMessageUsageType()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 50
    .end local v5    # "extrasCatalogueProductsDTO":Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v9}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;->getUsageType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iput v8, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->defaultScrollId:I

    goto :goto_0

    .line 59
    .end local v9    # "productGroup":Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductGroupsDTO;
    :cond_2
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mExtraCatalogueProductsDTOWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 60
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mExtraCatalogueProductsDTOWrappers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_3
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->sections:Ljava/util/ArrayList;

    const-string v1, "Data"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->sections:Ljava/util/ArrayList;

    const-string v1, "Text"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->sections:Ljava/util/ArrayList;

    const-string v1, "Voice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->sections:Ljava/util/ArrayList;

    const-string v1, "Bundle"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method private getTableRowView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "isForHeader"    # Z

    .prologue
    .line 172
    const/4 v7, 0x0

    .line 174
    .local v7, "viewHolder":Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mExtraCatalogueProductsDTOWrappers:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;

    .line 176
    .local v3, "extraCatalogueProductsDTOWrapper":Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;
    move-object/from16 v9, p2

    .line 178
    .local v9, "viewOut":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mExtraCatalogueProductsDTOWrappers:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mExtraCatalogueProductsDTOWrappers:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_1

    .line 179
    if-eqz p4, :cond_0

    .line 180
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030059

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .end local v9    # "viewOut":Landroid/view/View;
    check-cast v9, Landroid/view/ViewGroup;

    .restart local v9    # "viewOut":Landroid/view/View;
    :goto_0
    move-object v10, v9

    .line 267
    .end local v9    # "viewOut":Landroid/view/View;
    .local v10, "viewOut":Landroid/view/View;
    :goto_1
    return-object v10

    .line 182
    .end local v10    # "viewOut":Landroid/view/View;
    .restart local v9    # "viewOut":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030058

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .end local v9    # "viewOut":Landroid/view/View;
    check-cast v9, Landroid/view/ViewGroup;

    .restart local v9    # "viewOut":Landroid/view/View;
    goto :goto_0

    .line 189
    :cond_1
    if-nez v9, :cond_4

    .line 190
    :try_start_0
    new-instance v8, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v7    # "viewHolder":Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    .local v8, "viewHolder":Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030052

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 192
    invoke-virtual {v9, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 194
    const v11, 0x7f090159

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupAccountDisabledMessagePanel:Landroid/view/ViewGroup;
    invoke-static {v8, v11}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$002(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 195
    const v11, 0x7f09015a

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvAccountDisabledMessageText:Landroid/widget/TextView;
    invoke-static {v8, v11}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$102(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 197
    const v11, 0x7f09015c

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvTitle:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {v8, v11}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$202(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Lnz/co/telecom/smartphone/widget/TMYBoldTextView;)Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 199
    const v11, 0x7f09015d

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupUsageDisabledMessagePanel:Landroid/view/ViewGroup;
    invoke-static {v8, v11}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$302(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 200
    const v11, 0x7f09015e

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvUsageTypeDisbledMessageText:Landroid/widget/TextView;
    invoke-static {v8, v11}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$402(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 202
    const v11, 0x7f09015b

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupSectionHeader:Landroid/view/ViewGroup;
    invoke-static {v8, v11}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$502(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 203
    const v11, 0x7f09015f

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupDetailsSection:Landroid/view/ViewGroup;
    invoke-static {v8, v11}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$602(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 205
    const v11, 0x7f090165

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupRowDivider:Landroid/view/ViewGroup;
    invoke-static {v8, v11}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$702(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 207
    const v11, 0x7f090162

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvExtraProductTitle:Landroid/widget/TextView;
    invoke-static {v8, v11}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$802(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 208
    const v11, 0x7f090161

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvExtraProductChargePeriod:Landroid/widget/TextView;
    invoke-static {v8, v11}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$902(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 209
    const v11, 0x7f090163

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvExtraProductDescription:Landroid/widget/TextView;
    invoke-static {v8, v11}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$1002(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 210
    const v11, 0x7f090160

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvExtraProductPrice:Landroid/widget/TextView;
    invoke-static {v8, v11}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$1102(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 215
    .end local v8    # "viewHolder":Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    .restart local v7    # "viewHolder":Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    :goto_2
    :try_start_2
    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->extraCatalogueProductsDTOWrapper:Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;
    invoke-static {v7, v3}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$1202(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;)Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;

    .line 217
    iget-object v1, v3, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;->disabledMessageAccount:Ljava/lang/String;

    .line 218
    .local v1, "accountDisabledMessage":Ljava/lang/String;
    iget-object v5, v3, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;->usageType:Ljava/lang/String;

    .line 219
    .local v5, "usageType":Ljava/lang/String;
    iget-object v6, v3, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;->disabledMessageUsageType:Ljava/lang/String;

    .line 221
    .local v6, "usageTypeDisabledMessge":Ljava/lang/String;
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupUsageDisabledMessagePanel:Landroid/view/ViewGroup;
    invoke-static {v7}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$300(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/view/ViewGroup;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 223
    if-eqz p4, :cond_5

    .line 224
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupAccountDisabledMessagePanel:Landroid/view/ViewGroup;
    invoke-static {v7}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$000(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/view/ViewGroup;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 226
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupSectionHeader:Landroid/view/ViewGroup;
    invoke-static {v7}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$500(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/view/ViewGroup;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 227
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupDetailsSection:Landroid/view/ViewGroup;
    invoke-static {v7}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$600(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/view/ViewGroup;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 229
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvTitle:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {v7}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$200(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    .line 235
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupAccountDisabledMessagePanel:Landroid/view/ViewGroup;
    invoke-static {v7}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$000(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/view/ViewGroup;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 236
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvAccountDisabledMessageText:Landroid/widget/TextView;
    invoke-static {v7}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$100(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    .line 244
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupUsageDisabledMessagePanel:Landroid/view/ViewGroup;
    invoke-static {v7}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$300(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/view/ViewGroup;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 245
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvUsageTypeDisbledMessageText:Landroid/widget/TextView;
    invoke-static {v7}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$400(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_3
    :goto_3
    const-string v11, "$%.2f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v3, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;->extrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    invoke-virtual {v14}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getPrice()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "productPrice":Ljava/lang/String;
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvExtraProductPrice:Landroid/widget/TextView;
    invoke-static {v7}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$1100(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvExtraProductChargePeriod:Landroid/widget/TextView;
    invoke-static {v7}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$900(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/widget/TextView;

    move-result-object v11

    iget-object v12, v3, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;->extrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    invoke-virtual {v12}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getChargePeriod()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvExtraProductTitle:Landroid/widget/TextView;
    invoke-static {v7}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$800(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/widget/TextView;

    move-result-object v11

    iget-object v12, v3, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;->extrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    invoke-virtual {v12}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->tvExtraProductDescription:Landroid/widget/TextView;
    invoke-static {v7}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$1000(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/widget/TextView;

    move-result-object v11

    iget-object v12, v3, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;->extrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    invoke-virtual {v12}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v1    # "accountDisabledMessage":Ljava/lang/String;
    .end local v4    # "productPrice":Ljava/lang/String;
    .end local v5    # "usageType":Ljava/lang/String;
    .end local v6    # "usageTypeDisabledMessge":Ljava/lang/String;
    :goto_4
    move-object v10, v9

    .line 267
    .end local v9    # "viewOut":Landroid/view/View;
    .restart local v10    # "viewOut":Landroid/view/View;
    goto/16 :goto_1

    .line 212
    .end local v10    # "viewOut":Landroid/view/View;
    .restart local v9    # "viewOut":Landroid/view/View;
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;

    move-object v7, v0

    goto/16 :goto_2

    .line 249
    .restart local v1    # "accountDisabledMessage":Ljava/lang/String;
    .restart local v5    # "usageType":Ljava/lang/String;
    .restart local v6    # "usageTypeDisabledMessge":Ljava/lang/String;
    :cond_5
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupAccountDisabledMessagePanel:Landroid/view/ViewGroup;
    invoke-static {v7}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$000(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/view/ViewGroup;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 250
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupSectionHeader:Landroid/view/ViewGroup;
    invoke-static {v7}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$500(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/view/ViewGroup;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 251
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->viewGroupDetailsSection:Landroid/view/ViewGroup;
    invoke-static {v7}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->access$600(Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;)Landroid/view/ViewGroup;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 262
    .end local v1    # "accountDisabledMessage":Ljava/lang/String;
    .end local v5    # "usageType":Ljava/lang/String;
    .end local v6    # "usageTypeDisabledMessge":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 263
    .local v2, "e":Ljava/lang/Exception;
    :goto_5
    sget-object v11, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->TAG:Ljava/lang/String;

    invoke-static {v11, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    sget-object v11, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " error in getView "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 262
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "viewHolder":Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    .restart local v8    # "viewHolder":Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    :catch_1
    move-exception v2

    move-object v7, v8

    .end local v8    # "viewHolder":Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    .restart local v7    # "viewHolder":Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    goto :goto_5
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mExtraCatalogueProductsDTOWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderByText(Ljava/lang/String;)J
    .locals 6
    .param p1, "myDefault"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v1, 0x0

    .line 158
    .local v1, "positionIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mExtraCatalogueProductsDTOWrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 159
    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mExtraCatalogueProductsDTOWrappers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;

    .line 160
    .local v3, "wrapper":Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;
    iget-object v4, v3, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;->usageType:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    move v1, v0

    .line 158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    .end local v3    # "wrapper":Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "positionIndex":I
    .local v2, "positionIndex":I
    int-to-long v4, v1

    return-wide v4
.end method

.method public getHeaderId(I)J
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 144
    .local v1, "positionIndex":I
    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mExtraCatalogueProductsDTOWrappers:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;

    .line 145
    .local v4, "wrapper":Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;
    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->sections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 146
    .local v3, "usage":Ljava/lang/String;
    iget-object v5, v4, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;->usageType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    int-to-long v5, v1

    .line 152
    .end local v3    # "usage":Ljava/lang/String;
    :goto_1
    return-wide v5

    .line 149
    .restart local v3    # "usage":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 150
    goto :goto_0

    .line 152
    .end local v3    # "usage":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "positionIndex":I
    .local v2, "positionIndex":I
    int-to-long v5, v1

    move v1, v2

    .end local v2    # "positionIndex":I
    .restart local v1    # "positionIndex":I
    goto :goto_1
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->getTableRowView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->mExtraCatalogueProductsDTOWrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$ExtraCatalogueProductsDTOWrapper;->usageType:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 96
    int-to-long v0, p1

    return-wide v0
.end method

.method public getScrollId()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->defaultScrollId:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra;->getTableRowView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method
