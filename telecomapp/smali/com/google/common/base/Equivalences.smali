.class public final Lcom/google/common/base/Equivalences;
.super Ljava/lang/Object;
.source "Equivalences.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Equivalences$1;,
        Lcom/google/common/base/Equivalences$Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals()Lcom/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lcom/google/common/base/Equivalences$Impl;->EQUALS:Lcom/google/common/base/Equivalences$Impl;

    return-object v0
.end method

.method public static identity()Lcom/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/google/common/base/Equivalences$Impl;->IDENTITY:Lcom/google/common/base/Equivalences$Impl;

    return-object v0
.end method

.method public static pairwise(Lcom/google/common/base/Equivalence;)Lcom/google/common/base/Equivalence;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Equivalence",
            "<-TT;>;)",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Iterable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "elementEquivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<-TT;>;"
    new-instance v0, Lcom/google/common/base/PairwiseEquivalence;

    invoke-direct {v0, p0}, Lcom/google/common/base/PairwiseEquivalence;-><init>(Lcom/google/common/base/Equivalence;)V

    return-object v0
.end method
