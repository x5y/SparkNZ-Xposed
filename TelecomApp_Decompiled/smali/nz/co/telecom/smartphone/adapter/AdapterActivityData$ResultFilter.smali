.class Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ResultFilter;
.super Landroid/widget/Filter;
.source "AdapterActivityData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/adapter/AdapterActivityData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;


# direct methods
.method private constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ResultFilter;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Lnz/co/telecom/smartphone/adapter/AdapterActivityData$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData;
    .param p2, "x1"    # Lnz/co/telecom/smartphone/adapter/AdapterActivityData$1;

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ResultFilter;-><init>(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 9
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 333
    new-instance v4, Landroid/widget/Filter$FilterResults;

    invoke-direct {v4}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 335
    .local v4, "results":Landroid/widget/Filter$FilterResults;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "filterText":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 337
    :cond_0
    monitor-enter p0

    .line 338
    :try_start_0
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ResultFilter;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->allData:Ljava/util/List;
    invoke-static {v6}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$1100(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 339
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ResultFilter;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->allData:Ljava/util/List;
    invoke-static {v6}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$1100(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v4, Landroid/widget/Filter$FilterResults;->count:I

    .line 340
    monitor-exit p0

    .line 365
    :goto_0
    return-object v4

    .line 340
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 342
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v5, "tempFilterList":Ljava/util/List;, "Ljava/util/List<Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ResultFilter;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->allData:Ljava/util/List;
    invoke-static {v6}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$1100(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "l":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 347
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ResultFilter;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->allData:Ljava/util/List;
    invoke-static {v6}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$1100(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    .line 349
    .local v3, "m":Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;
    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getUsageType()Ljava/lang/String;

    move-result-object v6

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$800()[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 351
    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 352
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ResultFilter;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->debug:Z
    invoke-static {v6}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$1200(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 353
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$1300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Filtering added "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getUsageType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_2
    iget-object v6, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ResultFilter;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->debug:Z
    invoke-static {v6}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$1200(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 355
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$1300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Filtering added "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_3
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 361
    .end local v3    # "m":Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;
    :cond_5
    iput-object v5, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 362
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v4, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 371
    iget-object v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ResultFilter;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->filteredList:Ljava/util/List;

    .line 373
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 374
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ResultFilter;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->notifyDataSetChanged()V

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$ResultFilter;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
