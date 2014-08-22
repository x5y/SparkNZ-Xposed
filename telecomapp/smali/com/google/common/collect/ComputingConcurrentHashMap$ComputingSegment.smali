.class Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;
.super Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
.source "ComputingConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ComputingConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ComputingSegment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ComputingConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ComputingConcurrentHashMap;II)V
    .locals 0
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I

    .prologue
    .line 76
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingSegment;"
    iput-object p1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->this$0:Lcom/google/common/collect/ComputingConcurrentHashMap;

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;II)V

    .line 78
    return-void
.end method


# virtual methods
.method compute(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 17
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TV;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingSegment;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    .line 83
    .local v13, "value":Ljava/lang/Object;, "TV;"
    if-eqz v13, :cond_1

    move-object v14, v13

    .line 171
    .end local v13    # "value":Ljava/lang/Object;, "TV;"
    .local v14, "value":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v14

    .line 87
    .end local v14    # "value":Ljava/lang/Object;, "TV;"
    .restart local v13    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    const/4 v7, 0x0

    .line 88
    .local v7, "entry":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 89
    .local v3, "computingValueReference":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingValueReference;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->lock()V

    .line 92
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->preWriteCleanup()V

    .line 95
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 96
    .local v12, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    and-int v10, p2, v15

    .line 97
    .local v10, "index":I
    invoke-virtual {v12, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 99
    .local v9, "first":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    move-object v6, v9

    .local v6, "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    :goto_2
    if-eqz v6, :cond_4

    .line 100
    invoke-interface {v6}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 101
    .local v8, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v6}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v15

    move/from16 v0, p2

    if-ne v15, v0, :cond_9

    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->this$0:Lcom/google/common/collect/ComputingConcurrentHashMap;

    iget-object v15, v15, Lcom/google/common/collect/ComputingConcurrentHashMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    move-object/from16 v0, p1

    invoke-interface {v15, v0, v8}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 103
    invoke-interface {v6}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v15

    invoke-interface {v15}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->isComputingReference()Z

    move-result v15

    if-nez v15, :cond_3

    .line 105
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->getLiveValue(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v13

    .line 106
    if-eqz v13, :cond_2

    .line 107
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->recordLockedRead(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postWriteCleanup()V

    move-object v14, v13

    .end local v13    # "value":Ljava/lang/Object;, "TV;"
    .restart local v14    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_1

    .line 111
    .end local v14    # "value":Ljava/lang/Object;, "TV;"
    .restart local v13    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unsetLiveEntry(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    .line 113
    :cond_3
    move-object v7, v6

    .line 118
    .end local v8    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_4
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->this$0:Lcom/google/common/collect/ComputingConcurrentHashMap;

    invoke-virtual {v15, v7}, Lcom/google/common/collect/ComputingConcurrentHashMap;->isUnset(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 120
    :cond_5
    new-instance v4, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->this$0:Lcom/google/common/collect/ComputingConcurrentHashMap;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;-><init>(Lcom/google/common/collect/ComputingConcurrentHashMap;Lcom/google/common/collect/ComputingConcurrentHashMap$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .end local v3    # "computingValueReference":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingValueReference;"
    .local v4, "computingValueReference":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingValueReference;"
    if-nez v7, :cond_6

    .line 123
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->this$0:Lcom/google/common/collect/ComputingConcurrentHashMap;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1, v9}, Lcom/google/common/collect/ComputingConcurrentHashMap;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v7

    .line 124
    invoke-virtual {v12, v10, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 126
    :cond_6
    invoke-interface {v7, v4}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object v3, v4

    .line 129
    .end local v4    # "computingValueReference":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingValueReference;"
    .restart local v3    # "computingValueReference":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingValueReference;"
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postWriteCleanup()V

    .line 133
    if-eqz v3, :cond_b

    .line 139
    :try_start_3
    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 140
    :try_start_4
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;->compute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    .line 141
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 142
    :try_start_5
    const-string v15, "compute() returned null unexpectedly"

    invoke-static {v13, v15}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 145
    if-nez v13, :cond_8

    .line 146
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->clearValue(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z

    :cond_8
    move-object v14, v13

    .end local v13    # "value":Ljava/lang/Object;, "TV;"
    .restart local v14    # "value":Ljava/lang/Object;, "TV;"
    goto/16 :goto_1

    .line 99
    .end local v14    # "value":Ljava/lang/Object;, "TV;"
    .restart local v8    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v13    # "value":Ljava/lang/Object;, "TV;"
    :cond_9
    :try_start_6
    invoke-interface {v6}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v6

    goto/16 :goto_2

    .line 129
    .end local v6    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v8    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v9    # "first":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .end local v10    # "index":I
    .end local v12    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v15

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postWriteCleanup()V

    throw v15

    .line 141
    .restart local v6    # "e":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .restart local v9    # "first":Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;, "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    .restart local v10    # "index":I
    .restart local v12    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_1
    move-exception v15

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 145
    :catchall_2
    move-exception v15

    if-nez v13, :cond_a

    .line 146
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->clearValue(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z

    :cond_a
    throw v15

    .line 152
    :cond_b
    const/4 v11, 0x0

    .line 156
    .local v11, "interrupted":Z
    :goto_4
    :try_start_9
    invoke-static {v7}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    const/4 v15, 0x1

    :goto_5
    const-string v16, "Recursive computation"

    invoke-static/range {v15 .. v16}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 157
    invoke-interface {v7}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v15

    invoke-interface {v15}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->waitForValue()Ljava/lang/Object;

    move-result-object v13

    .line 159
    if-eqz v13, :cond_e

    .line 160
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->recordRead(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 170
    if-eqz v11, :cond_c

    .line 171
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->interrupt()V

    :cond_c
    move-object v14, v13

    .end local v13    # "value":Ljava/lang/Object;, "TV;"
    .restart local v14    # "value":Ljava/lang/Object;, "TV;"
    goto/16 :goto_1

    .line 156
    .end local v14    # "value":Ljava/lang/Object;, "TV;"
    .restart local v13    # "value":Ljava/lang/Object;, "TV;"
    :cond_d
    const/4 v15, 0x0

    goto :goto_5

    .line 170
    :cond_e
    if-eqz v11, :cond_0

    .line 171
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    .line 165
    :catch_0
    move-exception v5

    .line 166
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v11, 0x1

    .line 167
    goto :goto_4

    .line 170
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catchall_3
    move-exception v15

    if-eqz v11, :cond_f

    .line 171
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->interrupt()V

    :cond_f
    throw v15

    .line 129
    .end local v3    # "computingValueReference":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingValueReference;"
    .end local v11    # "interrupted":Z
    .restart local v4    # "computingValueReference":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingValueReference;"
    :catchall_4
    move-exception v15

    move-object v3, v4

    .end local v4    # "computingValueReference":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingValueReference;"
    .restart local v3    # "computingValueReference":Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingValueReference;, "Lcom/google/common/collect/ComputingConcurrentHashMap<TK;TV;>.ComputingValueReference;"
    goto :goto_3
.end method
