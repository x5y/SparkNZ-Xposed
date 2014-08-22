.class Lcom/google/common/base/CharMatcher$Or;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Or"
.end annotation


# instance fields
.field components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/base/CharMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/base/CharMatcher;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 626
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/base/CharMatcher;>;"
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    .line 627
    iput-object p1, p0, Lcom/google/common/base/CharMatcher$Or;->components:Ljava/util/List;

    .line 628
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 623
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 631
    iget-object v2, p0, Lcom/google/common/base/CharMatcher$Or;->components:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/CharMatcher;

    .line 632
    .local v1, "matcher":Lcom/google/common/base/CharMatcher;
    invoke-virtual {v1, p1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    const/4 v2, 0x1

    .line 636
    .end local v1    # "matcher":Lcom/google/common/base/CharMatcher;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 2
    .param p1, "other"    # Lcom/google/common/base/CharMatcher;

    .prologue
    .line 640
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/base/CharMatcher$Or;->components:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 641
    .local v0, "newComponents":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/base/CharMatcher;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    new-instance v1, Lcom/google/common/base/CharMatcher$Or;

    invoke-direct {v1, v0}, Lcom/google/common/base/CharMatcher$Or;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V
    .locals 3
    .param p1, "table"    # Lcom/google/common/base/CharMatcher$LookupTable;

    .prologue
    .line 646
    iget-object v2, p0, Lcom/google/common/base/CharMatcher$Or;->components:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/CharMatcher;

    .line 647
    .local v1, "matcher":Lcom/google/common/base/CharMatcher;
    invoke-virtual {v1, p1}, Lcom/google/common/base/CharMatcher;->setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V

    goto :goto_0

    .line 649
    .end local v1    # "matcher":Lcom/google/common/base/CharMatcher;
    :cond_0
    return-void
.end method
