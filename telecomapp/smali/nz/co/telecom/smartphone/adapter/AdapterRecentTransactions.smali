.class public Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;
.super Landroid/widget/BaseAdapter;
.source "AdapterRecentTransactions.java"

# interfaces
.implements Lnz/co/telecom/smartphone/widget/stickyheaders/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$1;,
        Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private allOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mStringRecentTransactionsUnavailable:Ljava/lang/String;

.field private mStringStatusFailure:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;)V
    .locals 4
    .param p1, "parentFA"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "ordersListDTO"    # Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;
    .param p3, "lineExtendedDTO"    # Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->allOrders:Ljava/util/List;

    .line 35
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->mContext:Landroid/content/Context;

    .line 36
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    invoke-direct {p0}, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->initResources()V

    .line 40
    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p2}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;->getOrders()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p2}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListDTO;->getOrders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;

    .line 43
    .local v1, "order":Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->allOrders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "order":Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;
    :cond_0
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->allOrders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 53
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->allOrders:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_1
    return-void
.end method

.method private initResources()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->mContext:Landroid/content/Context;

    const v1, 0x7f0e00a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->mStringRecentTransactionsUnavailable:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->mContext:Landroid/content/Context;

    const v1, 0x7f0e00cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->mStringStatusFailure:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->allOrders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 81
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 86
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030066

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "headerView":Landroid/view/View;
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->getItem(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/List;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->allOrders:Ljava/util/List;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 72
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v11, 0x7f0e00a7

    const v10, 0x7f0e00a2

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 92
    move-object v2, p2

    .line 96
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->allOrders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v9, :cond_1

    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->allOrders:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 97
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->TAG:Ljava/lang/String;

    const-string v5, "no recent transactions present so show empty message..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030067

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2    # "view":Landroid/view/View;
    check-cast v2, Landroid/view/ViewGroup;

    .line 172
    .restart local v2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-object v2

    .line 101
    :cond_1
    if-nez p2, :cond_3

    .line 102
    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030065

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 104
    new-instance v3, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;

    invoke-direct {v3, p0, v6}, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$1;)V

    .line 106
    .local v3, "viewHolder":Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;
    const v4, 0x7f0901af

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;->item_content_recenttransactions_result_iv:Landroid/widget/ImageView;

    .line 107
    const v4, 0x7f0901b1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iput-object v4, v3, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;->item_content_recenttransactions_title:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 108
    const v4, 0x7f0901b3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/widget/TMYTextView;

    iput-object v4, v3, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;->item_content_recenttransactions_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 109
    const v4, 0x7f0901b2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/widget/TMYTextView;

    iput-object v4, v3, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;->item_content_recenttransactions_time:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 110
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    :goto_1
    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->allOrders:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;

    .line 117
    .local v0, "order":Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->isOrderTypeFailed()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 118
    iget-object v4, v3, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;->item_content_recenttransactions_title:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->mStringRecentTransactionsUnavailable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->getDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 121
    iget-object v4, v3, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;->item_content_recenttransactions_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->mContext:Landroid/content/Context;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->getDate()Ljava/util/Date;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v10, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v4, v3, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;->item_content_recenttransactions_time:Lnz/co/telecom/smartphone/widget/TMYTextView;

    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->mContext:Landroid/content/Context;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->getDate()Ljava/util/Date;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v11, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :goto_2
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->getResult()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 156
    const v1, 0x7f020133

    .line 157
    .local v1, "statusImageResource":I
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->isResultSuccess()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 158
    const v1, 0x7f020132

    .line 167
    :cond_2
    :goto_3
    iget-object v4, v3, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;->item_content_recenttransactions_result_iv:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 112
    .end local v0    # "order":Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;
    .end local v1    # "statusImageResource":I
    .end local v3    # "viewHolder":Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;

    .restart local v3    # "viewHolder":Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;
    goto :goto_1

    .line 128
    .restart local v0    # "order":Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;
    :cond_4
    iget-object v4, v3, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;->item_content_recenttransactions_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v4, v3, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;->item_content_recenttransactions_time:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 134
    :cond_5
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 135
    iget-object v4, v3, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;->item_content_recenttransactions_title:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :goto_4
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->getDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 141
    iget-object v4, v3, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;->item_content_recenttransactions_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->mContext:Landroid/content/Context;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->getDate()Ljava/util/Date;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v10, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v4, v3, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;->item_content_recenttransactions_time:Lnz/co/telecom/smartphone/widget/TMYTextView;

    iget-object v5, p0, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions;->mContext:Landroid/content/Context;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->getDate()Ljava/util/Date;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v11, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 137
    :cond_6
    iget-object v4, v3, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;->item_content_recenttransactions_title:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 148
    :cond_7
    iget-object v4, v3, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;->item_content_recenttransactions_date:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v4, v3, Lnz/co/telecom/smartphone/adapter/AdapterRecentTransactions$ViewHolder;->item_content_recenttransactions_time:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 159
    .restart local v1    # "statusImageResource":I
    :cond_8
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->isResultFailed()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 160
    const v1, 0x7f020134

    goto/16 :goto_3

    .line 161
    :cond_9
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->isResultInProgress()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 162
    const v1, 0x7f020133

    goto/16 :goto_3

    .line 163
    :cond_a
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/orderslist/OrdersListOrdersDTO;->isResultPending()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    const v1, 0x7f020133

    goto/16 :goto_3
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method
