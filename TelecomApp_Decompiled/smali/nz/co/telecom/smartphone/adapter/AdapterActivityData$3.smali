.class Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;
.super Ljava/lang/Object;
.source "AdapterActivityData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->sortByActivity(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

.field final synthetic val$descending:Z


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Z)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    iput-boolean p2, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->val$descending:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 251
    check-cast p1, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->compare(Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;)I

    move-result v0

    return v0
.end method

.method public compare(Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;)I
    .locals 6
    .param p1, "oneItem1"    # Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;
    .param p2, "oneItem2"    # Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    .prologue
    const/4 v4, 0x0

    .line 255
    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getUsageType()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "usageType1":Ljava/lang/String;
    invoke-virtual {p2}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getUsageType()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "usageType2":Ljava/lang/String;
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->usageTypeComparatorMap:Ljava/util/HashMap;
    invoke-static {}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$700()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 262
    .local v2, "usageTypeComp":I
    if-nez v2, :cond_8

    .line 264
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$800()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    iget-boolean v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->val$descending:Z

    if-eqz v3, :cond_0

    .line 267
    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {p2}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getUsage()Ljava/lang/String;

    move-result-object v4

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$900(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getUsage()Ljava/lang/String;

    move-result-object v5

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$900(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 305
    :goto_0
    return v3

    .line 270
    :cond_0
    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getUsage()Ljava/lang/String;

    move-result-object v4

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$900(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {p2}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getUsage()Ljava/lang/String;

    move-result-object v5

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$900(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 273
    :cond_1
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$800()[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 275
    iget-boolean v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->val$descending:Z

    if-eqz v3, :cond_2

    .line 276
    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {p2}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$900(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$900(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 279
    :cond_2
    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$900(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {p2}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$900(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 282
    :cond_3
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$800()[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 284
    iget-boolean v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->val$descending:Z

    if-eqz v3, :cond_4

    .line 285
    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {p2}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$900(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$900(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_0

    .line 288
    :cond_4
    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$900(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {p2}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$900(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_0

    .line 291
    :cond_5
    # getter for: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->USAGE_TYPES:[Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$800()[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 293
    iget-boolean v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->val$descending:Z

    if-eqz v3, :cond_6

    .line 294
    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {p2}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$900(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$900(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_0

    .line 297
    :cond_6
    iget-object v3, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$900(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$3;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    invoke-virtual {p2}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    # invokes: Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->checkNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->access$900(Lnz/co/telecom/smartphone/adapter/AdapterActivityData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_0

    :cond_7
    move v3, v4

    .line 302
    goto/16 :goto_0

    .line 305
    :cond_8
    neg-int v3, v2

    goto/16 :goto_0
.end method
