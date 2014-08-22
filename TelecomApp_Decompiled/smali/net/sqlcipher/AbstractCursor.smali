.class public abstract Lnet/sqlcipher/AbstractCursor;
.super Ljava/lang/Object;
.source "AbstractCursor.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;
.implements Lnet/sqlcipher/Cursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sqlcipher/AbstractCursor$SelfContentObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field protected mClosed:Z

.field mContentObservable:Landroid/database/ContentObservable;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCurrentRowID:Ljava/lang/Long;

.field mDataSetObservable:Landroid/database/DataSetObservable;

.field private mNotifyUri:Landroid/net/Uri;

.field protected mPos:I

.field protected mRowIdColumnIndex:I

.field private mSelfObserver:Landroid/database/ContentObserver;

.field private final mSelfObserverLock:Ljava/lang/Object;

.field private mSelfObserverRegistered:Z

.field protected mUpdatedRows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 43
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sqlcipher/AbstractCursor;->mClosed:Z

    .line 652
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    .line 164
    iput v1, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    .line 165
    iput v1, p0, Lnet/sqlcipher/AbstractCursor;->mRowIdColumnIndex:I

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    .line 168
    return-void
.end method


# virtual methods
.method public abortUpdates()V
    .locals 2

    .prologue
    .line 438
    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 439
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 440
    monitor-exit v1

    .line 441
    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected checkPosition()V
    .locals 3

    .prologue
    .line 588
    const/4 v0, -0x1

    iget v1, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getCount()I

    move-result v0

    iget v1, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    if-ne v0, v1, :cond_1

    .line 589
    :cond_0
    new-instance v0, Lnet/sqlcipher/CursorIndexOutOfBoundsException;

    iget v1, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/sqlcipher/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 591
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sqlcipher/AbstractCursor;->mClosed:Z

    .line 110
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    .line 111
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->deactivateInternal()V

    .line 112
    return-void
.end method

.method public commitUpdates()Z
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sqlcipher/AbstractCursor;->commitUpdates(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    const/4 v4, 0x0

    .line 147
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 149
    iget-object v0, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 150
    .local v0, "data":[C
    if-eqz v0, :cond_0

    array-length v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 151
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 155
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 159
    .end local v0    # "data":[C
    :goto_1
    return-void

    .line 153
    .restart local v0    # "data":[C
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    .line 157
    .end local v0    # "data":[C
    :cond_2
    iput v4, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_1
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->deactivateInternal()V

    .line 81
    return-void
.end method

.method public deactivateInternal()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserverRegistered:Z

    .line 91
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 92
    return-void
.end method

.method public deleteRow()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .prologue
    .line 212
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getCount()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 217
    :try_start_0
    iget v3, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    .line 218
    .local v3, "oldpos":I
    add-int/lit8 v4, p1, -0x1

    iput v4, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    .line 219
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 220
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 221
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getColumnCount()I

    move-result v0

    .line 222
    .local v0, "columnNum":I
    invoke-virtual {p2, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 223
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 224
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 225
    invoke-virtual {p0, v2}, Lnet/sqlcipher/AbstractCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "field":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 227
    iget v4, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    invoke-virtual {p2, v1, v4, v2}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 228
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 241
    .end local v0    # "columnNum":I
    .end local v1    # "field":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "oldpos":I
    :catch_0
    move-exception v4

    .line 244
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    .line 232
    .restart local v0    # "columnNum":I
    .restart local v1    # "field":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "oldpos":I
    :cond_3
    :try_start_1
    iget v4, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    invoke-virtual {p2, v4, v2}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 233
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 244
    .end local v0    # "columnNum":I
    .end local v1    # "field":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "oldpos":I
    :catchall_0
    move-exception v4

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v4

    .line 224
    .restart local v0    # "columnNum":I
    .restart local v1    # "field":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "oldpos":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 240
    .end local v1    # "field":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_5
    :try_start_2
    iput v3, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserverRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 596
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 598
    :cond_0
    return-void
.end method

.method public getBlob(I)[B
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getBlob is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 9
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 293
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 294
    .local v4, "periodIndex":I
    if-eq v4, v5, :cond_0

    .line 295
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 296
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "Cursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requesting column name with table name -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 300
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "columnNames":[Ljava/lang/String;
    array-length v3, v0

    .line 302
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 303
    aget-object v6, v0, v2

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 313
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 302
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v5

    .line 313
    goto :goto_1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 318
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 319
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "column \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 325
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public abstract getColumnNames()[Ljava/lang/String;
.end method

.method public abstract getCount()I
.end method

.method protected getDataSetObservable()Landroid/database/DataSetObservable;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method public abstract getDouble(I)D
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 539
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong(I)J
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    return v0
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method public abstract getType(I)I
.end method

.method protected getUpdatedField(I)Ljava/lang/Object;
    .locals 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 575
    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    iget-object v2, p0, Lnet/sqlcipher/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 576
    .local v0, "updates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getWindow()Lnet/sqlcipher/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Lnet/sqlcipher/CursorWindow;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasUpdates()Z
    .locals 2

    .prologue
    .line 428
    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 429
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isAfterLast()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 285
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isBeforeFirst()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 278
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lnet/sqlcipher/AbstractCursor;->mClosed:Z

    return v0
.end method

.method protected isFieldUpdated(I)Z
    .locals 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 557
    iget v1, p0, Lnet/sqlcipher/AbstractCursor;->mRowIdColumnIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 558
    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    iget-object v2, p0, Lnet/sqlcipher/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 559
    .local v0, "updates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    const/4 v1, 0x1

    .line 563
    .end local v0    # "updates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isFirst()Z
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLast()Z
    .locals 3

    .prologue
    .line 273
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getCount()I

    move-result v0

    .line 274
    .local v0, "cnt":I
    iget v1, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract isNull(I)Z
.end method

.method public final move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 249
    iget v0, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lnet/sqlcipher/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToFirst()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sqlcipher/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lnet/sqlcipher/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToNext()Z
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sqlcipher/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToPosition(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 176
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getCount()I

    move-result v0

    .line 177
    .local v0, "count":I
    if-lt p1, v0, :cond_1

    .line 178
    iput v0, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    .line 203
    :cond_0
    :goto_0
    return v1

    .line 183
    :cond_1
    if-gez p1, :cond_2

    .line 184
    iput v3, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    goto :goto_0

    .line 189
    :cond_2
    iget v2, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    if-ne p1, v2, :cond_3

    .line 190
    const/4 v1, 0x1

    goto :goto_0

    .line 193
    :cond_3
    iget v2, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    invoke-virtual {p0, v2, p1}, Lnet/sqlcipher/AbstractCursor;->onMove(II)Z

    move-result v1

    .line 194
    .local v1, "result":Z
    if-nez v1, :cond_4

    .line 195
    iput v3, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    goto :goto_0

    .line 197
    :cond_4
    iput p1, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    .line 198
    iget v2, p0, Lnet/sqlcipher/AbstractCursor;->mRowIdColumnIndex:I

    if-eq v2, v3, :cond_0

    .line 199
    iget v2, p0, Lnet/sqlcipher/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {p0, v2}, Lnet/sqlcipher/AbstractCursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lnet/sqlcipher/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    goto :goto_0
.end method

.method public final moveToPrevious()Z
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lnet/sqlcipher/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lnet/sqlcipher/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method protected notifyDataSetChange()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 476
    return-void
.end method

.method protected onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 502
    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 503
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    .line 504
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 505
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lnet/sqlcipher/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v3, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 507
    :cond_0
    monitor-exit v1

    .line 508
    return-void

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onMove(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 460
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    .line 461
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 487
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 489
    return-void
.end method

.method public requery()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 95
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserverRegistered:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v2, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    iput-boolean v3, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserverRegistered:Z

    .line 100
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 101
    return v3
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 543
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "notifyUri"    # Landroid/net/Uri;

    .prologue
    .line 518
    iget-object v1, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 519
    :try_start_0
    iput-object p2, p0, Lnet/sqlcipher/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    .line 520
    iput-object p1, p0, Lnet/sqlcipher/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    .line 521
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 524
    :cond_0
    new-instance v0, Lnet/sqlcipher/AbstractCursor$SelfContentObserver;

    invoke-direct {v0, p0}, Lnet/sqlcipher/AbstractCursor$SelfContentObserver;-><init>(Lnet/sqlcipher/AbstractCursor;)V

    iput-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    .line 525
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lnet/sqlcipher/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sqlcipher/AbstractCursor;->mSelfObserverRegistered:Z

    .line 527
    monitor-exit v1

    .line 528
    return-void

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supportsUpdates()Z
    .locals 2

    .prologue
    .line 456
    iget v0, p0, Lnet/sqlcipher/AbstractCursor;->mRowIdColumnIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 465
    iget-boolean v0, p0, Lnet/sqlcipher/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 468
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 492
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 493
    return-void
.end method

.method public update(ILjava/lang/Object;)Z
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 397
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->supportsUpdates()Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    const/4 v2, 0x0

    .line 417
    :goto_0
    return v2

    .line 403
    :cond_0
    new-instance v1, Ljava/lang/Long;

    iget v2, p0, Lnet/sqlcipher/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {p0, v2}, Lnet/sqlcipher/AbstractCursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 404
    .local v1, "rowid":Ljava/lang/Long;
    if-nez v1, :cond_1

    .line 405
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null rowid. mRowIdColumnIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnet/sqlcipher/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 408
    :cond_1
    iget-object v3, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v3

    .line 409
    :try_start_0
    iget-object v2, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 410
    .local v0, "row":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_2

    .line 411
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "row":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 412
    .restart local v0    # "row":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lnet/sqlcipher/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_2
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    monitor-exit v3

    .line 417
    const/4 v2, 0x1

    goto :goto_0

    .line 415
    .end local v0    # "row":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateBlob(I[B)Z
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "value"    # [B

    .prologue
    .line 333
    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateDouble(ID)Z
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "value"    # D

    .prologue
    .line 381
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sqlcipher/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateFloat(IF)Z
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "value"    # F

    .prologue
    .line 373
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sqlcipher/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateInt(II)Z
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "value"    # I

    .prologue
    .line 357
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sqlcipher/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateLong(IJ)Z
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "value"    # J

    .prologue
    .line 365
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sqlcipher/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateShort(IS)Z
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "value"    # S

    .prologue
    .line 349
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sqlcipher/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateString(ILjava/lang/String;)Z
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateToNull(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 389
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sqlcipher/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method
