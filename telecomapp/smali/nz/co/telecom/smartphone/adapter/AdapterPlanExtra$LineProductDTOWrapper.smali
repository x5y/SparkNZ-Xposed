.class Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;
.super Ljava/lang/Object;
.source "AdapterPlanExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LineProductDTOWrapper"
.end annotation


# instance fields
.field public oneGroup:Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;

.field public oneProduct:Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;

.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;

.field public usageType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;Ljava/lang/String;Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;)V
    .locals 0
    .param p2, "usageType"    # Ljava/lang/String;
    .param p3, "oneGroup"    # Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;
    .param p4, "oneProduct"    # Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;

    .prologue
    .line 140
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;->usageType:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;->oneGroup:Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;

    .line 143
    iput-object p4, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;->oneProduct:Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;

    .line 144
    return-void
.end method
