.class Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet$SerializedForm;
.super Ljava/lang/Object;
.source "ExplicitOrderedImmutableSortedSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final elements:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .param p1, "elements"    # [Ljava/lang/Object;

    .prologue
    .line 211
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet$SerializedForm;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet$SerializedForm<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet$SerializedForm;->elements:[Ljava/lang/Object;

    .line 213
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    .local p0, "this":Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet$SerializedForm;, "Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet$SerializedForm<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ExplicitOrderedImmutableSortedSet$SerializedForm;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedSet;->withExplicitOrder(Ljava/util/List;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method
