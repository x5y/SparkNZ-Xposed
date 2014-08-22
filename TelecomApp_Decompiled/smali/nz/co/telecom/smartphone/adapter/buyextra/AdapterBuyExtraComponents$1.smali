.class Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$1;
.super Ljava/lang/Object;
.source "AdapterBuyExtraComponents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->getTableRowView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$1;->this$0:Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents$1;->this$0:Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/buyextra/AdapterBuyExtraComponents;->mBuyExtraRequestHandler:Lnz/co/telecom/smartphone/fragments/buyextras/BuyExtraRequestHandler;

    invoke-interface {v0}, Lnz/co/telecom/smartphone/fragments/buyextras/BuyExtraRequestHandler;->processBuyExtraRequest()V

    .line 107
    return-void
.end method
