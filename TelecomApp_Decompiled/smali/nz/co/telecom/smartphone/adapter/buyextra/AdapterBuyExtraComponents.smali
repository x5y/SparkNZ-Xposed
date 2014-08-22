.class public Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;
.super Landroid/widget/BaseAdapter;
.source "AdapterBuyExtraComponents.java"

# interfaces
.implements Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mBuyExtraRequestHandler:Lnz/co/telecom/smartphone/fragments/buyextras/BuyExtraRequestHandler;

.field private mContext:Landroid/content/Context;

.field protected mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

.field protected mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;Lnz/co/telecom/smartphone/fragments/buyextras/BuyExtraRequestHandler;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "lineExtendedDTO"    # Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
    .param p3, "extrasCatalogueDTO"    # Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;
    .param p4, "extrasCatalogueProductsDTO"    # Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;
    .param p5, "buyExtraReguestHandler"    # Lnz/co/telecom/smartphone/fragments/buyextras/BuyExtraRequestHandler;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mContext:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object p3, p0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    .line 42
    iput-object p4, p0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    .line 43
    iput-object p5, p0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mBuyExtraRequestHandler:Lnz/co/telecom/smartphone/fragments/buyextras/BuyExtraRequestHandler;

    .line 44
    iput-object p2, p0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    .line 45
    return-void
.end method

.method private getTableRowView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 29
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "isForHeader"    # Z

    .prologue
    .line 80
    move-object/from16 v19, p2

    .line 83
    .local v19, "viewForPosition":Landroid/view/View;
    if-nez v19, :cond_1

    .line 84
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x7f030053

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 86
    new-instance v22, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;-><init>(Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$1;)V

    .line 87
    .local v22, "viewHolder":Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    const v23, 0x7f09015b

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupHeaderContainer:Landroid/view/ViewGroup;

    .line 90
    const v23, 0x7f090166

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupInsufficientCreditWarningContainer:Landroid/view/ViewGroup;

    .line 92
    const v23, 0x7f09015f

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupProductDescriptionContainer:Landroid/view/ViewGroup;

    .line 93
    const v23, 0x7f09016d

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupProductComponentsContainer:Landroid/view/ViewGroup;

    .line 94
    const v23, 0x7f09016e

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupProductTermsConditionsContainer:Landroid/view/ViewGroup;

    .line 95
    const v23, 0x7f09016f

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupFooterTopUpButtonContainer:Landroid/view/ViewGroup;

    .line 97
    const v23, 0x7f09015c

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->textViewProductTitle:Landroid/widget/TextView;

    .line 98
    const v23, 0x7f09016a

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->textViewProductPrice:Landroid/widget/TextView;

    .line 99
    const v23, 0x7f09016c

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->textViewProductCharge:Landroid/widget/TextView;

    .line 101
    const v23, 0x7f090170

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->buttonBuyExtra:Landroid/widget/Button;

    .line 103
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->buttonBuyExtra:Landroid/widget/Button;

    move-object/from16 v23, v0

    new-instance v24, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$1;-><init>(Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :goto_0
    if-eqz p4, :cond_2

    .line 115
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupInsufficientCreditWarningContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 116
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupProductTermsConditionsContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 117
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupProductDescriptionContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 118
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupProductComponentsContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 120
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupHeaderContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 122
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->textViewProductTitle:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getTitle()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->textViewProductPrice:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const-string v24, "$%.2f"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getPrice()D

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->textViewProductCharge:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getChargePeriod()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupFooterTopUpButtonContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 225
    .end local v22    # "viewHolder":Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;
    :cond_0
    :goto_1
    return-object v19

    .line 111
    :cond_1
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;

    .restart local v22    # "viewHolder":Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;
    goto/16 :goto_0

    .line 129
    :cond_2
    invoke-direct/range {p0 .. p0}, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->isInsufficientCreditAvailable()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 130
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupInsufficientCreditWarningContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 131
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->buttonBuyExtra:Landroid/widget/Button;

    move-object/from16 v23, v0

    const v24, 0x7f0e0024

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setText(I)V

    .line 137
    :goto_2
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupProductTermsConditionsContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 138
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupProductDescriptionContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 139
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupProductComponentsContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 140
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupFooterTopUpButtonContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 142
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupHeaderContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getDetails()Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_5

    .line 148
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupProductDescriptionContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getDetails()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDetailsDTO;

    .line 151
    .local v4, "detailsDTO":Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDetailsDTO;
    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDetailsDTO;->getKey()Ljava/lang/String;

    move-result-object v23

    const-string v24, "FULL_WIDTH"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x7f030055

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 154
    .local v9, "productDetailsTxtVw":Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDetailsDTO;->getValue()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupProductDescriptionContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 220
    .end local v4    # "detailsDTO":Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDetailsDTO;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "productDetailsTxtVw":Lnz/co/telecom/smartphone/widget/TMYTextView;
    .end local v22    # "viewHolder":Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;
    :catch_0
    move-exception v5

    .line 221
    .local v5, "e":Ljava/lang/Exception;
    sget-object v23, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->TAG:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    sget-object v23, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " error in getView "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 133
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v22    # "viewHolder":Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;
    :cond_3
    :try_start_1
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupInsufficientCreditWarningContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 134
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->buttonBuyExtra:Landroid/widget/Button;

    move-object/from16 v23, v0

    const v24, 0x7f0e0020

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2

    .line 158
    .restart local v4    # "detailsDTO":Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDetailsDTO;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x7f030056

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 160
    .local v18, "viewDetailPlanDetails":Landroid/view/View;
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupProductDescriptionContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    const v23, 0x7f090173

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 165
    .local v14, "textViewDetailsKey":Landroid/widget/TextView;
    const v23, 0x7f090174

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 168
    .local v15, "textViewDetailsValue":Landroid/widget/TextView;
    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDetailsDTO;->getKey()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDetailsDTO;->getValue()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 177
    .end local v4    # "detailsDTO":Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDetailsDTO;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v14    # "textViewDetailsKey":Landroid/widget/TextView;
    .end local v15    # "textViewDetailsValue":Landroid/widget/TextView;
    .end local v18    # "viewDetailPlanDetails":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getComponents()Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_6

    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupProductComponentsContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v23

    if-nez v23, :cond_6

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getComponents()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueComponentsDTO;

    .line 179
    .local v3, "catalogueComponent":Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueComponentsDTO;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x7f030054

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 181
    .local v20, "viewGroupComponentDisplay":Landroid/view/ViewGroup;
    const v23, 0x7f090172

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 182
    .local v13, "textViewComponentDescription":Landroid/widget/TextView;
    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueComponentsDTO;->getTitle()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupProductComponentsContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 191
    .end local v3    # "catalogueComponent":Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueComponentsDTO;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v13    # "textViewComponentDescription":Landroid/widget/TextView;
    .end local v20    # "viewGroupComponentDisplay":Landroid/view/ViewGroup;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getTermsConditions()Ljava/util/List;

    move-result-object v23

    if-eqz v23, :cond_0

    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupProductTermsConditionsContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v23

    if-nez v23, :cond_0

    .line 192
    const/4 v8, 0x1

    .line 194
    .local v8, "isFirstTermsConditionsDTO":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getTermsConditions()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueTermsConditionsDTO;

    .line 196
    .local v11, "termsConditionsDTO":Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueTermsConditionsDTO;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x7f030057

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    .line 198
    .local v21, "viewGroupTCDisplay":Landroid/view/ViewGroup;
    const v23, 0x7f090177

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 199
    .local v16, "textViewTermsConditionsHeader":Landroid/widget/TextView;
    const v23, 0x7f090179

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 201
    .local v17, "textViewTermsConditionsText":Landroid/widget/TextView;
    invoke-virtual {v11}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueTermsConditionsDTO;->getTitle()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 205
    .local v12, "termsConditionsText":Ljava/lang/StringBuffer;
    invoke-virtual {v11}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueTermsConditionsDTO;->getContents()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueTermsConditionsContentsDTO;

    .line 206
    .local v10, "termsConditionsContent":Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueTermsConditionsContentsDTO;
    if-nez v8, :cond_7

    .line 207
    const-string v23, "\n\n"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    :cond_7
    invoke-virtual {v10}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueTermsConditionsContentsDTO;->getContents()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    const/4 v8, 0x0

    .line 212
    goto :goto_6

    .line 213
    .end local v10    # "termsConditionsContent":Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueTermsConditionsContentsDTO;
    :cond_8
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    move-object/from16 v0, v22

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->viewGroupProductTermsConditionsContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method private isInsufficientCreditAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 233
    const-wide/16 v1, 0x0

    .line 235
    .local v1, "priceDouble":D
    :try_start_0
    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getPrice()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 241
    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->isPostPaid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v3

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    sget-object v4, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->TAG:Ljava/lang/String;

    const-string v5, "Unable to parse product price"

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mExtrasCatalogueDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueDTO;->getBalance()D

    move-result-wide v4

    cmpg-double v4, v4, v1

    if-gez v4, :cond_0

    .line 246
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 72
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->getTableRowView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mExtrasCatalogueProductsDTO:Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 56
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->getTableRowView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method
