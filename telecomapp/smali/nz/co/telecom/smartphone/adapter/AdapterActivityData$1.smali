.class Lnz/co/telecom/smartphone/adapter/AdapterActivityData$1;
.super Ljava/lang/Object;
.source "AdapterActivityData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/adapter/AdapterActivityData;->sortByDate(Z)V
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
    .line 203
    iput-object p1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$1;->this$0:Lnz/co/telecom/smartphone/adapter/AdapterActivityData;

    iput-boolean p2, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$1;->val$descending:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 203
    check-cast p1, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$1;->compare(Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;)I

    move-result v0

    return v0
.end method

.method public compare(Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;)I
    .locals 5
    .param p1, "oneItem1"    # Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;
    .param p2, "oneItem2"    # Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;

    .prologue
    .line 206
    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 208
    .local v0, "dateComp":I
    if-nez v0, :cond_2

    .line 210
    iget-boolean v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$1;->val$descending:Z

    if-eqz v1, :cond_1

    .line 211
    invoke-virtual {p2}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getCost()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getCost()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    .line 218
    .end local v0    # "dateComp":I
    :cond_0
    :goto_0
    return v0

    .line 214
    .restart local v0    # "dateComp":I
    :cond_1
    invoke-virtual {p1}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getCost()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p2}, Lnz/co/telecom/smartphone/dto/recentactivity/RecentActivityItemDTO;->getCost()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    goto :goto_0

    .line 218
    :cond_2
    iget-boolean v1, p0, Lnz/co/telecom/smartphone/adapter/AdapterActivityData$1;->val$descending:Z

    if-eqz v1, :cond_0

    neg-int v0, v0

    goto :goto_0
.end method
