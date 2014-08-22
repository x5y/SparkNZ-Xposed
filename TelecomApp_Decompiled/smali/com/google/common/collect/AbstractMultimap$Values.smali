.class Lcom/google/common/collect/AbstractMultimap$Values;
.super Ljava/util/AbstractCollection;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .locals 0

    .prologue
    .line 1191
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$Values;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Values;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/AbstractMultimap;
    .param p2, "x1"    # Lcom/google/common/collect/AbstractMultimap$1;

    .prologue
    .line 1191
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$Values;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Values;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap$Values;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1202
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$Values;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->clear()V

    .line 1203
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1206
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$Values;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/AbstractMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1193
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$Values;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Values;"
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$ValueIterator;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$ValueIterator;-><init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1196
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$Values;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    # getter for: Lcom/google/common/collect/AbstractMultimap;->totalSize:I
    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$200(Lcom/google/common/collect/AbstractMultimap;)I

    move-result v0

    return v0
.end method
