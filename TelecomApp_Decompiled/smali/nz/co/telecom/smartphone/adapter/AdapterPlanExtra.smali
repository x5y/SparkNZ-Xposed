.class public Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;
.super Landroid/widget/BaseAdapter;
.source "AdapterPlanExtra.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;,
        Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private debug:Z

.field private defaultSelectedId:I

.field private fragPlanDetail:Lnz/co/telecom/smartphone/fragments/FragPlanDetail;

.field private fromUsageMeter:Z

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mServerProductDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

.field private mServerProductDTOWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;",
            ">;"
        }
    .end annotation
.end field

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
    .line 46
    const-class v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnz/co/telecom/smartphone/fragments/FragPlanDetail;Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;)V
    .locals 9
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "fragPlanDetail"    # Lnz/co/telecom/smartphone/fragments/FragPlanDetail;
    .param p3, "serverProduct"    # Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;
    .param p4, "mLineExtendedUsageMetersDTO"    # Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;

    .prologue
    const/4 v7, 0x0

    .line 60
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->sections:Ljava/util/ArrayList;

    .line 51
    iput-boolean v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    .line 52
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mServerProductDTOWrappers:Ljava/util/List;

    .line 53
    iput v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->defaultSelectedId:I

    .line 55
    iput-boolean v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->fromUsageMeter:Z

    .line 61
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->fragPlanDetail:Lnz/co/telecom/smartphone/fragments/FragPlanDetail;

    .line 63
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mInflater:Landroid/view/LayoutInflater;

    .line 64
    iput-object p3, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mServerProductDTO:Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;

    .line 65
    if-eqz p4, :cond_0

    .line 66
    const/4 v6, 0x1

    iput-boolean v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->fromUsageMeter:Z

    .line 67
    iget-boolean v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    if-eqz v6, :cond_0

    .line 68
    sget-object v6, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLineExtendedUsageMetersDTO getProductInstanceId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p4}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->getProductInstanceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    const/4 v2, 0x1

    .line 73
    .local v2, "myPosition":I
    invoke-virtual {p3}, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductsDTO;->getProductGroups()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;

    .line 74
    .local v3, "oneGroup":Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->sections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->getUsageType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->getProducts()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->getProducts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 76
    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->getProducts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;

    .line 77
    .local v4, "oneProduct":Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mServerProductDTOWrappers:Ljava/util/List;

    new-instance v7, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->getUsageType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8, v3, v4}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;Ljava/lang/String;Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-boolean v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->fromUsageMeter:Z

    if-eqz v6, :cond_2

    .line 79
    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedUsageMetersDTO;->getProductInstanceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    iput v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->defaultSelectedId:I

    .line 84
    :cond_2
    iget-boolean v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    if-eqz v6, :cond_3

    .line 85
    sget-object v6, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "oneProduct in first getType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_3
    iget-boolean v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    if-eqz v6, :cond_4

    .line 87
    sget-object v6, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "oneProduct in first getTitle "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 89
    goto :goto_1

    .line 91
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "oneProduct":Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;
    :cond_5
    new-instance v5, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;

    invoke-direct {v5}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;-><init>()V

    .line 92
    .local v5, "temp":Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mServerProductDTOWrappers:Ljava/util/List;

    new-instance v7, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->getUsageType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8, v3, v5}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;Ljava/lang/String;Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 95
    .end local v3    # "oneGroup":Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;
    .end local v5    # "temp":Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;
    :cond_6
    return-void
.end method

.method static synthetic access$000(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;

    .prologue
    .line 45
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getTableRowView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "isForHeader"    # Z

    .prologue
    .line 218
    const/4 v2, 0x0

    .line 220
    .local v2, "holder":Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mServerProductDTOWrappers:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;

    .line 221
    .local v4, "lineWrapper":Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;
    iget-boolean v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    if-eqz v7, :cond_0

    .line 222
    sget-object v7, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " getTableRowView position "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;->oneProduct:Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;

    invoke-virtual {v9}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    iget-boolean v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    if-eqz v7, :cond_1

    .line 224
    sget-object v7, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " getTableRowView position "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;->oneProduct:Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;

    invoke-virtual {v9}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1
    move-object v6, p2

    .line 226
    .local v6, "viewOut":Landroid/view/View;
    iget-boolean v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    if-eqz v7, :cond_2

    .line 227
    sget-object v7, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " getTableRowView lineWrapper "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_2
    iget-boolean v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    if-eqz v7, :cond_3

    .line 229
    sget-object v7, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " getTableRowView isForHeader"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_3
    if-nez v6, :cond_5

    .line 232
    :try_start_0
    new-instance v3, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    invoke-direct {v3, p0}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v2    # "holder":Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .local v3, "holder":Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    :try_start_1
    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030062

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 234
    invoke-virtual {v6, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    const v7, 0x7f09019e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->xTitle:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {v3, v7}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$102(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYBoldTextView;)Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 236
    const v7, 0x7f09019f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnz/co/telecom/smartphone/widget/TMYButton;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->xButton:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static {v3, v7}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$202(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYButton;)Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 237
    const v7, 0x7f0901a6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_details_tablelayout:Landroid/widget/LinearLayout;
    invoke-static {v3, v7}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$302(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 239
    const v7, 0x7f09012e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnz/co/telecom/smartphone/widget/TMYButton;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_action_button:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static {v3, v7}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$402(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYButton;)Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 240
    const v7, 0x7f0901a1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_product_title:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {v3, v7}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$502(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYBoldTextView;)Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 241
    const v7, 0x7f0901a3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnz/co/telecom/smartphone/widget/TMYTextView;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_plandetails_product_expire_date:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v3, v7}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$602(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 243
    const v7, 0x7f0901a2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnz/co/telecom/smartphone/widget/TMYTextView;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_plandetails_product_expire_date_label:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v3, v7}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$702(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 245
    const v7, 0x7f0901a4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnz/co/telecom/smartphone/widget/TMYTextView;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_plandetails_product_labels:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v3, v7}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$802(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 247
    const v7, 0x7f09015b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->viewGroupSectionHeader:Landroid/view/ViewGroup;
    invoke-static {v3, v7}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$902(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 248
    const v7, 0x7f09015f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->viewGroupDetailsSection:Landroid/view/ViewGroup;
    invoke-static {v3, v7}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1002(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 249
    const v7, 0x7f0901aa

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->viewGroupSectionFooter:Landroid/view/ViewGroup;
    invoke-static {v3, v7}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1102(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 250
    const v7, 0x7f0901a7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_button_layout:Landroid/widget/RelativeLayout;
    invoke-static {v3, v7}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1202(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 252
    const v7, 0x7f0901a9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_buttons_layout:Landroid/widget/LinearLayout;
    invoke-static {v3, v7}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1302(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 254
    const v7, 0x7f0901a0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->subheader_layout:Landroid/widget/RelativeLayout;
    invoke-static {v3, v7}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1402(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 255
    const v7, 0x7f0901a5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->subheader_content_layout:Landroid/widget/RelativeLayout;
    invoke-static {v3, v7}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1502(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 256
    const v7, 0x7f0901a8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnz/co/telecom/smartphone/widget/TMYTextView;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_button_explain:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v3, v7}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1602(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 262
    .end local v3    # "holder":Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .restart local v2    # "holder":Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    :goto_0
    :try_start_2
    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->mServerProductDTOWrappers:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;
    invoke-static {v2, v4}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1702(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;)Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;

    .line 264
    iget-boolean v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    if-eqz v7, :cond_4

    .line 265
    sget-object v7, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " getTableRowView viewOut"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_4
    iget-object v5, v4, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;->usageType:Ljava/lang/String;

    .line 267
    .local v5, "usageType":Ljava/lang/String;
    if-eqz p4, :cond_6

    .line 268
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->viewGroupSectionHeader:Landroid/view/ViewGroup;
    invoke-static {v2}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$900(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/view/ViewGroup;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 269
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->viewGroupDetailsSection:Landroid/view/ViewGroup;
    invoke-static {v2}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1000(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/view/ViewGroup;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 270
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->xTitle:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {v2}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$100(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->xButton:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static {v2}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$200(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v7

    invoke-virtual {v7, p0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->xButton:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static {v2}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$200(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v7

    invoke-virtual {v7, v5}, Lnz/co/telecom/smartphone/widget/TMYButton;->setTag(Ljava/lang/Object;)V

    .line 283
    .end local v5    # "usageType":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 259
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    move-object v2, v0

    goto :goto_0

    .line 274
    .restart local v5    # "usageType":Ljava/lang/String;
    :cond_6
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->viewGroupSectionHeader:Landroid/view/ViewGroup;
    invoke-static {v2}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$900(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/view/ViewGroup;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 275
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->viewGroupDetailsSection:Landroid/view/ViewGroup;
    invoke-static {v2}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1000(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/view/ViewGroup;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 276
    invoke-direct {p0, v2}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->settingDetails(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 279
    .end local v5    # "usageType":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    sget-object v7, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error in getTableRowView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 279
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "holder":Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .restart local v3    # "holder":Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "holder":Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    .restart local v2    # "holder":Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;
    goto :goto_2
.end method

.method private settingDetails(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)V
    .locals 30
    .param p1, "holder"    # Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;

    .prologue
    .line 292
    :try_start_0
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->mServerProductDTOWrappers:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1700(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;->oneProduct:Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;

    move-object/from16 v22, v0

    .line 293
    .local v22, "oneProduct":Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;
    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getType()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_22

    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getType()Ljava/lang/String;

    move-result-object v25

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_22

    .line 295
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->viewGroupDetailsSection:Landroid/view/ViewGroup;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1000(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/view/ViewGroup;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 297
    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getLabels()Ljava/util/List;

    move-result-object v25

    if-eqz v25, :cond_8

    .line 299
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_plandetails_product_labels:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$800(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    .line 302
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .local v16, "labelsText":Ljava/lang/StringBuilder;
    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getLabels()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;

    .line 304
    .local v15, "labelDTO":Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;
    invoke-virtual {v15}, Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;->getLabel()Ljava/lang/String;

    move-result-object v14

    .line 305
    .local v14, "label":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_0

    .line 306
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "label":Ljava/lang/String;
    .end local v15    # "labelDTO":Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;
    .end local v16    # "labelsText":Ljava/lang/StringBuilder;
    .end local v22    # "oneProduct":Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;
    :catch_0
    move-exception v9

    .line 554
    .local v9, "e":Ljava/lang/Exception;
    sget-object v25, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " error in settingDetails "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 310
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v16    # "labelsText":Ljava/lang/StringBuilder;
    .restart local v22    # "oneProduct":Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;
    :cond_2
    :try_start_1
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_plandetails_product_labels:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$800(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v25

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "labelsText":Ljava/lang/StringBuilder;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3

    .line 332
    sget-object v25, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "serverProdct title"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getTitle()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    .line 334
    sget-object v25, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "onePlan getType "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getType()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 336
    sget-object v25, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "onePlan title "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getTitle()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_5
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_product_title:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$500(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    move-result-object v25

    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getTitle()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_details_tablelayout:Landroid/widget/LinearLayout;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$300(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 345
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v5, "combinedDetailsList":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;>;"
    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getDetails()Ljava/util/List;

    move-result-object v25

    if-eqz v25, :cond_6

    .line 349
    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getDetails()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 353
    :cond_6
    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getAdditionalDetails()Ljava/util/List;

    move-result-object v25

    if-eqz v25, :cond_a

    .line 355
    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getAdditionalDetails()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnz/co/telecom/smartphone/dto/lineproduct/DetailGroupDTO;

    .line 356
    .local v6, "detailGroupDTO":Lnz/co/telecom/smartphone/dto/lineproduct/DetailGroupDTO;
    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/lineproduct/DetailGroupDTO;->getDetails()Ljava/util/List;

    move-result-object v25

    if-eqz v25, :cond_7

    .line 357
    invoke-virtual {v6}, Lnz/co/telecom/smartphone/dto/lineproduct/DetailGroupDTO;->getDetails()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 314
    .end local v5    # "combinedDetailsList":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;>;"
    .end local v6    # "detailGroupDTO":Lnz/co/telecom/smartphone/dto/lineproduct/DetailGroupDTO;
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getPeriodEnd()Ljava/util/Date;

    move-result-object v25

    if-eqz v25, :cond_9

    .line 315
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_plandetails_product_expire_date_label:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$700(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v25

    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getPeriodEndLabel()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_plandetails_product_expire_date:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$600(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v25

    const-string v26, "%1$te %1$tb %1$tY"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->getPeriodEnd()Ljava/util/Date;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :goto_4
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_plandetails_product_labels:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$800(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 321
    :cond_9
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_plandetails_product_expire_date_label:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$700(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v25

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_header_plandetails_product_expire_date:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$600(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v25

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 362
    .restart local v5    # "combinedDetailsList":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;>;"
    :cond_a
    if-eqz v5, :cond_20

    .line 363
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;

    .line 364
    .local v21, "oneDet":Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    .line 365
    sget-object v25, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "serverProdct oneDet key:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v21 .. v21}, Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;->getKey()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    move/from16 v25, v0

    if-eqz v25, :cond_c

    .line 367
    sget-object v25, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "serverProdct oneDet value:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v21 .. v21}, Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;->getValue()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_c
    const/4 v7, 0x0

    .line 371
    .local v7, "detailsViewOut":Landroid/view/ViewGroup;
    invoke-virtual/range {v21 .. v21}, Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;->getKey()Ljava/lang/String;

    move-result-object v25

    const-string v26, "title"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_d

    invoke-virtual/range {v21 .. v21}, Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;->getKey()Ljava/lang/String;

    move-result-object v25

    const-string v26, "full_width"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 374
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v25, v0

    const v26, 0x7f030063

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .end local v7    # "detailsViewOut":Landroid/view/ViewGroup;
    check-cast v7, Landroid/view/ViewGroup;

    .line 378
    .restart local v7    # "detailsViewOut":Landroid/view/ViewGroup;
    const v25, 0x7f0901ac

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 380
    .local v11, "fullWidthTxtVw":Landroid/widget/TextView;
    invoke-virtual/range {v21 .. v21}, Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;->getValue()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    .end local v11    # "fullWidthTxtVw":Landroid/widget/TextView;
    :goto_6
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_details_tablelayout:Landroid/widget/LinearLayout;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$300(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    .line 383
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v25, v0

    const v26, 0x7f030064

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .end local v7    # "detailsViewOut":Landroid/view/ViewGroup;
    check-cast v7, Landroid/view/ViewGroup;

    .line 387
    .restart local v7    # "detailsViewOut":Landroid/view/ViewGroup;
    const v25, 0x7f0901ad

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 389
    .local v13, "keyTxtVw":Landroid/widget/TextView;
    invoke-virtual/range {v21 .. v21}, Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;->getKey()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    const v25, 0x7f0901ae

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 393
    .local v24, "valueTxtVw":Landroid/widget/TextView;
    invoke-virtual/range {v21 .. v21}, Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;->getValue()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 400
    .end local v7    # "detailsViewOut":Landroid/view/ViewGroup;
    .end local v13    # "keyTxtVw":Landroid/widget/TextView;
    .end local v21    # "oneDet":Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;
    .end local v24    # "valueTxtVw":Landroid/widget/TextView;
    :cond_f
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->subheader_content_layout:Landroid/widget/RelativeLayout;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1500(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 402
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_13

    .line 403
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->subheader_content_layout:Landroid/widget/RelativeLayout;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1500(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 409
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    move/from16 v25, v0

    if-eqz v25, :cond_10

    .line 410
    sget-object v25, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "oneProduct.get_links() "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->get_links()Ljava/util/Map;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_10
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_buttons_layout:Landroid/widget/LinearLayout;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1300(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 415
    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->get_embedded()Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    move-result-object v25

    if-eqz v25, :cond_17

    .line 416
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_button_layout:Landroid/widget/RelativeLayout;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1200(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 419
    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->get_embedded()Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lnz/co/telecom/smartphone/dto/hal/EmbeddedDTO;->getActions()Ljava/util/List;

    move-result-object v4

    .line 422
    .local v4, "actions":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;>;"
    if-eqz v4, :cond_16

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_16

    .line 423
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;

    .line 424
    .local v2, "action":Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    move/from16 v25, v0

    if-eqz v25, :cond_11

    .line 425
    sget-object v25, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "action "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    move/from16 v25, v0

    if-eqz v25, :cond_12

    .line 427
    sget-object v25, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "action getTitle "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;->getTitle()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v25, v0

    const v26, 0x7f030044

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout;

    .line 435
    .local v23, "relativeLayout":Landroid/widget/RelativeLayout;
    const v25, 0x7f09012e

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 438
    .local v3, "actionBtn":Lnz/co/telecom/smartphone/widget/TMYButton;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "<b>"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;->getTitle()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "</b>"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setText(Ljava/lang/CharSequence;)V

    .line 441
    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;->getDisabled()Z

    move-result v8

    .line 442
    .local v8, "disabled":Z
    if-nez v8, :cond_14

    const/16 v25, 0x1

    :goto_9
    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setEnabled(Z)V

    .line 443
    invoke-virtual {v3, v2}, Lnz/co/telecom/smartphone/widget/TMYButton;->setTag(Ljava/lang/Object;)V

    .line 444
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_buttons_layout:Landroid/widget/LinearLayout;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1300(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_8

    .line 405
    .end local v2    # "action":Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;
    .end local v3    # "actionBtn":Lnz/co/telecom/smartphone/widget/TMYButton;
    .end local v4    # "actions":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;>;"
    .end local v8    # "disabled":Z
    .end local v23    # "relativeLayout":Landroid/widget/RelativeLayout;
    :cond_13
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->subheader_content_layout:Landroid/widget/RelativeLayout;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1500(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 406
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->subheader_layout:Landroid/widget/RelativeLayout;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1400(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 442
    .restart local v2    # "action":Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;
    .restart local v3    # "actionBtn":Lnz/co/telecom/smartphone/widget/TMYButton;
    .restart local v4    # "actions":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;>;"
    .restart local v8    # "disabled":Z
    .restart local v23    # "relativeLayout":Landroid/widget/RelativeLayout;
    :cond_14
    const/16 v25, 0x0

    goto :goto_9

    .line 450
    .end local v2    # "action":Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;
    .end local v3    # "actionBtn":Lnz/co/telecom/smartphone/widget/TMYButton;
    .end local v8    # "disabled":Z
    .end local v23    # "relativeLayout":Landroid/widget/RelativeLayout;
    :cond_15
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_buttons_layout:Landroid/widget/LinearLayout;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1300(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 453
    :cond_16
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_buttons_layout:Landroid/widget/LinearLayout;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1300(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 456
    .end local v4    # "actions":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;>;"
    :cond_17
    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->get_links()Ljava/util/Map;

    move-result-object v25

    if-eqz v25, :cond_1f

    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->get_links()Ljava/util/Map;

    move-result-object v25

    const-string v26, "action"

    invoke-interface/range {v25 .. v26}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1f

    .line 458
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_buttons_layout:Landroid/widget/LinearLayout;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1300(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 461
    invoke-virtual/range {v22 .. v22}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductDTO;->get_links()Ljava/util/Map;

    move-result-object v25

    const-string v26, "action"

    invoke-interface/range {v25 .. v26}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;

    .line 462
    .local v20, "oneAction":Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    move/from16 v25, v0

    if-eqz v25, :cond_18

    .line 463
    sget-object v25, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "oneAction "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    move/from16 v25, v0

    if-eqz v25, :cond_19

    .line 465
    sget-object v25, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "oneAction getTitle "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->getTitle()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_19
    if-eqz v20, :cond_1e

    .line 467
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_action_button:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$400(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 469
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_action_button:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$400(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "<b>"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->getTitle()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "</b>"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lnz/co/telecom/smartphone/widget/TMYButton;->setText(Ljava/lang/CharSequence;)V

    .line 472
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_action_button:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$400(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->getDisabled()Z

    move-result v25

    if-nez v25, :cond_1b

    const/16 v25, 0x1

    :goto_a
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYButton;->setEnabled(Z)V

    .line 474
    invoke-virtual/range {v20 .. v20}, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->getDisabled()Z

    move-result v8

    .line 475
    .restart local v8    # "disabled":Z
    invoke-virtual/range {v20 .. v20}, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->getTitle()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    const-string v26, "Stop"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1c

    .line 476
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_button_explain:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1600(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0e00cd

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    :cond_1a
    :goto_b
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_action_button:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$400(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYButton;->setTag(Ljava/lang/Object;)V

    .line 490
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_action_button:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$400(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_action_button:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$400(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lnz/co/telecom/smartphone/widget/TMYButton;->invalidate()V

    .line 492
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_action_button:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$400(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 493
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_button_explain:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1600(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    .line 494
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_button_layout:Landroid/widget/RelativeLayout;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1200(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 472
    .end local v8    # "disabled":Z
    :cond_1b
    const/16 v25, 0x0

    goto :goto_a

    .line 479
    .restart local v8    # "disabled":Z
    :cond_1c
    invoke-virtual/range {v20 .. v20}, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->getTitle()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    const-string v26, "Cancel"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 480
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_button_explain:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1600(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0e002b

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 483
    :cond_1d
    invoke-virtual/range {v20 .. v20}, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;->getTitle()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    const-string v26, "Restart"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 484
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_button_explain:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1600(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0e00c0

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 496
    .end local v8    # "disabled":Z
    :cond_1e
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_action_button:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$400(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 497
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_button_explain:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1600(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    .line 498
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_button_layout:Landroid/widget/RelativeLayout;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1200(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 500
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 501
    sget-object v25, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    const-string v26, "no valid action item_content_action_button  gone"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 504
    .end local v20    # "oneAction":Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;
    :cond_1f
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_action_button:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$400(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 505
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_button_explain:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1600(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    .line 506
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_button_layout:Landroid/widget/RelativeLayout;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1200(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 507
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->item_content_plandetails_action_buttons_layout:Landroid/widget/LinearLayout;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1300(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 511
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    move/from16 v25, v0

    if-eqz v25, :cond_21

    .line 512
    sget-object v25, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    const-string v26, "subheader_content_layout item_content_action_buttons gone"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_21
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->subheader_content_layout:Landroid/widget/RelativeLayout;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1500(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 514
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->subheader_layout:Landroid/widget/RelativeLayout;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1400(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 517
    .end local v5    # "combinedDetailsList":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/lineproduct/PropertyDTO;>;"
    :cond_22
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->viewGroupDetailsSection:Landroid/view/ViewGroup;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1000(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/view/ViewGroup;

    move-result-object v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 520
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->mServerProductDTOWrappers:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1700(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;->oneGroup:Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->getProducts()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    if-nez v25, :cond_28

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->mServerProductDTOWrappers:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1700(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;->oneGroup:Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->getMessages()Ljava/util/List;

    move-result-object v25

    if-eqz v25, :cond_28

    const/16 v25, 0x1

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->mServerProductDTOWrappers:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1700(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;->oneGroup:Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->getMessages()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_28

    .line 523
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->viewGroupSectionFooter:Landroid/view/ViewGroup;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1100(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/view/ViewGroup;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 525
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .local v17, "messageContent":Ljava/lang/StringBuilder;
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->mServerProductDTOWrappers:Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1700(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;->oneGroup:Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lnz/co/telecom/smartphone/dto/lineproduct/ProductGroupDTO;->getMessages()Ljava/util/List;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;

    .line 528
    .local v19, "messageGroupDTO":Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;
    invoke-virtual/range {v19 .. v19}, Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;->getValues()Ljava/util/List;

    move-result-object v25

    if-eqz v25, :cond_27

    .line 529
    invoke-virtual/range {v19 .. v19}, Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;->getValues()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_23
    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_26

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;

    .line 530
    .local v18, "messageDTO":Lnz/co/telecom/smartphone/dto/messages/MessageDTO;
    invoke-virtual/range {v18 .. v18}, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->getTitle()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_23

    .line 531
    invoke-virtual/range {v18 .. v18}, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->getTitle()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual/range {v18 .. v18}, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->getMessage()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_24

    .line 534
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->getTitle()Ljava/lang/String;

    move-result-object v25

    const-string v27, "."

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_25

    const-string v25, ""

    :goto_d
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v18 .. v18}, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_24
    const-string v25, "\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 534
    :cond_25
    const-string v25, "."

    goto :goto_d

    .line 542
    .end local v18    # "messageDTO":Lnz/co/telecom/smartphone/dto/messages/MessageDTO;
    :cond_26
    const-string v25, "\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_27
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->viewGroupSectionFooter:Landroid/view/ViewGroup;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1100(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/view/ViewGroup;

    move-result-object v25

    const v26, 0x7f0901ab

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 548
    .local v10, "emptyMessagesTxtVw":Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 550
    .end local v10    # "emptyMessagesTxtVw":Lnz/co/telecom/smartphone/widget/TMYTextView;
    .end local v17    # "messageContent":Ljava/lang/StringBuilder;
    .end local v19    # "messageGroupDTO":Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;
    :cond_28
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->viewGroupSectionFooter:Landroid/view/ViewGroup;
    invoke-static/range {p1 .. p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;->access$1100(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$ViewHolder;)Landroid/view/ViewGroup;

    move-result-object v25

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mServerProductDTOWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDefaultSelectedId()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->defaultSelectedId:I

    return v0
.end method

.method public getHeaderId(I)J
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 201
    const/4 v1, 0x0

    .line 203
    .local v1, "positionIndex":I
    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mServerProductDTOWrappers:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;

    .line 204
    .local v4, "wrapper":Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;
    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->sections:Ljava/util/ArrayList;

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

    .line 205
    .local v3, "usage":Ljava/lang/String;
    iget-object v5, v4, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;->usageType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 206
    int-to-long v5, v1

    .line 211
    .end local v3    # "usage":Ljava/lang/String;
    :goto_1
    return-wide v5

    .line 208
    .restart local v3    # "usage":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 209
    goto :goto_0

    .line 211
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
    .line 197
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->getTableRowView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mServerProductDTOWrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;

    iget-object v0, v0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$LineProductDTOWrapper;->usageType:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 156
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->getTableRowView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v11, 0x7f09019f

    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 99
    iget-boolean v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->debug:Z

    if-eqz v6, :cond_0

    .line 100
    sget-object v6, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    const-string v7, "clicked in list items adapter"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v6, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clicked in tracker adapter view.getId() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v11, :cond_2

    .line 105
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mContext:Landroid/content/Context;

    instance-of v6, v6, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    if-eqz v6, :cond_1

    .line 106
    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mContext:Landroid/content/Context;

    check-cast v5, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    .line 107
    .local v5, "ra":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    invoke-virtual {v5, v10}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->setCurrentNavigationMenuFragment(I)V

    .line 108
    new-instance v6, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lnz/co/telecom/smartphone/fragments/FragBuyExtra;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->switchContent(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    .line 133
    .end local v5    # "ra":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f09012e

    if-ne v6, v7, :cond_1

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, "action":Ljava/lang/Object;
    instance-of v6, v0, Lnz/co/telecom/smartphone/dto/lineproduct/LineProductActionDTO;

    if-eqz v6, :cond_3

    .line 115
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragBase;->requestRefreshForExtrasUpdate()V

    .line 116
    new-instance v2, Lnz/co/telecom/smartphone/task/ExtrasTask;

    invoke-direct {v2}, Lnz/co/telecom/smartphone/task/ExtrasTask;-><init>()V

    .line 117
    .local v2, "et":Lnz/co/telecom/smartphone/task/ExtrasTask;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->mContext:Landroid/content/Context;

    aput-object v7, v6, v9

    const/4 v7, 0x1

    aput-object p0, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    invoke-virtual {v2, v6}, Lnz/co/telecom/smartphone/task/ExtrasTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 118
    .end local v2    # "et":Lnz/co/telecom/smartphone/task/ExtrasTask;
    :cond_3
    instance-of v6, v0, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;

    if-eqz v6, :cond_1

    move-object v1, v0

    .line 119
    check-cast v1, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;

    .line 120
    .local v1, "actionLinkDTO":Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/lineproduct/ActionLinkDTO;->getMessages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;

    .line 121
    .local v4, "messageGroupDTO":Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;
    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/messages/MessageGroupDTO;->getValues()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;

    .line 122
    .local v3, "messageDTO":Lnz/co/telecom/smartphone/dto/messages/MessageDTO;
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;->fragPlanDetail:Lnz/co/telecom/smartphone/fragments/FragPlanDetail;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/messages/MessageDTO;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$1;

    invoke-direct {v9, p0, v0}, Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra$1;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterPlanExtra;Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v8, v9}, Lnz/co/telecom/smartphone/fragments/FragPlanDetail;->showConfirmDialog(Ljava/lang/String;Ljava/lang/String;Lnz/co/telecom/smartphone/fragments/OnDismiss;)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method
