.class public Lnz/co/telecom/smartphone/adapter/AdapterActivityData;
.super Landroid/widget/ArrayAdapter;
.source "AdapterActivityData.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;,
        Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ResultFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTIVITY_LABEL_SUBTITLE:Ljava/lang/String; = "SUBTITLE"

.field private static final ACTIVITY_LABEL_TITLE:Ljava/lang/String; = "TITLE"

.field private static final TAG:Ljava/lang/String;

.field private static final USAGE_TYPES:[Ljava/lang/String;

.field private static usageTypeComparatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private allData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;",
            ">;"
        }
    .end annotation
.end field

.field private debug:Z

.field private evenRowColor:I

.field private filter:Landroid/widget/Filter;

.field filteredList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private oddRowColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 30
    const-class v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->TAG:Ljava/lang/String;

    .line 40
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "DATA"

    aput-object v5, v4, v7

    const-string v5, "TEXT"

    aput-object v5, v4, v6

    const-string v5, "VOICE"

    aput-object v5, v4, v9

    const-string v5, "OTHER"

    aput-object v5, v4, v10

    sput-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    .line 54
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->usageTypeComparatorMap:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v0, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->usageTypeComparatorMap:Ljava/util/HashMap;

    sget-object v5, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v2, "textMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->usageTypeComparatorMap:Ljava/util/HashMap;

    sget-object v5, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v3, "voiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->usageTypeComparatorMap:Ljava/util/HashMap;

    sget-object v5, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v1, "otherMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v4, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->usageTypeComparatorMap:Ljava/util/HashMap;

    sget-object v5, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;>;"
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->debug:Z

    .line 35
    iput-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->filteredList:Ljava/util/List;

    .line 36
    iput-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->mContext:Landroid/content/Context;

    .line 37
    iput-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->allData:Ljava/util/List;

    .line 91
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->mContext:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->oddRowColor:I

    .line 94
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->evenRowColor:I

    .line 96
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->mInflater:Landroid/view/LayoutInflater;

    .line 99
    if-eqz p3, :cond_0

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->allData:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->filteredList:Ljava/util/List;

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->allData:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->filteredList:Ljava/util/List;

    goto :goto_0
.end method

.method static synthetic access$1100(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    .prologue
    .line 29
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->allData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    .prologue
    .line 29
    iget-boolean v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->debug:Z

    return v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->usageTypeComparatorMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "oneValue"    # Ljava/lang/String;

    .prologue
    .line 314
    if-nez p1, :cond_0

    .line 315
    const-string p1, ""

    .line 317
    .end local p1    # "oneValue":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private getActivityLabel(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;>;"
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    :cond_0
    const-string v2, ""

    .line 199
    :goto_0
    return-object v2

    .line 192
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;

    .line 193
    .local v1, "label":Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;->getLabel()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 199
    .end local v1    # "label":Lnz/co/telecom/smartphone/dto/recentactivity/LabelDTO;
    :cond_3
    const-string v2, ""

    goto :goto_0
.end method

.method private setData(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)V
    .locals 9
    .param p1, "holder"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 160
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->oneItemDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;
    invoke-static {p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$600(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 161
    .local v0, "dateTime":Ljava/util/Date;
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_date:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$000(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v2

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0100

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->oneItemDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;
    invoke-static {p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$600(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getUsageType()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "usageType":Ljava/lang/String;
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_type:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$200(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    sget-object v2, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_time:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$100(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_title:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$300(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v2

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->oneItemDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;
    invoke-static {p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$600(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getLabels()Ljava/util/List;

    move-result-object v3

    const-string v4, "TITLE"

    invoke-direct {p0, v3, v4}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->getActivityLabel(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_detail:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$400(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_0
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_cost:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$500(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v2

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->oneItemDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;
    invoke-static {p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$600(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getCost()F

    move-result v3

    invoke-static {v3, v8, v8, v7}, Lnz/co/telecom/smartphone/util/CurrencyFormatUtils;->formatCurrency(FIIZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-void

    .line 172
    :cond_0
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_time:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$100(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v2

    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0101

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_title:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$300(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v2

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->oneItemDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;
    invoke-static {p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$600(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_detail:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$400(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v2

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->oneItemDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;
    invoke-static {p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$600(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getLabels()Ljava/util/List;

    move-result-object v3

    const-string v4, "SUBTITLE"

    invoke-direct {p0, v3, v4}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->getActivityLabel(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->filteredList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->filter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ResultFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ResultFilter;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Lnz/co/telecom/smartphone/adapter/AdapterActivityData$1;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->filter:Landroid/widget/Filter;

    .line 327
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->filter:Landroid/widget/Filter;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->getItem(I)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->filteredList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 119
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "holder":Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;
    move-object v1, p2

    .line 125
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_0

    .line 126
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03004e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 127
    new-instance v0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;

    .end local v0    # "holder":Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;
    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;)V

    .line 128
    .restart local v0    # "holder":Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;
    const v2, 0x7f090145

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYTextView;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_date:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v0, v2}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$002(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 130
    const v2, 0x7f090146

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYTextView;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_time:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v0, v2}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$102(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 132
    const v2, 0x7f090147

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYTextView;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_type:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v0, v2}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$202(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 134
    const v2, 0x7f090148

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYTextView;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_title:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v0, v2}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$302(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 136
    const v2, 0x7f090149

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYTextView;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_detail:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v0, v2}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$402(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 138
    const v2, 0x7f09014a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYTextView;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->activity_data_cost:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v0, v2}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$502(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;Lnz/co/telecom/smartphone/widget/TMYTextView;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 140
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->filteredList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->oneItemDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;
    invoke-static {v0, v2}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$602(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    .line 141
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    :goto_0
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_1

    iget v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->evenRowColor:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 149
    invoke-direct {p0, v0}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->setData(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;)V

    .line 151
    return-object v1

    .line 143
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;
    check-cast v0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;

    .line 144
    .restart local v0    # "holder":Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;
    iget-object v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->filteredList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    # setter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->oneItemDTO:Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;
    invoke-static {v0, v2}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;->access$602(Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ViewHolder;Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;)Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    goto :goto_0

    .line 147
    :cond_1
    iget v2, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->oddRowColor:I

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public sortByActivity(Z)V
    .locals 2
    .param p1, "descending"    # Z

    .prologue
    .line 251
    new-instance v0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;

    invoke-direct {v0, p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Z)V

    .line 309
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;>;"
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->filteredList:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 310
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->notifyDataSetChanged()V

    .line 311
    return-void
.end method

.method public sortByCost(Z)V
    .locals 2
    .param p1, "descending"    # Z

    .prologue
    .line 227
    new-instance v0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$2;

    invoke-direct {v0, p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$2;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Z)V

    .line 246
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;>;"
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->filteredList:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 247
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->notifyDataSetChanged()V

    .line 248
    return-void
.end method

.method public sortByDate(Z)V
    .locals 2
    .param p1, "descending"    # Z

    .prologue
    .line 203
    new-instance v0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$1;

    invoke-direct {v0, p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$1;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Z)V

    .line 222
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;>;"
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->filteredList:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 223
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->notifyDataSetChanged()V

    .line 224
    return-void
.end method
