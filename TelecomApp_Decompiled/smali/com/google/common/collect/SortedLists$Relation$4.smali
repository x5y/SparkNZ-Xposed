.class final enum Lcom/google/common/collect/SortedLists$Relation$4;
.super Lcom/google/common/collect/SortedLists$Relation;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/SortedLists$Relation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/SortedLists$Relation;-><init>(Ljava/lang/String;ILcom/google/common/collect/SortedLists$1;)V

    return-void
.end method


# virtual methods
.method exactMatchFound(Ljava/util/List;Ljava/lang/Object;IIILjava/util/Comparator;Z)I
    .locals 3
    .param p3, "lower"    # I
    .param p4, "index"    # I
    .param p5, "upper"    # I
    .param p7, "worryAboutDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;TE;III",
            "Ljava/util/Comparator",
            "<-TE;>;Z)I"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    .local p6, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez p7, :cond_0

    .line 226
    .end local p4    # "index":I
    :goto_0
    return p4

    .line 215
    .restart local p4    # "index":I
    :cond_0
    move p3, p4

    .line 217
    :goto_1
    if-ge p3, p5, :cond_2

    .line 218
    sub-int v2, p5, p3

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int v1, p3, v2

    .line 219
    .local v1, "middle":I
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p6, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 220
    .local v0, "c":I
    if-lez v0, :cond_1

    .line 221
    add-int/lit8 p5, v1, -0x1

    goto :goto_1

    .line 223
    :cond_1
    move p3, v1

    goto :goto_1

    .end local v0    # "c":I
    .end local v1    # "middle":I
    :cond_2
    move p4, p3

    .line 226
    goto :goto_0
.end method

.method exactMatchNotFound(Ljava/util/List;Ljava/lang/Object;ILjava/util/Comparator;)I
    .locals 0
    .param p3, "higherIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;TE;I",
            "Ljava/util/Comparator",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    .local p4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    return p3
.end method

.method reverse()Lcom/google/common/collect/SortedLists$Relation;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/google/common/collect/SortedLists$Relation$4;->FLOOR:Lcom/google/common/collect/SortedLists$Relation;

    return-object v0
.end method
