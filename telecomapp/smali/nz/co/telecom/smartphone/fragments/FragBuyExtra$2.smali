.class Lnz/co/telecom/smartphone/fragments/FragBuyExtra$2;
.super Ljava/lang/Object;
.source "FragBuyExtra.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->initData()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragBuyExtra;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragBuyExtra;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra$2;->this$0:Lnz/co/telecom/smartphone/fragments/FragBuyExtra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;

    .line 206
    .local v0, "buyExtraViewHolder":Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;->getCatalogueProductsDTO()Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;

    move-result-object v1

    .line 208
    .local v1, "extrasCatalogueProductsDTO":Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;
    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragBuyExtra$2;->this$0:Lnz/co/telecom/smartphone/fragments/FragBuyExtra;

    # invokes: Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->openBuyExtrasComponentFragment(Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;)V
    invoke-static {v2, v1}, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;->access$100(Lnz/co/telecom/smartphone/fragments/FragBuyExtra;Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;)V

    .line 211
    .end local v0    # "buyExtraViewHolder":Lnz/co/telecom/smartphone/adapter/AdapterBuyExtra$BuyExtraViewHolder;
    .end local v1    # "extrasCatalogueProductsDTO":Lnz/co/telecom/smartphone/dto/extrascatalogue/ExtrasCatalogueProductsDTO;
    :cond_0
    return-void
.end method
