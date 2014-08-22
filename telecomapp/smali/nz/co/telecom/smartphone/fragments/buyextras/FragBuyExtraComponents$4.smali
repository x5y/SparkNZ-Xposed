.class Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$4;
.super Ljava/lang/Object;
.source "FragBuyExtraComponents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->handleBuyExtraResponse()V
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
    .line 272
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$4;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 275
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$4;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    # getter for: Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->content_no_data_error:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->access$2000(Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents$4;->this$0:Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/buyextras/FragBuyExtraComponents;->processBuyExtraRequest()V

    .line 277
    return-void
.end method
