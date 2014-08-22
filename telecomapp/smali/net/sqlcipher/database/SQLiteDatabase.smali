.class public Lnet/sqlcipher/database/SQLiteDatabase;
.super Lnet/sqlcipher/database/SQLiteClosable;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;,
        Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;,
        Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;
    }
.end annotation


# static fields
.field private static final COMMIT_SQL:Ljava/lang/String; = "COMMIT;"

.field public static final CONFLICT_ABORT:I = 0x2

.field public static final CONFLICT_FAIL:I = 0x3

.field public static final CONFLICT_IGNORE:I = 0x4

.field public static final CONFLICT_NONE:I = 0x0

.field public static final CONFLICT_REPLACE:I = 0x5

.field public static final CONFLICT_ROLLBACK:I = 0x1

.field private static final CONFLICT_VALUES:[Ljava/lang/String;

.field public static final CREATE_IF_NECESSARY:I = 0x10000000

.field private static final EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

.field private static final EVENT_DB_CORRUPT:I = 0x124fc

.field private static final EVENT_DB_OPERATION:I = 0xcb20

.field static final GET_LOCK_LOG_PREFIX:Ljava/lang/String; = "GETLOCK:"

.field private static final LOCK_ACQUIRED_WARNING_THREAD_TIME_IN_MS:I = 0x64

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS:I = 0x12c

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS_ALWAYS_PRINT:I = 0x7d0

.field private static final LOCK_WARNING_WINDOW_IN_MS:I = 0x4e20

.field private static final LOG_SLOW_QUERIES_PROPERTY:Ljava/lang/String; = "db.log.slow_query_threshold"

.field public static final MAX_SQL_CACHE_SIZE:I = 0xfa

.field private static final MAX_WARNINGS_ON_CACHESIZE_CONDITION:I = 0x1

.field public static final NO_LOCALIZED_COLLATORS:I = 0x10

.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x0

.field private static final OPEN_READ_MASK:I = 0x1

.field private static final QUERY_LOG_SQL_LENGTH:I = 0x40

.field private static final SLEEP_AFTER_YIELD_QUANTUM:I = 0x3e8

.field public static final SQLITE_MAX_LIKE_PATTERN_LENGTH:I = 0xc350

.field private static final TAG:Ljava/lang/String; = "Database"

.field private static sQueryLogTimeInMillis:I


# instance fields
.field private mCacheFullWarnings:I

.field mCompiledQueries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/sqlcipher/database/SQLiteCompiledSql;",
            ">;"
        }
    .end annotation
.end field

.field private mFactory:Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;

.field private mFlags:I

.field private mInnerTransactionIsSuccessful:Z

.field private mLastLockMessageTime:J

.field private mLastSqlStatement:Ljava/lang/String;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mLockAcquiredThreadTime:J

.field private mLockAcquiredWallTime:J

.field private mLockingEnabled:Z

.field private mMaxSqlCacheSize:I

.field mNativeHandle:I

.field private mNumCacheHits:I

.field private mNumCacheMisses:I

.field private mPath:Ljava/lang/String;

.field private mPathForLogs:Ljava/lang/String;

.field private mPrograms:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lnet/sqlcipher/database/SQLiteClosable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mRandom:Ljava/util/Random;

.field private final mSlowQueryThreshold:I

.field private mStackTrace:Ljava/lang/Throwable;

.field private final mSyncUpdateInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTempTableSequence:I

.field private mTimeClosed:Ljava/lang/String;

.field private mTimeOpened:Ljava/lang/String;

.field private mTransactionIsSuccessful:Z

.field private mTransactionListener:Lnet/sqlcipher/database/SQLiteTransactionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 211
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, " OR ROLLBACK "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " OR ABORT "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " OR FAIL "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " OR IGNORE "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " OR REPLACE "

    aput-object v2, v0, v1

    sput-object v0, Lnet/sqlcipher/database/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 294
    const-string v0, "[\\w\\.\\-]+@[\\w\\.\\-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/sqlcipher/database/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    .line 307
    sput v3, Lnet/sqlcipher/database/SQLiteDatabase;->sQueryLogTimeInMillis:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "factory"    # Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;
    .param p4, "flags"    # I

    .prologue
    .line 1930
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lnet/sqlcipher/database/SQLiteDatabase;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)V

    .line 1931
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "factory"    # Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;
    .param p4, "flags"    # I
    .param p5, "databaseHook"    # Lnet/sqlcipher/database/SQLiteDatabaseHook;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 1941
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteClosable;-><init>()V

    .line 277
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1, v6}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 279
    iput-wide v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 280
    iput-wide v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 296
    iput-wide v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLastLockMessageTime:J

    .line 310
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mRandom:Ljava/util/Random;

    .line 311
    iput-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    .line 318
    iput v5, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mNativeHandle:I

    .line 321
    iput v5, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTempTableSequence:I

    .line 327
    iput-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 353
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    .line 358
    const/16 v1, 0xfa

    iput v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mMaxSqlCacheSize:I

    .line 367
    iput-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTimeOpened:Ljava/lang/String;

    .line 368
    iput-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    .line 371
    iput-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    .line 431
    iput-boolean v6, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockingEnabled:Z

    .line 821
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    .line 1943
    if-nez p1, :cond_0

    .line 1944
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "path should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1946
    :cond_0
    iput p4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mFlags:I

    .line 1947
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    .line 1948
    const/4 v1, -0x1

    iput v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSlowQueryThreshold:I

    .line 1949
    new-instance v1, Lnet/sqlcipher/database/DatabaseObjectNotClosedException;

    invoke-direct {v1}, Lnet/sqlcipher/database/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v1}, Lnet/sqlcipher/database/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    .line 1950
    iput-object p3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mFactory:Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;

    .line 1951
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    iget v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mFlags:I

    invoke-direct {p0, v1, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->dbopen(Ljava/lang/String;I)V

    .line 1953
    if-eqz p5, :cond_1

    .line 1954
    invoke-interface {p5, p0}, Lnet/sqlcipher/database/SQLiteDatabaseHook;->preKey(Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 1957
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->native_key([C)V

    .line 1959
    if-eqz p5, :cond_2

    .line 1960
    invoke-interface {p5, p0}, Lnet/sqlcipher/database/SQLiteDatabaseHook;->postKey(Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 1963
    :cond_2
    sget-boolean v1, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v1, :cond_3

    .line 1964
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTimeOpened:Ljava/lang/String;

    .line 1966
    :cond_3
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    .line 1968
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1977
    return-void

    .line 1969
    :catch_0
    move-exception v0

    .line 1970
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "Database"

    const-string v2, "Failed to setLocale() when constructing, closing the database"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1971
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->dbclose()V

    .line 1972
    sget-boolean v1, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v1, :cond_4

    .line 1973
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    .line 1975
    :cond_4
    throw v0
.end method

.method private checkLockHoldTime()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x7d0

    .line 519
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 520
    .local v0, "elapsedTime":J
    iget-wide v6, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredWallTime:J

    sub-long v2, v0, v6

    .line 521
    .local v2, "lockedTime":J
    cmp-long v6, v2, v10

    if-gez v6, :cond_1

    const-string v6, "Database"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-wide v6, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLastLockMessageTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x4e20

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    const-wide/16 v6, 0x12c

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 527
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v6

    iget-wide v8, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredThreadTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    long-to-int v5, v6

    .line 529
    .local v5, "threadTime":I
    const/16 v6, 0x64

    if-gt v5, v6, :cond_2

    cmp-long v6, v2, v10

    if-lez v6, :cond_0

    .line 531
    :cond_2
    iput-wide v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLastLockMessageTime:J

    .line 532
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lock held on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms. Thread time was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 534
    .local v4, "msg":Ljava/lang/String;
    sget-boolean v6, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING_STACK_TRACE:Z

    if-eqz v6, :cond_3

    .line 535
    const-string v6, "Database"

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v6, v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 537
    :cond_3
    const-string v6, "Database"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private closeClosable()V
    .locals 4

    .prologue
    .line 993
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->deallocCachedSqlStatements()V

    .line 995
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 996
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lnet/sqlcipher/database/SQLiteClosable;Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 997
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 998
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/sqlcipher/database/SQLiteClosable;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sqlcipher/database/SQLiteClosable;

    .line 999
    .local v2, "program":Lnet/sqlcipher/database/SQLiteClosable;
    if-eqz v2, :cond_0

    .line 1000
    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteClosable;->onAllReferencesReleasedFromContainer()V

    goto :goto_0

    .line 1003
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/sqlcipher/database/SQLiteClosable;Ljava/lang/Object;>;"
    .end local v2    # "program":Lnet/sqlcipher/database/SQLiteClosable;
    :cond_1
    return-void
.end method

.method public static create(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 2
    .param p0, "factory"    # Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 964
    const-string v0, ":memory:"

    const/high16 v1, 0x10000000

    invoke-static {v0, p1, p0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private native dbclose()V
.end method

.method private native dbopen(Ljava/lang/String;I)V
.end method

.method private deallocCachedSqlStatements()V
    .locals 4

    .prologue
    .line 2168
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v3

    .line 2169
    :try_start_0
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sqlcipher/database/SQLiteCompiledSql;

    .line 2170
    .local v0, "compiledSql":Lnet/sqlcipher/database/SQLiteCompiledSql;
    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteCompiledSql;->releaseSqlStatement()V

    goto :goto_0

    .line 2173
    .end local v0    # "compiledSql":Lnet/sqlcipher/database/SQLiteCompiledSql;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2172
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2173
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2174
    return-void
.end method

.method private native enableSqlProfiling(Ljava/lang/String;)V
.end method

.method private native enableSqlTracing(Ljava/lang/String;)V
.end method

.method public static findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "tables"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1210
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1212
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1213
    .local v1, "spacepos":I
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1215
    .local v0, "commapos":I
    if-lez v1, :cond_2

    if-lt v1, v0, :cond_0

    if-gez v0, :cond_2

    .line 1216
    :cond_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1220
    .end local p0    # "tables":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 1217
    .restart local p0    # "tables":Ljava/lang/String;
    :cond_2
    if-lez v0, :cond_1

    if-lt v0, v1, :cond_3

    if-gez v1, :cond_1

    .line 1218
    :cond_3
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1222
    .end local v0    # "commapos":I
    .end local v1    # "spacepos":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid tables"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getAttachedDbs(Lnet/sqlcipher/database/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "dbObj"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sqlcipher/database/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2357
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 2366
    :goto_0
    return-object v0

    .line 2360
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2361
    .local v0, "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v3, "pragma database_list;"

    invoke-virtual {p0, v3, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v1

    .line 2362
    .local v1, "c":Lnet/sqlcipher/Cursor;
    :goto_1
    invoke-interface {v1}, Lnet/sqlcipher/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2363
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2365
    :cond_1
    invoke-interface {v1}, Lnet/sqlcipher/Cursor;->close()V

    goto :goto_0
.end method

.method static getDbStats()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/sqlcipher/database/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2284
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2285
    .local v10, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/sqlcipher/database/SQLiteDebug$DbStats;>;"
    invoke-static {}, Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;->getInstance()Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;

    move-result-object v1

    # getter for: Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;->mActiveDatabases:Ljava/util/HashSet;
    invoke-static {v1}, Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;->access$000(Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/ref/WeakReference;

    .line 2286
    .local v18, "w":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lnet/sqlcipher/database/SQLiteDatabase;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sqlcipher/database/SQLiteDatabase;

    .line 2287
    .local v9, "db":Lnet/sqlcipher/database/SQLiteDatabase;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2291
    invoke-direct {v9}, Lnet/sqlcipher/database/SQLiteDatabase;->native_getDbLookaside()I

    move-result v7

    .line 2294
    .local v7, "lookasideUsed":I
    invoke-virtual {v9}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v17

    .line 2295
    .local v17, "path":Ljava/lang/String;
    const-string v1, "/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 2296
    .local v14, "indx":I
    const/4 v1, -0x1

    if-eq v14, v1, :cond_3

    add-int/lit8 v14, v14, 0x1

    move v1, v14

    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 2299
    .local v15, "lastnode":Ljava/lang/String;
    invoke-static {v9}, Lnet/sqlcipher/database/SQLiteDatabase;->getAttachedDbs(Lnet/sqlcipher/database/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v8

    .line 2300
    .local v8, "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v8, :cond_0

    .line 2303
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_0

    .line 2304
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/Pair;

    .line 2305
    .local v16, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".page_count;"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->getPragmaVal(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v3

    .line 2310
    .local v3, "pageCount":J
    if-nez v11, :cond_4

    .line 2311
    move-object v2, v15

    .line 2322
    .local v2, "dbName":Ljava/lang/String;
    :cond_1
    :goto_2
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 2323
    new-instance v1, Lnet/sqlcipher/database/SQLiteDebug$DbStats;

    invoke-virtual {v9}, Lnet/sqlcipher/database/SQLiteDatabase;->getPageSize()J

    move-result-wide v5

    invoke-direct/range {v1 .. v7}, Lnet/sqlcipher/database/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJI)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2303
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2296
    .end local v2    # "dbName":Ljava/lang/String;
    .end local v3    # "pageCount":J
    .end local v8    # "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v11    # "i":I
    .end local v15    # "lastnode":Ljava/lang/String;
    .end local v16    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 2314
    .restart local v3    # "pageCount":J
    .restart local v8    # "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v11    # "i":I
    .restart local v15    # "lastnode":Ljava/lang/String;
    .restart local v16    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const/4 v7, 0x0

    .line 2315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  (attached) "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2317
    .restart local v2    # "dbName":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 2318
    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 2319
    .local v13, "idx":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v5, -0x1

    if-eq v13, v5, :cond_5

    add-int/lit8 v13, v13, 0x1

    move v5, v13

    :goto_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 2328
    .end local v2    # "dbName":Ljava/lang/String;
    .end local v3    # "pageCount":J
    .end local v7    # "lookasideUsed":I
    .end local v8    # "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9    # "db":Lnet/sqlcipher/database/SQLiteDatabase;
    .end local v11    # "i":I
    .end local v13    # "idx":I
    .end local v14    # "indx":I
    .end local v15    # "lastnode":Ljava/lang/String;
    .end local v16    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "path":Ljava/lang/String;
    .end local v18    # "w":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lnet/sqlcipher/database/SQLiteDatabase;>;"
    :cond_6
    return-object v10
.end method

.method private getPathForLogs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2078
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2079
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 2089
    :goto_0
    return-object v0

    .line 2081
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2082
    const/4 v0, 0x0

    goto :goto_0

    .line 2084
    :cond_1
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2085
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 2089
    :goto_1
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_0

    .line 2087
    :cond_2
    sget-object v0, Lnet/sqlcipher/database/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "XX@YY"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getPragmaVal(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)J
    .locals 6
    .param p0, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p1, "pragma"    # Ljava/lang/String;

    .prologue
    .line 2338
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2339
    const-wide/16 v2, 0x0

    .line 2345
    :cond_0
    :goto_0
    return-wide v2

    .line 2341
    :cond_1
    const/4 v0, 0x0

    .line 2343
    .local v0, "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :try_start_0
    new-instance v1, Lnet/sqlcipher/database/SQLiteStatement;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRAGMA "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lnet/sqlcipher/database/SQLiteStatement;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2344
    .end local v0    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .local v1, "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :try_start_1
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 2347
    .local v2, "val":J
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    goto :goto_0

    .end local v1    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .end local v2    # "val":J
    .restart local v0    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    :cond_2
    throw v4

    .end local v0    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .restart local v1    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .restart local v0    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    goto :goto_1
.end method

.method private getTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1980
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static loadICUData(Landroid/content/Context;Ljava/io/File;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "workingDir"    # Ljava/io/File;

    .prologue
    .line 114
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v7, "icu"

    invoke-direct {v3, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .local v3, "icuDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 116
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v7, "icudt46l.dat"

    invoke-direct {v2, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .local v2, "icuDataFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 118
    new-instance v4, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "icudt46l.zip"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 119
    .local v4, "in":Ljava/util/zip/ZipInputStream;
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 120
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 121
    .local v6, "out":Ljava/io/OutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 123
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_2

    .line 124
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v0    # "buf":[B
    .end local v2    # "icuDataFile":Ljava/io/File;
    .end local v3    # "icuDir":Ljava/io/File;
    .end local v4    # "in":Ljava/util/zip/ZipInputStream;
    .end local v5    # "len":I
    .end local v6    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "Database"

    const-string v8, "Error copying icu data file"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 126
    .restart local v0    # "buf":[B
    .restart local v2    # "icuDataFile":Ljava/io/File;
    .restart local v3    # "icuDir":Ljava/io/File;
    .restart local v4    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "len":I
    .restart local v6    # "out":Ljava/io/OutputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V

    .line 127
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 128
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static loadLibs(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;Ljava/io/File;)V

    .line 138
    return-void
.end method

.method public static loadLibs(Landroid/content/Context;Ljava/io/File;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "workingDir"    # Ljava/io/File;

    .prologue
    .line 142
    const-string v2, "stlport_shared"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 143
    const-string v2, "sqlcipher_android"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 144
    const-string v2, "database_sqlcipher"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 146
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/usr/icu/icudt46l.dat"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 148
    .local v1, "systemICUFileExists":Z
    if-eqz v1, :cond_1

    const-string v0, "/system/usr"

    .line 149
    .local v0, "icuRootPath":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->setICURoot(Ljava/lang/String;)V

    .line 150
    if-nez v1, :cond_0

    .line 151
    invoke-static {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->loadICUData(Landroid/content/Context;Ljava/io/File;)V

    .line 153
    :cond_0
    return-void

    .line 148
    .end local v0    # "icuRootPath":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private lockForced()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 479
    sget-boolean v0, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 482
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 483
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 486
    :cond_0
    return-void
.end method

.method private markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "foreignKey"    # Ljava/lang/String;
    .param p3, "updateTable"    # Ljava/lang/String;
    .param p4, "deletedTable"    # Ljava/lang/String;

    .prologue
    .line 1168
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1170
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT _sync_dirty FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIMIT 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->native_execSQL(Ljava/lang/String;)V

    .line 1172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIMIT 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->native_execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 1178
    new-instance v0, Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;

    invoke-direct {v0, p3, p4, p2}, Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    .local v0, "info":Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    monitor-enter v2

    .line 1181
    :try_start_1
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1183
    return-void

    .line 1175
    .end local v0    # "info":Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v1

    .line 1182
    .restart local v0    # "info":Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private native native_getDbLookaside()I
.end method

.method private native native_key(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sqlcipher/SQLException;
        }
    .end annotation
.end method

.method private native native_key([C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sqlcipher/SQLException;
        }
    .end annotation
.end method

.method private native native_rawExecSQL(Ljava/lang/String;)V
.end method

.method private native native_status(IZ)I
.end method

.method public static openDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "factory"    # Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;
    .param p3, "flags"    # I

    .prologue
    .line 948
    const/high16 v0, 0x10000000

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "factory"    # Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;
    .param p3, "flags"    # I
    .param p4, "databaseHook"    # Lnet/sqlcipher/database/SQLiteDatabaseHook;

    .prologue
    .line 898
    const/4 v7, 0x0

    .line 901
    .local v7, "sqliteDatabase":Lnet/sqlcipher/database/SQLiteDatabase;
    :try_start_0
    new-instance v0, Lnet/sqlcipher/database/SQLiteDatabase;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/sqlcipher/database/SQLiteDatabase;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)V
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    .end local v7    # "sqliteDatabase":Lnet/sqlcipher/database/SQLiteDatabase;
    .local v0, "sqliteDatabase":Lnet/sqlcipher/database/SQLiteDatabase;
    :try_start_1
    sget-boolean v1, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    if-eqz v1, :cond_0

    .line 903
    invoke-direct {v0, p0}, Lnet/sqlcipher/database/SQLiteDatabase;->enableSqlTracing(Ljava/lang/String;)V

    .line 905
    :cond_0
    sget-boolean v1, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_SQL_TIME:Z

    if-eqz v1, :cond_1

    .line 906
    invoke-direct {v0, p0}, Lnet/sqlcipher/database/SQLiteDatabase;->enableSqlProfiling(Ljava/lang/String;)V
    :try_end_1
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1

    .line 919
    :cond_1
    :goto_0
    invoke-static {}, Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;->getInstance()Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;

    move-result-object v1

    # getter for: Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;->mActiveDatabases:Ljava/util/HashSet;
    invoke-static {v1}, Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;->access$000(Lnet/sqlcipher/database/SQLiteDatabase$ActiveDatabases;)Ljava/util/HashSet;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 921
    return-object v0

    .line 908
    .end local v0    # "sqliteDatabase":Lnet/sqlcipher/database/SQLiteDatabase;
    .restart local v7    # "sqliteDatabase":Lnet/sqlcipher/database/SQLiteDatabase;
    :catch_0
    move-exception v6

    move-object v0, v7

    .line 911
    .end local v7    # "sqliteDatabase":Lnet/sqlcipher/database/SQLiteDatabase;
    .restart local v0    # "sqliteDatabase":Lnet/sqlcipher/database/SQLiteDatabase;
    .local v6, "e":Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;
    :goto_1
    const-string v1, "Database"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting and re-creating corrupt database "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    const-string v1, ":memory"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 915
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 917
    :cond_2
    new-instance v0, Lnet/sqlcipher/database/SQLiteDatabase;

    .end local v0    # "sqliteDatabase":Lnet/sqlcipher/database/SQLiteDatabase;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/sqlcipher/database/SQLiteDatabase;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)V

    .restart local v0    # "sqliteDatabase":Lnet/sqlcipher/database/SQLiteDatabase;
    goto :goto_0

    .line 908
    .end local v6    # "e":Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public static openOrCreateDatabase(Ljava/io/File;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "factory"    # Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;

    .prologue
    .line 936
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Lnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/io/File;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Lnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "factory"    # Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;
    .param p3, "databaseHook"    # Lnet/sqlcipher/database/SQLiteDatabaseHook;

    .prologue
    .line 925
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lnet/sqlcipher/database/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Lnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "factory"    # Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;

    .prologue
    .line 944
    const/high16 v0, 0x10000000

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Lnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "factory"    # Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;
    .param p3, "databaseHook"    # Lnet/sqlcipher/database/SQLiteDatabaseHook;

    .prologue
    .line 929
    const/high16 v0, 0x10000000

    invoke-static {p0, p1, p2, v0, p3}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static native releaseMemory()I
.end method

.method public static native setICURoot(Ljava/lang/String;)V
.end method

.method private unlockForced()V
    .locals 2

    .prologue
    .line 509
    sget-boolean v0, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 511
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->checkLockHoldTime()V

    .line 514
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 515
    return-void
.end method

.method public static upgradeDatabaseFormatFromVersion1To2(Ljava/io/File;Ljava/lang/String;)V
    .locals 9
    .param p0, "databaseToMigrate"    # Ljava/io/File;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v2, 0x0

    .line 84
    .local v2, "newDatabasePath":Ljava/io/File;
    const/4 v3, 0x0

    .line 85
    .local v3, "renameDatabase":Z
    new-instance v1, Lnet/sqlcipher/database/SQLiteDatabase$1;

    invoke-direct {v1}, Lnet/sqlcipher/database/SQLiteDatabase$1;-><init>()V

    .line 95
    .local v1, "hook":Lnet/sqlcipher/database/SQLiteDatabaseHook;
    :try_start_0
    const-string v5, "temp"

    const-string v6, "db"

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 96
    const/4 v5, 0x0

    invoke-static {p0, p1, v5, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Lnet/sqlcipher/database/SQLiteDatabaseHook;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v4

    .line 97
    .local v4, "source":Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v5, "ATTACH DATABASE \'%s\' as newdb"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/sqlcipher/database/SQLiteDatabase;->rawExecSQL(Ljava/lang/String;)V

    .line 98
    const-string v5, "SELECT sqlcipher_export(\'newdb\')"

    invoke-virtual {v4, v5}, Lnet/sqlcipher/database/SQLiteDatabase;->rawExecSQL(Ljava/lang/String;)V

    .line 99
    const-string v5, "DETACH DATABASE newdb"

    invoke-virtual {v4, v5}, Lnet/sqlcipher/database/SQLiteDatabase;->rawExecSQL(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const/4 v3, 0x1

    .line 105
    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 107
    invoke-virtual {v2, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 109
    :cond_0
    return-void

    .line 102
    .end local v4    # "source":Lnet/sqlcipher/database/SQLiteDatabase;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method

.method private yieldIfContendedHelper(ZJ)Z
    .locals 10
    .param p1, "checkFullyYielded"    # Z
    .param p2, "sleepAfterYieldDelay"    # J

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x3e8

    .line 781
    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v4

    if-nez v4, :cond_0

    .line 784
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 785
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    iput-wide v4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 786
    const/4 v4, 0x0

    .line 816
    :goto_0
    return v4

    .line 788
    :cond_0
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V

    .line 789
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionListener:Lnet/sqlcipher/database/SQLiteTransactionListener;

    .line 790
    .local v3, "transactionListener":Lnet/sqlcipher/database/SQLiteTransactionListener;
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    .line 791
    if-eqz p1, :cond_1

    .line 792
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 793
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Db locked more than once. yielfIfContended cannot yield"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 797
    :cond_1
    cmp-long v4, p2, v8

    if-lez v4, :cond_3

    .line 801
    move-wide v1, p2

    .line 802
    .local v1, "remainingDelay":J
    :cond_2
    cmp-long v4, v1, v8

    if-lez v4, :cond_3

    .line 804
    cmp-long v4, v1, v6

    if-gez v4, :cond_4

    move-wide v4, v1

    :goto_1
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :goto_2
    sub-long/2addr v1, v6

    .line 810
    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v4

    if-nez v4, :cond_2

    .line 815
    .end local v1    # "remainingDelay":J
    :cond_3
    invoke-virtual {p0, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransactionWithListener(Lnet/sqlcipher/database/SQLiteTransactionListener;)V

    .line 816
    const/4 v4, 0x1

    goto :goto_0

    .restart local v1    # "remainingDelay":J
    :cond_4
    move-wide v4, v6

    .line 804
    goto :goto_1

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_2
.end method


# virtual methods
.method addSQLiteClosable(Lnet/sqlcipher/database/SQLiteClosable;)V
    .locals 2
    .param p1, "closable"    # Lnet/sqlcipher/database/SQLiteClosable;

    .prologue
    .line 381
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 383
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 387
    return-void

    .line 385
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method addToCompiledQueries(Ljava/lang/String;Lnet/sqlcipher/database/SQLiteCompiledSql;)V
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "compiledStatement"    # Lnet/sqlcipher/database/SQLiteCompiledSql;

    .prologue
    .line 2123
    iget v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-nez v2, :cond_1

    .line 2125
    sget-boolean v2, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v2, :cond_0

    .line 2126
    const-string v2, "Database"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "|NOT adding_sql_to_cache|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    :cond_0
    :goto_0
    return-void

    .line 2131
    :cond_1
    const/4 v1, 0x0

    .line 2132
    .local v1, "compiledSql":Lnet/sqlcipher/database/SQLiteCompiledSql;
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v3

    .line 2134
    :try_start_0
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lnet/sqlcipher/database/SQLiteCompiledSql;

    move-object v1, v0

    .line 2135
    if-eqz v1, :cond_2

    .line 2136
    monitor-exit v3

    goto :goto_0

    .line 2162
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2139
    :cond_2
    :try_start_1
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iget v4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-ne v2, v4, :cond_4

    .line 2147
    iget v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCacheFullWarnings:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCacheFullWarnings:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 2148
    const-string v2, "Database"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reached MAX size for compiled-sql statement cache for database "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; i.e., NO space for this sql statement in cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Please change your sql statements to use \'?\' for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bindargs, instead of using actual values"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    :cond_3
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 2156
    :cond_4
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    sget-boolean v2, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v2, :cond_3

    .line 2158
    const-string v2, "Database"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "|adding_sql_to_cache|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public beginTransaction()V
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransactionWithListener(Lnet/sqlcipher/database/SQLiteTransactionListener;)V

    .line 563
    return-void
.end method

.method public beginTransactionWithListener(Lnet/sqlcipher/database/SQLiteTransactionListener;)V
    .locals 5
    .param p1, "transactionListener"    # Lnet/sqlcipher/database/SQLiteTransactionListener;

    .prologue
    const/4 v4, 0x1

    .line 587
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lockForced()V

    .line 588
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 589
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "database not open"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 591
    :cond_0
    const/4 v2, 0x0

    .line 594
    .local v2, "ok":Z
    :try_start_0
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v3

    if-le v3, v4, :cond_4

    .line 595
    iget-boolean v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v3, :cond_2

    .line 596
    const-string v1, "Cannot call beginTransaction between calling setTransactionSuccessful and endTransaction"

    .line 598
    .local v1, "msg":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 599
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "Database"

    const-string v4, "beginTransaction() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 600
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-nez v2, :cond_1

    .line 625
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlockForced()V

    :cond_1
    throw v3

    .line 602
    :cond_2
    const/4 v2, 0x1

    .line 622
    if-nez v2, :cond_3

    .line 625
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlockForced()V

    .line 628
    :cond_3
    :goto_0
    return-void

    .line 608
    :cond_4
    :try_start_1
    const-string v3, "BEGIN EXCLUSIVE;"

    invoke-virtual {p0, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 609
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionListener:Lnet/sqlcipher/database/SQLiteTransactionListener;

    .line 610
    const/4 v3, 0x1

    iput-boolean v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionIsSuccessful:Z

    .line 611
    const/4 v3, 0x0

    iput-boolean v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    if-eqz p1, :cond_5

    .line 614
    :try_start_2
    invoke-interface {p1}, Lnet/sqlcipher/database/SQLiteTransactionListener;->onBegin()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 620
    :cond_5
    const/4 v2, 0x1

    .line 622
    if-nez v2, :cond_3

    .line 625
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlockForced()V

    goto :goto_0

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v3, "ROLLBACK;"

    invoke-virtual {p0, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 617
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 972
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 983
    :goto_0
    return-void

    .line 975
    :cond_0
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 977
    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->closeClosable()V

    .line 979
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->onAllReferencesReleased()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sqlcipher/SQLException;
        }
    .end annotation

    .prologue
    .line 1239
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1240
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1241
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1244
    :cond_0
    :try_start_0
    new-instance v0, Lnet/sqlcipher/database/SQLiteStatement;

    invoke-direct {v0, p0, p1}, Lnet/sqlcipher/database/SQLiteStatement;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1246
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1691
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1692
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1693
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "database not open"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1695
    :cond_0
    const/4 v3, 0x0

    .line 1697
    .local v3, "statement":Lnet/sqlcipher/database/SQLiteStatement;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " WHERE "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/sqlcipher/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object v3

    .line 1700
    if-eqz p3, :cond_2

    .line 1701
    array-length v2, p3

    .line 1702
    .local v2, "numArgs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1703
    add-int/lit8 v4, v1, 0x1

    aget-object v5, p3, v1

    invoke-static {v3, v4, v5}, Lnet/sqlcipher/DatabaseUtils;->bindObjectToProgram(Lnet/sqlcipher/database/SQLiteProgram;ILjava/lang/Object;)V

    .line 1702
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1697
    .end local v1    # "i":I
    .end local v2    # "numArgs":I
    :cond_1
    const-string v4, ""

    goto :goto_0

    .line 1706
    :cond_2
    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteStatement;->execute()V

    .line 1707
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lastChangeCount()I
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1712
    if-eqz v3, :cond_3

    .line 1713
    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1715
    :cond_3
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 1707
    return v4

    .line 1708
    :catch_0
    move-exception v0

    .line 1709
    .local v0, "e":Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->onCorruption()V

    .line 1710
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1712
    .end local v0    # "e":Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    .line 1713
    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1715
    :cond_4
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 1712
    throw v4
.end method

.method public endTransaction()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 635
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 636
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "database not open"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 638
    :cond_0
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-nez v2, :cond_1

    .line 639
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "no transaction pending"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 642
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v2, :cond_2

    .line 643
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 647
    :goto_0
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 679
    iput-object v4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionListener:Lnet/sqlcipher/database/SQLiteTransactionListener;

    .line 680
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlockForced()V

    .line 686
    :goto_1
    return-void

    .line 645
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionIsSuccessful:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 679
    :catchall_0
    move-exception v2

    iput-object v4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionListener:Lnet/sqlcipher/database/SQLiteTransactionListener;

    .line 680
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlockForced()V

    throw v2

    .line 650
    :cond_3
    const/4 v1, 0x0

    .line 651
    .local v1, "savedException":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionListener:Lnet/sqlcipher/database/SQLiteTransactionListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    .line 653
    :try_start_3
    iget-boolean v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v2, :cond_6

    .line 654
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionListener:Lnet/sqlcipher/database/SQLiteTransactionListener;

    invoke-interface {v2}, Lnet/sqlcipher/database/SQLiteTransactionListener;->onCommit()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 663
    :cond_4
    :goto_2
    :try_start_4
    iget-boolean v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v2, :cond_7

    .line 664
    const-string v2, "COMMIT;"

    invoke-virtual {p0, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 679
    :cond_5
    :goto_3
    iput-object v4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionListener:Lnet/sqlcipher/database/SQLiteTransactionListener;

    .line 680
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlockForced()V

    goto :goto_1

    .line 656
    :cond_6
    :try_start_5
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionListener:Lnet/sqlcipher/database/SQLiteTransactionListener;

    invoke-interface {v2}, Lnet/sqlcipher/database/SQLiteTransactionListener;->onRollback()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/RuntimeException;
    move-object v1, v0

    .line 660
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTransactionIsSuccessful:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 667
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_7
    :try_start_7
    const-string v2, "ROLLBACK;"

    invoke-virtual {p0, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 668
    if-eqz v1, :cond_5

    .line 669
    throw v1
    :try_end_7
    .catch Lnet/sqlcipher/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 671
    :catch_1
    move-exception v0

    .line 673
    .local v0, "e":Lnet/sqlcipher/SQLException;
    :try_start_8
    const-string v2, "Database"

    const-string v3, "exception during rollback, maybe the DB previously performed an auto-rollback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sqlcipher/SQLException;
        }
    .end annotation

    .prologue
    .line 1828
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1829
    .local v1, "timeStart":J
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1830
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1831
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "database not open"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1833
    :cond_0
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    const-string v4, "GETLOCK:"

    invoke-virtual {p0, v3, v1, v2, v4}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 1835
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->native_execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1840
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 1846
    const-string v3, "COMMIT;"

    if-ne p1, v3, :cond_1

    .line 1847
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    const-string v4, "COMMIT;"

    invoke-virtual {p0, v3, v1, v2, v4}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 1851
    :goto_0
    return-void

    .line 1836
    :catch_0
    move-exception v0

    .line 1837
    .local v0, "e":Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->onCorruption()V

    .line 1838
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1840
    .end local v0    # "e":Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v3

    .line 1849
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sqlcipher/SQLException;
        }
    .end annotation

    .prologue
    .line 1889
    if-nez p2, :cond_0

    .line 1890
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Empty bindArgs"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1892
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1893
    .local v4, "timeStart":J
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1894
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1895
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "database not open"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1897
    :cond_1
    const/4 v3, 0x0

    .line 1899
    .local v3, "statement":Lnet/sqlcipher/database/SQLiteStatement;
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object v3

    .line 1900
    if-eqz p2, :cond_2

    .line 1901
    array-length v2, p2

    .line 1902
    .local v2, "numArgs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1903
    add-int/lit8 v6, v1, 0x1

    aget-object v7, p2, v1

    invoke-static {v3, v6, v7}, Lnet/sqlcipher/DatabaseUtils;->bindObjectToProgram(Lnet/sqlcipher/database/SQLiteProgram;ILjava/lang/Object;)V

    .line 1902
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1906
    .end local v1    # "i":I
    .end local v2    # "numArgs":I
    :cond_2
    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteStatement;->execute()V
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1911
    if-eqz v3, :cond_3

    .line 1912
    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1914
    :cond_3
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 1916
    invoke-virtual {p0, p1, v4, v5}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V

    .line 1917
    return-void

    .line 1907
    :catch_0
    move-exception v0

    .line 1908
    .local v0, "e":Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->onCorruption()V

    .line 1909
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1911
    .end local v0    # "e":Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_4

    .line 1912
    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1914
    :cond_4
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 1911
    throw v6
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 1921
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1922
    const-string v0, "Database"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() was never explicitly called on database \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1924
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->closeClosable()V

    .line 1925
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->onAllReferencesReleased()V

    .line 1927
    :cond_0
    return-void
.end method

.method getCompiledStatementForSql(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteCompiledSql;
    .locals 7
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 2181
    const/4 v2, 0x0

    .line 2183
    .local v2, "compiledStatement":Lnet/sqlcipher/database/SQLiteCompiledSql;
    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v4

    .line 2184
    :try_start_0
    iget v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-nez v3, :cond_1

    .line 2186
    sget-boolean v3, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v3, :cond_0

    .line 2187
    const-string v3, "Database"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "|cache NOT found|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    :cond_0
    const/4 v3, 0x0

    monitor-exit v4

    .line 2205
    :goto_0
    return-object v3

    .line 2191
    :cond_1
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lnet/sqlcipher/database/SQLiteCompiledSql;

    move-object v2, v0

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 2192
    .local v1, "cacheHit":Z
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2193
    if-eqz v1, :cond_4

    .line 2194
    iget v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mNumCacheHits:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mNumCacheHits:I

    .line 2199
    :goto_2
    sget-boolean v3, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v3, :cond_2

    .line 2200
    const-string v3, "Database"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "|cache_stats|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mNumCacheHits:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mNumCacheMisses:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTimeOpened:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v3, v2

    .line 2205
    goto/16 :goto_0

    .line 2191
    .end local v1    # "cacheHit":Z
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2192
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2196
    .restart local v1    # "cacheHit":Z
    :cond_4
    iget v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mNumCacheMisses:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mNumCacheMisses:I

    goto/16 :goto_2
.end method

.method public declared-synchronized getMaxSqlCacheSize()I
    .locals 1

    .prologue
    .line 2243
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mMaxSqlCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaximumSize()J
    .locals 6

    .prologue
    .line 1046
    const/4 v2, 0x0

    .line 1047
    .local v2, "prog":Lnet/sqlcipher/database/SQLiteStatement;
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1048
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1049
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "database not open"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1052
    :cond_0
    :try_start_0
    new-instance v3, Lnet/sqlcipher/database/SQLiteStatement;

    const-string v4, "PRAGMA max_page_count;"

    invoke-direct {v3, p0, v4}, Lnet/sqlcipher/database/SQLiteStatement;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    .end local v2    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .local v3, "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :try_start_1
    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    .line 1055
    .local v0, "pageCount":J
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPageSize()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    mul-long/2addr v4, v0

    .line 1057
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1058
    :cond_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-wide v4

    .line 1057
    .end local v0    # "pageCount":J
    .end local v3    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .restart local v2    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :catchall_0
    move-exception v4

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1058
    :cond_2
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v4

    .line 1057
    .end local v2    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .restart local v3    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .restart local v2    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    goto :goto_0
.end method

.method public getPageSize()J
    .locals 6

    .prologue
    .line 1098
    const/4 v0, 0x0

    .line 1099
    .local v0, "prog":Lnet/sqlcipher/database/SQLiteStatement;
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1100
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1101
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "database not open"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1104
    :cond_0
    :try_start_0
    new-instance v1, Lnet/sqlcipher/database/SQLiteStatement;

    const-string v4, "PRAGMA page_size;"

    invoke-direct {v1, p0, v4}, Lnet/sqlcipher/database/SQLiteStatement;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    .end local v0    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .local v1, "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :try_start_1
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 1109
    .local v2, "size":J
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1110
    :cond_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-wide v2

    .line 1109
    .end local v1    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .end local v2    # "size":J
    .restart local v0    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :catchall_0
    move-exception v4

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1110
    :cond_2
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v4

    .line 1109
    .end local v0    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .restart local v1    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .restart local v0    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    goto :goto_0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2008
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncedTables()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 825
    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    monitor-enter v5

    .line 826
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 827
    .local v3, "tables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 828
    .local v2, "table":Ljava/lang/String;
    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;

    .line 829
    .local v1, "info":Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;
    iget-object v4, v1, Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;->deletedTable:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 830
    iget-object v4, v1, Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;->deletedTable:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 834
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;
    .end local v2    # "table":Ljava/lang/String;
    .end local v3    # "tables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 833
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "tables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public getVersion()I
    .locals 6

    .prologue
    .line 1016
    const/4 v0, 0x0

    .line 1017
    .local v0, "prog":Lnet/sqlcipher/database/SQLiteStatement;
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1018
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1019
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "database not open"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1022
    :cond_0
    :try_start_0
    new-instance v1, Lnet/sqlcipher/database/SQLiteStatement;

    const-string v4, "PRAGMA user_version;"

    invoke-direct {v1, p0, v4}, Lnet/sqlcipher/database/SQLiteStatement;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    .end local v0    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .local v1, "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :try_start_1
    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 1024
    .local v2, "version":J
    long-to-int v4, v2

    .line 1026
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1027
    :cond_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return v4

    .line 1026
    .end local v1    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .end local v2    # "version":J
    .restart local v0    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :catchall_0
    move-exception v4

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1027
    :cond_2
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v4

    .line 1026
    .end local v0    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .restart local v1    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .restart local v0    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    goto :goto_0
.end method

.method public inTransaction()Z
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1517
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Lnet/sqlcipher/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1520
    :goto_0
    return-wide v1

    .line 1518
    :catch_0
    move-exception v0

    .line 1519
    .local v0, "e":Lnet/sqlcipher/SQLException;
    const-string v1, "Database"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1520
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sqlcipher/SQLException;
        }
    .end annotation

    .prologue
    .line 1539
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 16
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .param p4, "conflictAlgorithm"    # I

    .prologue
    .line 1599
    invoke-virtual/range {p0 .. p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v13

    if-nez v13, :cond_0

    .line 1600
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "database not open"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1604
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v13, 0x98

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1605
    .local v10, "sql":Ljava/lang/StringBuilder;
    const-string v13, "INSERT"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    sget-object v13, Lnet/sqlcipher/database/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v13, v13, p4

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    const-string v13, " INTO "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v13, 0x28

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1612
    .local v12, "values":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1613
    .local v4, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 1614
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v4

    .line 1615
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1616
    .local v2, "entriesIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/16 v13, 0x28

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1618
    const/4 v8, 0x0

    .line 1619
    .local v8, "needSeparator":Z
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1620
    if-eqz v8, :cond_1

    .line 1621
    const-string v13, ", "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    :cond_1
    const/4 v8, 0x1

    .line 1625
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1626
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    const/16 v13, 0x3f

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1630
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const/16 v13, 0x29

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1636
    .end local v2    # "entriesIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v8    # "needSeparator":Z
    :goto_1
    const-string v13, " VALUES("

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1638
    const-string v13, ");"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    invoke-virtual/range {p0 .. p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1641
    const/4 v11, 0x0

    .line 1643
    .local v11, "statement":Lnet/sqlcipher/database/SQLiteStatement;
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lnet/sqlcipher/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object v11

    .line 1646
    if-eqz v4, :cond_4

    .line 1647
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v9

    .line 1648
    .local v9, "size":I
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1649
    .restart local v2    # "entriesIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v9, :cond_4

    .line 1650
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1651
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v13, v5, 0x1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v11, v13, v14}, Lnet/sqlcipher/DatabaseUtils;->bindObjectToProgram(Lnet/sqlcipher/database/SQLiteProgram;ILjava/lang/Object;)V
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1649
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1632
    .end local v2    # "entriesIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "i":I
    .end local v9    # "size":I
    .end local v11    # "statement":Lnet/sqlcipher/database/SQLiteStatement;
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    const-string v13, "NULL"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1657
    .restart local v11    # "statement":Lnet/sqlcipher/database/SQLiteStatement;
    :cond_4
    :try_start_1
    invoke-virtual {v11}, Lnet/sqlcipher/database/SQLiteStatement;->execute()V

    .line 1659
    invoke-virtual/range {p0 .. p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lastInsertRow()J

    move-result-wide v6

    .line 1660
    .local v6, "insertedRowId":J
    const-wide/16 v13, -0x1

    cmp-long v13, v6, v13

    if-nez v13, :cond_7

    .line 1661
    const-string v13, "Database"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error inserting "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " using "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1673
    :cond_5
    :goto_3
    if-eqz v11, :cond_6

    .line 1674
    invoke-virtual {v11}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1676
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 1668
    return-wide v6

    .line 1663
    :cond_7
    :try_start_2
    const-string v13, "Database"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1664
    const-string v13, "Database"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Inserting row "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " using "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1669
    .end local v6    # "insertedRowId":J
    :catch_0
    move-exception v1

    .line 1670
    .local v1, "e":Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lnet/sqlcipher/database/SQLiteDatabase;->onCorruption()V

    .line 1671
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1673
    .end local v1    # "e":Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v13

    if-eqz v11, :cond_8

    .line 1674
    invoke-virtual {v11}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1676
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 1673
    throw v13
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public isDbLockedByOtherThreads()Z
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInCompiledSqlCache(Ljava/lang/String;)Z
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 2213
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v1

    .line 2214
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 1995
    iget v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mNativeHandle:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1988
    iget v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method native lastChangeCount()I
.end method

.method native lastInsertRow()J
.end method

.method lock()V
    .locals 2

    .prologue
    .line 458
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 460
    sget-boolean v0, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 463
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 464
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockAcquiredThreadTime:J

    goto :goto_0
.end method

.method logTimeStat(Ljava/lang/String;J)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "beginMillis"    # J

    .prologue
    .line 2012
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 2013
    return-void
.end method

.method logTimeStat(Ljava/lang/String;JLjava/lang/String;)V
    .locals 9
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "beginMillis"    # J
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x40

    .line 2019
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    .line 2026
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v1, v4, p2

    .line 2027
    .local v1, "durationMillis":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_1

    const-string v4, "GETLOCK:"

    if-ne p4, v4, :cond_1

    .line 2070
    :cond_0
    :goto_0
    return-void

    .line 2032
    :cond_1
    sget v4, Lnet/sqlcipher/database/SQLiteDatabase;->sQueryLogTimeInMillis:I

    if-nez v4, :cond_2

    .line 2033
    const/16 v4, 0x1f4

    sput v4, Lnet/sqlcipher/database/SQLiteDatabase;->sQueryLogTimeInMillis:I

    .line 2035
    :cond_2
    sget v4, Lnet/sqlcipher/database/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v4, v4

    cmp-long v4, v1, v4

    if-ltz v4, :cond_6

    .line 2036
    const/16 v3, 0x64

    .line 2044
    .local v3, "samplePercent":I
    :cond_3
    if-eqz p4, :cond_4

    .line 2045
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2048
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_5

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2059
    :cond_5
    const-string v0, "unknown"

    .line 2060
    .local v0, "blockingPackage":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 2038
    .end local v0    # "blockingPackage":Ljava/lang/String;
    .end local v3    # "samplePercent":I
    :cond_6
    const-wide/16 v4, 0x64

    mul-long/2addr v4, v1

    sget v6, Lnet/sqlcipher/database/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    long-to-int v4, v4

    add-int/lit8 v3, v4, 0x1

    .line 2039
    .restart local v3    # "samplePercent":I
    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mRandom:Ljava/util/Random;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-lt v4, v3, :cond_3

    goto :goto_0
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "deletedTable"    # Ljava/lang/String;

    .prologue
    .line 1134
    const-string v0, "_id"

    invoke-direct {p0, p1, v0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    return-void
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "foreignKey"    # Ljava/lang/String;
    .param p3, "updateTable"    # Ljava/lang/String;

    .prologue
    .line 1150
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    return-void
.end method

.method native native_execSQL(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sqlcipher/SQLException;
        }
    .end annotation
.end method

.method native native_setLocale(Ljava/lang/String;I)V
.end method

.method public needUpgrade(I)Z
    .locals 1
    .param p1, "newVersion"    # I

    .prologue
    .line 1999
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAllReferencesReleased()V
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    sget-boolean v0, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v0, :cond_0

    .line 402
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    .line 404
    :cond_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->dbclose()V

    .line 406
    :cond_1
    return-void
.end method

.method onCorruption()V
    .locals 3

    .prologue
    .line 434
    const-string v0, "Database"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing corrupt database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :try_start_0
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string v1, ":memory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 447
    :cond_0
    return-void

    .line 442
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string v2, ":memory"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 444
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    throw v0
.end method

.method public purgeFromCompiledSqlCache(Ljava/lang/String;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 2223
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v1

    .line 2224
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2225
    monitor-exit v1

    .line 2226
    return-void

    .line 2225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 1366
    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lnet/sqlcipher/database/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;

    .prologue
    .line 1404
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lnet/sqlcipher/database/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    .locals 11
    .param p1, "distinct"    # Z
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;

    .prologue
    .line 1284
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lnet/sqlcipher/database/SQLiteDatabase;->queryWithFactory(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithFactory(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    .locals 9
    .param p1, "cursorFactory"    # Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;

    .prologue
    .line 1324
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1325
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 1327
    invoke-static/range {v0 .. v7}, Lnet/sqlcipher/database/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1330
    .local v8, "sql":Ljava/lang/String;
    invoke-static {p3}, Lnet/sqlcipher/database/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v8, p6, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQueryWithFactory(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawExecSQL(Ljava/lang/String;)V
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 1854
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1855
    .local v1, "timeStart":J
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1856
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1857
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "database not open"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1859
    :cond_0
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    const-string v4, "GETLOCK:"

    invoke-virtual {p0, v3, v1, v2, v4}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 1861
    :try_start_0
    invoke-direct {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->native_rawExecSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1866
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 1872
    const-string v3, "COMMIT;"

    if-ne p1, v3, :cond_1

    .line 1873
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    const-string v4, "COMMIT;"

    invoke-virtual {p0, v3, v1, v2, v4}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 1877
    :goto_0
    return-void

    .line 1862
    :catch_0
    move-exception v0

    .line 1863
    .local v0, "e":Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->onCorruption()V

    .line 1864
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1866
    .end local v0    # "e":Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v3

    .line 1875
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1419
    invoke-virtual {p0, v0, p1, p2, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQueryWithFactory(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;II)Lnet/sqlcipher/Cursor;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "initialRead"    # I
    .param p4, "maxRead"    # I

    .prologue
    const/4 v1, 0x0

    .line 1496
    invoke-virtual {p0, v1, p1, p2, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQueryWithFactory(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    check-cast v0, Lnet/sqlcipher/database/SQLiteCursor;

    .line 1498
    .local v0, "c":Lnet/sqlcipher/database/SQLiteCursor;
    invoke-virtual {v0, p3, p4}, Lnet/sqlcipher/database/SQLiteCursor;->setLoadStyle(II)V

    .line 1500
    return-object v0
.end method

.method public rawQueryWithFactory(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    .locals 11
    .param p1, "cursorFactory"    # Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "editTable"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    .line 1437
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1438
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "database not open"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1440
    :cond_0
    const-wide/16 v5, 0x0

    .line 1442
    .local v5, "timeStart":J
    iget v7, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSlowQueryThreshold:I

    if-eq v7, v9, :cond_1

    .line 1443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1446
    :cond_1
    new-instance v2, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;

    invoke-direct {v2, p0, p2, p4}, Lnet/sqlcipher/database/SQLiteDirectCursorDriver;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    .local v2, "driver":Lnet/sqlcipher/database/SQLiteCursorDriver;
    const/4 v1, 0x0

    .line 1450
    .local v1, "cursor":Lnet/sqlcipher/Cursor;
    if-eqz p1, :cond_4

    .end local p1    # "cursorFactory":Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;
    :goto_0
    :try_start_0
    invoke-interface {v2, p1, p3}, Lnet/sqlcipher/database/SQLiteCursorDriver;->query(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1454
    iget v7, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSlowQueryThreshold:I

    if-eq v7, v9, :cond_3

    .line 1457
    const/4 v0, -0x1

    .line 1458
    .local v0, "count":I
    if-eqz v1, :cond_2

    .line 1459
    invoke-interface {v1}, Lnet/sqlcipher/Cursor;->getCount()I

    move-result v0

    .line 1462
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v3, v7, v5

    .line 1464
    .local v3, "duration":J
    iget v7, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSlowQueryThreshold:I

    int-to-long v7, v7

    cmp-long v7, v3, v7

    if-ltz v7, :cond_3

    .line 1465
    const-string v8, "Database"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "query ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ms): "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", args are "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p3, :cond_8

    const-string v7, ","

    invoke-static {v7, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", count is "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    .end local v0    # "count":I
    .end local v3    # "duration":J
    :cond_3
    new-instance v7, Lnet/sqlcipher/CrossProcessCursorWrapper;

    invoke-direct {v7, v1}, Lnet/sqlcipher/CrossProcessCursorWrapper;-><init>(Lnet/sqlcipher/Cursor;)V

    return-object v7

    .line 1450
    .restart local p1    # "cursorFactory":Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;
    :cond_4
    :try_start_1
    iget-object p1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mFactory:Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1465
    .end local p1    # "cursorFactory":Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;
    .restart local v0    # "count":I
    .restart local v3    # "duration":J
    :cond_5
    const-string v8, "<null>"

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", count is "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    .end local v0    # "count":I
    .end local v3    # "duration":J
    :cond_6
    throw v7

    :catchall_0
    move-exception v7

    iget v8, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSlowQueryThreshold:I

    if-eq v8, v9, :cond_6

    .line 1457
    const/4 v0, -0x1

    .line 1458
    .restart local v0    # "count":I
    if-eqz v1, :cond_7

    .line 1459
    invoke-interface {v1}, Lnet/sqlcipher/Cursor;->getCount()I

    move-result v0

    .line 1462
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v3, v8, v5

    .line 1464
    .restart local v3    # "duration":J
    iget v8, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSlowQueryThreshold:I

    int-to-long v8, v8

    cmp-long v8, v3, v8

    if-ltz v8, :cond_6

    .line 1465
    const-string v9, "Database"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "query ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ms): "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", args are "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p3, :cond_5

    const-string v8, ","

    invoke-static {v8, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_8
    const-string v7, "<null>"

    goto :goto_1
.end method

.method removeSQLiteClosable(Lnet/sqlcipher/database/SQLiteClosable;)V
    .locals 1
    .param p1, "closable"    # Lnet/sqlcipher/database/SQLiteClosable;

    .prologue
    .line 390
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 392
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 396
    return-void

    .line 394
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 1555
    const/4 v1, 0x5

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Lnet/sqlcipher/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1559
    :goto_0
    return-wide v1

    .line 1557
    :catch_0
    move-exception v0

    .line 1558
    .local v0, "e":Lnet/sqlcipher/SQLException;
    const-string v1, "Database"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1559
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sqlcipher/SQLException;
        }
    .end annotation

    .prologue
    .line 1577
    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public resetCompiledSqlCache()V
    .locals 2

    .prologue
    .line 2233
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v1

    .line 2234
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2235
    monitor-exit v1

    .line 2236
    return-void

    .line 2235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rowUpdated(Ljava/lang/String;J)V
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "rowId"    # J

    .prologue
    .line 1193
    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    monitor-enter v2

    .line 1194
    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;

    .line 1195
    .local v0, "info":Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    if-eqz v0, :cond_0

    .line 1197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;->masterTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SET _sync_dirty=1 WHERE _id=(SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;->foreignKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE _id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1201
    :cond_0
    return-void

    .line 1195
    .end local v0    # "info":Lnet/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 2100
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 2102
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mFlags:I

    invoke-virtual {p0, v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->native_setLocale(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2104
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 2106
    return-void

    .line 2104
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public setLockingEnabled(Z)V
    .locals 0
    .param p1, "lockingEnabled"    # Z

    .prologue
    .line 424
    iput-boolean p1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockingEnabled:Z

    .line 425
    return-void
.end method

.method public declared-synchronized setMaxSqlCacheSize(I)V
    .locals 2
    .param p1, "cacheSize"    # I

    .prologue
    .line 2262
    monitor-enter p0

    const/16 v0, 0xfa

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 2263
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "expected value between 0 and 250"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2264
    :cond_1
    :try_start_1
    iget v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-ge p1, v0, :cond_2

    .line 2265
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot set cacheSize to a value less than the value set with previous setMaxSqlCacheSize() call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2268
    :cond_2
    iput p1, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mMaxSqlCacheSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2269
    monitor-exit p0

    return-void
.end method

.method public setMaximumSize(J)J
    .locals 12
    .param p1, "numBytes"    # J

    .prologue
    .line 1070
    const/4 v6, 0x0

    .line 1071
    .local v6, "prog":Lnet/sqlcipher/database/SQLiteStatement;
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1072
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1073
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "database not open"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1076
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPageSize()J

    move-result-wide v4

    .line 1077
    .local v4, "pageSize":J
    div-long v2, p1, v4

    .line 1079
    .local v2, "numPages":J
    rem-long v8, p1, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 1080
    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    .line 1082
    :cond_1
    new-instance v7, Lnet/sqlcipher/database/SQLiteStatement;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PRAGMA max_page_count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lnet/sqlcipher/database/SQLiteStatement;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    .end local v6    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .local v7, "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :try_start_1
    invoke-virtual {v7}, Lnet/sqlcipher/database/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 1085
    .local v0, "newPageCount":J
    mul-long v8, v0, v4

    .line 1087
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1088
    :cond_2
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    return-wide v8

    .line 1087
    .end local v0    # "newPageCount":J
    .end local v2    # "numPages":J
    .end local v4    # "pageSize":J
    .end local v7    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .restart local v6    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :catchall_0
    move-exception v8

    :goto_0
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1088
    :cond_3
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    throw v8

    .line 1087
    .end local v6    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .restart local v2    # "numPages":J
    .restart local v4    # "pageSize":J
    .restart local v7    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    .restart local v6    # "prog":Lnet/sqlcipher/database/SQLiteStatement;
    goto :goto_0
.end method

.method public setPageSize(J)V
    .locals 2
    .param p1, "numBytes"    # J

    .prologue
    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA page_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1123
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 2

    .prologue
    .line 698
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 702
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no transaction pending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_1
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v0, :cond_2

    .line 705
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setTransactionSuccessful may only be called once per call to beginTransaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 709
    return-void
.end method

.method public setVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA user_version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1038
    return-void
.end method

.method public status(IZ)I
    .locals 1
    .param p1, "operation"    # I
    .param p2, "reset"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->native_status(IZ)I

    move-result v0

    return v0
.end method

.method unlock()V
    .locals 2

    .prologue
    .line 494
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 495
    :cond_0
    sget-boolean v0, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 497
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->checkLockHoldTime()V

    .line 500
    :cond_1
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1730
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lnet/sqlcipher/database/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 14
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "conflictAlgorithm"    # I

    .prologue
    .line 1746
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 1747
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Empty values"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1750
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v11, 0x78

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1751
    .local v9, "sql":Ljava/lang/StringBuilder;
    const-string v11, "UPDATE "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    sget-object v11, Lnet/sqlcipher/database/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v11, v11, p5

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    const-string v11, " SET "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v5

    .line 1757
    .local v5, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1759
    .local v3, "entriesIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1760
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1761
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    const-string v11, "=?"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1763
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1764
    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1768
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1769
    const-string v11, " WHERE "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1770
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    :cond_4
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 1774
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v11

    if-nez v11, :cond_5

    .line 1775
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "database not open"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1777
    :cond_5
    const/4 v10, 0x0

    .line 1779
    .local v10, "statement":Lnet/sqlcipher/database/SQLiteStatement;
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lnet/sqlcipher/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object v10

    .line 1782
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v8

    .line 1783
    .local v8, "size":I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1784
    const/4 v1, 0x1

    .line 1785
    .local v1, "bindArg":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v8, :cond_6

    .line 1786
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1787
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v1, v11}, Lnet/sqlcipher/DatabaseUtils;->bindObjectToProgram(Lnet/sqlcipher/database/SQLiteProgram;ILjava/lang/Object;)V

    .line 1788
    add-int/lit8 v1, v1, 0x1

    .line 1785
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1791
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    if-eqz p4, :cond_7

    .line 1792
    move-object/from16 v0, p4

    array-length v8, v0

    .line 1793
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_7

    .line 1794
    aget-object v11, p4, v6

    invoke-virtual {v10, v1, v11}, Lnet/sqlcipher/database/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1795
    add-int/lit8 v1, v1, 0x1

    .line 1793
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1800
    :cond_7
    invoke-virtual {v10}, Lnet/sqlcipher/database/SQLiteStatement;->execute()V

    .line 1801
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->lastChangeCount()I

    move-result v7

    .line 1802
    .local v7, "numChangedRows":I
    const-string v11, "Database"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1803
    const-string v11, "Database"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Updated "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " using "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " and "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/sqlcipher/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1813
    :cond_8
    if-eqz v10, :cond_9

    .line 1814
    invoke-virtual {v10}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1816
    :cond_9
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 1805
    return v7

    .line 1806
    .end local v1    # "bindArg":I
    .end local v6    # "i":I
    .end local v7    # "numChangedRows":I
    .end local v8    # "size":I
    :catch_0
    move-exception v2

    .line 1807
    .local v2, "e":Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->onCorruption()V

    .line 1808
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1813
    .end local v2    # "e":Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v11

    if-eqz v10, :cond_a

    .line 1814
    invoke-virtual {v10}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1816
    :cond_a
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 1813
    throw v11

    .line 1809
    :catch_1
    move-exception v2

    .line 1810
    .local v2, "e":Lnet/sqlcipher/SQLException;
    :try_start_2
    const-string v11, "Database"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error updating "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " using "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public yieldIfContended()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 749
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely()Z
    .locals 3

    .prologue
    .line 762
    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 1
    .param p1, "sleepAfterYieldDelay"    # J

    .prologue
    .line 777
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method
