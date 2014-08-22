.class Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;
.super Ljava/lang/Object;
.source "AdapterBuyExtraComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field buttonBuyExtra:Landroid/widget/Button;

.field textViewProductCharge:Landroid/widget/TextView;

.field textViewProductPrice:Landroid/widget/TextView;

.field textViewProductTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;

.field viewGroupFooterTopUpButtonContainer:Landroid/view/ViewGroup;

.field viewGroupHeaderContainer:Landroid/view/ViewGroup;

.field viewGroupInsufficientCreditWarningContainer:Landroid/view/ViewGroup;

.field viewGroupProductComponentsContainer:Landroid/view/ViewGroup;

.field viewGroupProductDescriptionContainer:Landroid/view/ViewGroup;

.field viewGroupProductTermsConditionsContainer:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>(Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;->this$0:Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;
    .param p2, "x1"    # Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$1;

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$ViewHolder;-><init>(Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;)V

    return-void
.end method
