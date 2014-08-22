.class Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;
.super Ljava/lang/Thread;
.source "ADMS_Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/adms/measurement/ADMS_Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerThread"
.end annotation


# instance fields
.field public cancelled:Z

.field private delay:J

.field private worker:Lcom/adobe/adms/measurement/ADMS_Worker;


# direct methods
.method public constructor <init>(Lcom/adobe/adms/measurement/ADMS_Worker;)V
    .locals 2
    .param p1, "worker"    # Lcom/adobe/adms/measurement/ADMS_Worker;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 179
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->delay:J

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->cancelled:Z

    .line 184
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    .line 185
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 189
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->cancelled:Z

    if-nez v1, :cond_1

    .line 190
    const/4 v13, 0x0

    .line 191
    .local v13, "request":Ljava/lang/String;
    const/4 v12, 0x0

    .line 192
    .local v12, "identifier":Ljava/lang/String;
    const/4 v15, 0x0

    .line 195
    .local v15, "timestamp":Ljava/lang/String;
    sget-object v16, Lcom/adobe/adms/measurement/ADMS_Worker;->dbMutex:Ljava/lang/Object;

    monitor-enter v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    :try_start_1
    # getter for: Lcom/adobe/adms/measurement/ADMS_Worker;->_offlineDB:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Worker;->access$000()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "HITS"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ID"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "URL"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "TIMESTAMP"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "ID ASC"

    const-string v9, "1"

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 198
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 200
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 201
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    .line 207
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    if-nez v13, :cond_2

    .line 235
    .end local v12    # "identifier":Ljava/lang/String;
    .end local v13    # "request":Ljava/lang/String;
    .end local v15    # "timestamp":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->cancelled:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 239
    :goto_2
    return-void

    .line 204
    .restart local v12    # "identifier":Ljava/lang/String;
    .restart local v13    # "request":Ljava/lang/String;
    .restart local v15    # "timestamp":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 205
    .local v11, "e":Landroid/database/SQLException;
    :try_start_4
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADMS SDK Error: Unable to read from database -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 207
    .end local v11    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 236
    .end local v12    # "identifier":Ljava/lang/String;
    .end local v13    # "request":Ljava/lang/String;
    .end local v15    # "timestamp":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 237
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADMS SDK Error: Background Thread Interrupted -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    goto :goto_2

    .line 215
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "identifier":Ljava/lang/String;
    .restart local v13    # "request":Ljava/lang/String;
    .restart local v15    # "timestamp":Ljava/lang/String;
    :cond_2
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    iget-boolean v1, v1, Lcom/adobe/adms/measurement/ADMS_Worker;->trackOffline:Z

    if-nez v1, :cond_4

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    # getter for: Lcom/adobe/adms/measurement/ADMS_Worker;->TIMESTAMP_DISABLED_WAIT_THRESHOLD:Ljava/lang/Integer;
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Worker;->access$100()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    invoke-virtual {v1, v12}, Lcom/adobe/adms/measurement/ADMS_Worker;->deleteHit(Ljava/lang/String;)V

    .line 232
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->delay:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 233
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->delay:J

    goto/16 :goto_0

    .line 220
    :cond_4
    new-instance v14, Lcom/adobe/adms/measurement/ADMS_RequestProperties;

    invoke-direct {v14, v13}, Lcom/adobe/adms/measurement/ADMS_RequestProperties;-><init>(Ljava/lang/String;)V

    .line 221
    .local v14, "requestProps":Lcom/adobe/adms/measurement/ADMS_RequestProperties;
    invoke-virtual {v14}, Lcom/adobe/adms/measurement/ADMS_RequestProperties;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Lcom/adobe/adms/measurement/ADMS_RequestProperties;->getHeaders()Ljava/util/Hashtable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adobe/adms/measurement/ADMS_RequestHandler;->sendRequest(Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    invoke-virtual {v1, v12}, Lcom/adobe/adms/measurement/ADMS_Worker;->deleteHit(Ljava/lang/String;)V

    goto :goto_3

    .line 225
    :cond_5
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v1

    const-string v2, "ADMS SDK Error: Error Sending Hit"

    invoke-virtual {v1, v2}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    iget-boolean v1, v1, Lcom/adobe/adms/measurement/ADMS_Worker;->trackOffline:Z

    if-eqz v1, :cond_3

    .line 228
    const-wide/16 v1, 0x7530

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->delay:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3
.end method
