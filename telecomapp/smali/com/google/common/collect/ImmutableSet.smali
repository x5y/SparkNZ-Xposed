.class public abstract Lcom/google/common/collect/ImmutableSet;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableSet$Builder;,
        Lcom/google/common/collect/ImmutableSet$SerializedForm;,
        Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;,
        Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final CUTOFF:I = 0x20000000

.field static final MAX_TABLE_SIZE:I = 0x40000000


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 364
    .local p0, "this":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 547
    new-instance v0, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    return-object v0
.end method

.method static chooseTableSize(I)I
    .locals 3
    .param p0, "setSize"    # I

    .prologue
    const/high16 v1, 0x40000000

    .line 222
    const/high16 v0, 0x20000000

    if-ge p0, v0, :cond_0

    .line 223
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    .line 228
    :goto_0
    return v0

    .line 227
    :cond_0
    if-ge p0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v2, "collection too large"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move v0, v1

    .line 228
    goto :goto_0

    .line 227
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static varargs construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 19
    .param p0, "elements"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 160
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v13

    .line 161
    .local v13, "tableSize":I
    new-array v12, v13, [Ljava/lang/Object;

    .line 162
    .local v12, "table":[Ljava/lang/Object;
    add-int/lit8 v10, v13, -0x1

    .line 163
    .local v10, "mask":I
    const/4 v15, 0x0

    .line 164
    .local v15, "uniqueElementsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 165
    .local v5, "hashCode":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_4

    .line 166
    aget-object v2, p0, v6

    .line 167
    .local v2, "element":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 168
    .local v4, "hash":I
    invoke-static {v4}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v8

    .line 169
    .local v8, "j":I
    :goto_1
    and-int v7, v8, v10

    .line 170
    .local v7, "index":I
    aget-object v16, v12, v7

    .line 171
    .local v16, "value":Ljava/lang/Object;
    if-nez v16, :cond_2

    .line 172
    if-eqz v15, :cond_0

    .line 173
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_0
    aput-object v2, v12, v7

    .line 177
    add-int/2addr v5, v4

    .line 165
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 179
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 180
    if-nez v15, :cond_1

    .line 182
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "uniqueElementsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .restart local v15    # "uniqueElementsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_2
    if-ge v9, v6, :cond_1

    .line 184
    aget-object v11, p0, v9

    .line 185
    .local v11, "previous":Ljava/lang/Object;
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 168
    .end local v9    # "k":I
    .end local v11    # "previous":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 192
    .end local v2    # "element":Ljava/lang/Object;
    .end local v4    # "hash":I
    .end local v7    # "index":I
    .end local v8    # "j":I
    .end local v16    # "value":Ljava/lang/Object;
    :cond_4
    if-nez v15, :cond_5

    move-object/from16 v14, p0

    .line 195
    .local v14, "uniqueElements":[Ljava/lang/Object;
    :goto_3
    array-length v0, v14

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 198
    const/16 v17, 0x0

    aget-object v3, v14, v17

    .line 199
    .local v3, "element":Ljava/lang/Object;, "TE;"
    new-instance v17, Lcom/google/common/collect/SingletonImmutableSet;

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v5}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;I)V

    .line 205
    .end local v3    # "element":Ljava/lang/Object;, "TE;"
    :goto_4
    return-object v17

    .line 192
    .end local v14    # "uniqueElements":[Ljava/lang/Object;
    :cond_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v14

    goto :goto_3

    .line 200
    .restart local v14    # "uniqueElements":[Ljava/lang/Object;
    :cond_6
    array-length v0, v14

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v17

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    if-le v13, v0, :cond_7

    .line 203
    invoke-static {v14}, Lcom/google/common/collect/ImmutableSet;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v17

    goto :goto_4

    .line 205
    :cond_7
    new-instance v17, Lcom/google/common/collect/RegularImmutableSet;

    move-object/from16 v0, v17

    invoke-direct {v0, v14, v5, v12, v10}, Lcom/google/common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    goto :goto_4
.end method

.method private static copyFromCollection(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 350
    .local v0, "elements":[Ljava/lang/Object;
    array-length v2, v0

    packed-switch v2, :pswitch_data_0

    .line 360
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    :goto_0
    return-object v2

    .line 352
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    goto :goto_0

    .line 355
    :pswitch_1
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 356
    .local v1, "onlyElement":Ljava/lang/Object;, "TE;"
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    goto :goto_0

    .line 350
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    instance-of v1, p0, Lcom/google/common/collect/ImmutableSet;

    if-eqz v1, :cond_0

    instance-of v1, p0, Lcom/google/common/collect/ImmutableSortedSet;

    if-nez v1, :cond_0

    move-object v0, p0

    .line 339
    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    .line 340
    .local v0, "set":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    .end local v0    # "set":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->copyFromCollection(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyFromCollection(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 264
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 260
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 262
    :pswitch_1
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static of()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lcom/google/common/collect/EmptyImmutableSet;->INSTANCE:Lcom/google/common/collect/EmptyImmutableSet;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    .local p5, "e6":Ljava/lang/Object;, "TE;"
    .local p6, "others":[Ljava/lang/Object;, "[TE;"
    const/4 v2, 0x6

    .line 145
    .local v2, "paramCount":I
    array-length v3, p6

    add-int/lit8 v3, v3, 0x6

    new-array v0, v3, [Ljava/lang/Object;

    .line 146
    .local v0, "elements":[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p0, v0, v3

    .line 147
    const/4 v3, 0x1

    aput-object p1, v0, v3

    .line 148
    const/4 v3, 0x2

    aput-object p2, v0, v3

    .line 149
    const/4 v3, 0x3

    aput-object p3, v0, v3

    .line 150
    const/4 v3, 0x4

    aput-object p4, v0, v3

    .line 151
    const/4 v3, 0x5

    aput-object p5, v0, v3

    .line 152
    const/4 v1, 0x6

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 153
    add-int/lit8 v3, v1, -0x6

    aget-object v3, p6, v3

    aput-object v3, v0, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    return-object v3
.end method

.method public static of([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 372
    .local p0, "this":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    if-ne p1, p0, :cond_0

    .line 373
    const/4 v0, 0x1

    .line 381
    :goto_0
    return v0

    .line 375
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 379
    const/4 v0, 0x0

    goto :goto_0

    .line 381
    :cond_1
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 385
    .local p0, "this":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .prologue
    .line 368
    .local p0, "this":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 539
    .local p0, "this":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSet$SerializedForm;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSet$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
