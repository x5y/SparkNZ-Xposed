.class final Lcom/adobe/adms/measurement/ADMS_Worker;
.super Ljava/lang/Object;
.source "ADMS_Worker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;
    }
.end annotation


# static fields
.field private static TIMESTAMP_DISABLED_WAIT_THRESHOLD:Ljava/lang/Integer;

.field private static _offlineDB:Landroid/database/sqlite/SQLiteDatabase;

.field public static final dbMutex:Ljava/lang/Object;


# instance fields
.field private _preparedInsertStatement:Landroid/database/sqlite/SQLiteStatement;

.field private final backgroundMutex:Ljava/lang/Object;

.field private backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

.field public cacheFilename:Ljava/lang/String;

.field private offlineForced:Z

.field protected offlineLimit:I

.field protected trackOffline:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_Worker;->TIMESTAMP_DISABLED_WAIT_THRESHOLD:Ljava/lang/Integer;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_Worker;->dbMutex:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "cachePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v1, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->trackOffline:Z

    .line 18
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->offlineLimit:I

    .line 20
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    .line 21
    iput-boolean v1, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->offlineForced:Z

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundMutex:Ljava/lang/Object;

    .line 25
    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->cacheFilename:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->cacheFilename:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_Worker;->createOrOpenDB()V

    .line 31
    return-void
.end method

.method static synthetic access$000()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Worker;->_offlineDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Worker;->TIMESTAMP_DISABLED_WAIT_THRESHOLD:Ljava/lang/Integer;

    return-object v0
.end method

.method private killThread()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->cancelled:Z

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    .line 133
    :cond_0
    return-void
.end method


# virtual methods
.method protected clearTrackingQueue()V
    .locals 5

    .prologue
    .line 244
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Worker;->dbMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :try_start_0
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Worker;->_offlineDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "HITS"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 246
    monitor-exit v1

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected createOrOpenDB()V
    .locals 6

    .prologue
    .line 89
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->cacheFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "offlineFile":Ljava/io/File;
    sget-object v3, Lcom/adobe/adms/measurement/ADMS_Worker;->dbMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 91
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/adobe/adms/measurement/ADMS_Worker;->_offlineDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    sget-object v2, Lcom/adobe/adms/measurement/ADMS_Worker;->_offlineDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "CREATE TABLE IF NOT EXISTS HITS (ID INTEGER PRIMARY KEY AUTOINCREMENT, URL TEXT, TIMESTAMP INTEGER)"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    sget-object v2, Lcom/adobe/adms/measurement/ADMS_Worker;->_offlineDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "INSERT INTO HITS (URL, TIMESTAMP) VALUES (?, ?)"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->_preparedInsertStatement:Landroid/database/sqlite/SQLiteStatement;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 99
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "x":Landroid/database/SQLException;
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create database "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/database/SQLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .end local v1    # "x":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public deleteHit(Ljava/lang/String;)V
    .locals 6
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 103
    sget-object v2, Lcom/adobe/adms/measurement/ADMS_Worker;->dbMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 105
    :try_start_0
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Worker;->_offlineDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "HITS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 111
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/database/SQLException;
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error deleting hit. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public deleteOldestHit()V
    .locals 12

    .prologue
    .line 115
    sget-object v11, Lcom/adobe/adms/measurement/ADMS_Worker;->dbMutex:Ljava/lang/Object;

    monitor-enter v11

    .line 117
    :try_start_0
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Worker;->_offlineDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "HITS"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ID"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "URL"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "TIMESTAMP"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "ID ASC"

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 118
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_Worker;->deleteHit(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v11

    .line 126
    return-void

    .line 122
    :catch_0
    move-exception v10

    .line 123
    .local v10, "e":Landroid/database/SQLException;
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error deleting hit. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v10    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected getTrackingQueueSize()I
    .locals 5

    .prologue
    .line 251
    sget-object v2, Lcom/adobe/adms/measurement/ADMS_Worker;->dbMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 252
    :try_start_0
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Worker;->_offlineDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "HITS"

    invoke-static {v1, v3}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 253
    .local v0, "numRows":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    monitor-exit v2

    return v1

    .line 254
    .end local v0    # "numRows":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public queue(Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 34
    iget-boolean v1, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->trackOffline:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->offlineForced:Z

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_Worker;->getTrackingQueueSize()I

    move-result v1

    iget v2, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->offlineLimit:I

    if-lt v1, v2, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_Worker;->deleteOldestHit()V

    .line 44
    :cond_2
    sget-object v2, Lcom/adobe/adms/measurement/ADMS_Worker;->dbMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->_preparedInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->_preparedInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 49
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->_preparedInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->_preparedInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 56
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    iget-boolean v1, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->offlineForced:Z

    if-nez v1, :cond_0

    .line 59
    invoke-virtual {p0, v8}, Lcom/adobe/adms/measurement/ADMS_Worker;->setOnline(Z)V

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/database/SQLException;
    :try_start_2
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to insert url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 56
    .end local v0    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected setOnline(Z)V
    .locals 2
    .param p1, "online"    # Z

    .prologue
    .line 64
    if-eqz p1, :cond_3

    .line 65
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    iget-boolean v0, v0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->cancelled:Z

    if-nez v0, :cond_0

    .line 67
    monitor-exit v1

    .line 85
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    iget-boolean v0, v0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->cancelled:Z

    if-eqz v0, :cond_2

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_Worker;->killThread()V

    .line 72
    new-instance v0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    invoke-direct {v0, p0}, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;-><init>(Lcom/adobe/adms/measurement/ADMS_Worker;)V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    .line 73
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    invoke-virtual {v0}, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->start()V

    .line 75
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->offlineForced:Z

    .line 76
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->backgroundThread:Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;

    iget-boolean v0, v0, Lcom/adobe/adms/measurement/ADMS_Worker$WorkerThread;->cancelled:Z

    if-nez v0, :cond_4

    .line 80
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_Worker;->killThread()V

    .line 82
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Worker;->offlineForced:Z

    goto :goto_0

    .line 82
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method protected upgradeQueueToSQL(Ljava/lang/String;)V
    .locals 9
    .param p1, "oldCachePath"    # Ljava/lang/String;

    .prologue
    .line 141
    if-nez p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, "offlineFile":Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 148
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v6

    const-string v7, "Upgrading offline storage to SQLite"

    invoke-virtual {v6, v7}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    .line 150
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 153
    .local v3, "offlineIn":Ljava/io/BufferedReader;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v4, "queuedCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "request":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 156
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 172
    .end local v3    # "offlineIn":Ljava/io/BufferedReader;
    .end local v4    # "queuedCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "request":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADMS SDK Error: Cannot Read Requests From Disk -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/adobe/adms/measurement/ADMS_Measurement;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "offlineIn":Ljava/io/BufferedReader;
    .restart local v4    # "queuedCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "request":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 165
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/adobe/adms/measurement/ADMS_Worker;->queue(Ljava/lang/String;)V

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 171
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 161
    :catch_1
    move-exception v6

    goto :goto_2
.end method
