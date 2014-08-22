.class final enum Lcom/google/common/collect/SortedLists$Relation$3;
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
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/SortedLists$Relation;-><init>(Ljava/lang/String;ILcom/google/common/collect/SortedLists$1;)V

    return-void
.end method


# virtual methods
.method exactMatchFound(Ljava/util/List;Ljava/lang/Object;IIILjava/util/Comparator;Z)I
    .locals 0
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
    .line 169
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    .local p6, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    return p4
.end method

.method exactMatchNotFound(Ljava/util/List;Ljava/lang/Object;ILjava/util/Comparator;)I
    .locals 1
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
    .line 174
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    .local p4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    const/4 v0, -0x1

    return v0
.end method

.method reverse()Lcom/google/common/collect/SortedLists$Relation;
    .locals 0

    .prologue
    .line 163
    return-object p0
.end method
