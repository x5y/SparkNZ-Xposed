.class public Lnet/sqlcipher/database/SQLiteContentHelper;
.super Ljava/lang/Object;
.source "SQLiteContentHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlobColumnAsAssetFile(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 12
    .param p0, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v2, 0x0

    .line 53
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteContentHelper;->simpleQueryForBlobMemoryFile(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v10

    .line 54
    .local v10, "file":Landroid/os/MemoryFile;
    if-nez v10, :cond_0

    .line 55
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "No results."

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v10    # "file":Landroid/os/MemoryFile;
    :catch_0
    move-exception v9

    .line 68
    .local v9, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    .end local v9    # "ex":Ljava/io/IOException;
    .restart local v10    # "file":Landroid/os/MemoryFile;
    :cond_0
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 59
    .local v7, "c":Ljava/lang/Class;
    :try_start_2
    const-string v3, "getParcelFileDescriptor"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v7, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 60
    .local v11, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 61
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v11, v10, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    move-object v2, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 65
    .end local v11    # "m":Ljava/lang/reflect/Method;
    :goto_0
    :try_start_3
    new-instance v1, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v3, 0x0

    invoke-virtual {v10}, Landroid/os/MemoryFile;->length()I

    move-result v5

    int-to-long v5, v5

    invoke-direct/range {v1 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    .line 66
    .local v1, "afd":Landroid/content/res/AssetFileDescriptor;
    return-object v1

    .line 62
    .end local v1    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v8

    .line 63
    .local v8, "e":Ljava/lang/Exception;
    const-string v3, "SQLiteContentHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteCursor.java: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private static simpleQueryForBlobMemoryFile(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 6
    .param p0, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v1

    .line 85
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 102
    :goto_0
    return-object v2

    .line 89
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 102
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 92
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 93
    .local v0, "bytes":[B
    if-nez v0, :cond_2

    .line 102
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 96
    :cond_2
    :try_start_2
    new-instance v2, Landroid/os/MemoryFile;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-direct {v2, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 97
    .local v2, "file":Landroid/os/MemoryFile;
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/os/MemoryFile;->writeBytes([BIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v0    # "bytes":[B
    .end local v2    # "file":Landroid/os/MemoryFile;
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3
.end method
