.class public Lnet/sqlcipher/CrossProcessCursorWrapper;
.super Lnet/sqlcipher/CursorWrapper;
.source "CrossProcessCursorWrapper.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# direct methods
.method public constructor <init>(Lnet/sqlcipher/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Lnet/sqlcipher/Cursor;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lnet/sqlcipher/CursorWrapper;-><init>(Lnet/sqlcipher/Cursor;)V

    .line 10
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .prologue
    .line 19
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lnet/sqlcipher/CrossProcessCursorWrapper;->getCount()I

    move-result v3

    if-le p1, v3, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 24
    add-int/lit8 v3, p1, -0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lnet/sqlcipher/CrossProcessCursorWrapper;->moveToPosition(I)Z

    .line 25
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 26
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 27
    invoke-virtual {p0}, Lnet/sqlcipher/CrossProcessCursorWrapper;->getColumnCount()I

    move-result v0

    .line 28
    .local v0, "columnNum":I
    invoke-virtual {p2, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 29
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lnet/sqlcipher/CrossProcessCursorWrapper;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 30
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 31
    invoke-virtual {p0, v2}, Lnet/sqlcipher/CrossProcessCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "field":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 33
    invoke-virtual {p0}, Lnet/sqlcipher/CrossProcessCursorWrapper;->getPosition()I

    move-result v3

    invoke-virtual {p2, v1, v3, v2}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_5

    .line 34
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 45
    .end local v0    # "columnNum":I
    .end local v1    # "field":Ljava/lang/String;
    .end local v2    # "i":I
    :catch_0
    move-exception v3

    .line 48
    :cond_3
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    .line 38
    .restart local v0    # "columnNum":I
    .restart local v1    # "field":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lnet/sqlcipher/CrossProcessCursorWrapper;->getPosition()I

    move-result v3

    invoke-virtual {p2, v3, v2}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v3

    if-nez v3, :cond_5

    .line 39
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 48
    .end local v0    # "columnNum":I
    .end local v1    # "field":Ljava/lang/String;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v3

    .line 30
    .restart local v0    # "columnNum":I
    .restart local v1    # "field":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMove(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method
