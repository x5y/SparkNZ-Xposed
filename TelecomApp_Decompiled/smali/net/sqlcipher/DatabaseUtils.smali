.class public Lnet/sqlcipher/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sqlcipher/DatabaseUtils$InsertHelper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "DatabaseUtils"

.field private static final countProjection:[Ljava/lang/String;

.field private static mColl:Ljava/text/Collator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lnet/sqlcipher/DatabaseUtils;->countProjection:[Ljava/lang/String;

    .line 349
    const/4 v0, 0x0

    sput-object v0, Lnet/sqlcipher/DatabaseUtils;->mColl:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 807
    return-void
.end method

.method public static appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "sqlString"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x27

    .line 248
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 251
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 252
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 253
    .local v0, "c":C
    if-ne v0, v5, :cond_0

    .line 254
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    return-void
.end method

.method public static final appendValueToSql(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "sql"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 279
    const-string v1, "NULL"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :goto_0
    return-void

    .line 280
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 281
    check-cast v0, Ljava/lang/Boolean;

    .line 282
    .local v0, "bool":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    const/16 v1, 0x31

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 285
    :cond_1
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 288
    .end local v0    # "bool":Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lnet/sqlcipher/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static bindObjectToProgram(Lnet/sqlcipher/database/SQLiteProgram;ILjava/lang/Object;)V
    .locals 3
    .param p0, "prog"    # Lnet/sqlcipher/database/SQLiteProgram;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 177
    if-nez p2, :cond_0

    .line 178
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteProgram;->bindNull(I)V

    .line 195
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 179
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p2, Ljava/lang/Double;

    if-nez v1, :cond_1

    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 180
    :cond_1
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lnet/sqlcipher/database/SQLiteProgram;->bindDouble(ID)V

    goto :goto_0

    .line 181
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 182
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lnet/sqlcipher/database/SQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 183
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    move-object v0, p2

    .line 184
    check-cast v0, Ljava/lang/Boolean;

    .line 185
    .local v0, "bool":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 186
    const-wide/16 v1, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lnet/sqlcipher/database/SQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 188
    :cond_4
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lnet/sqlcipher/database/SQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 190
    .end local v0    # "bool":Ljava/lang/Boolean;
    :cond_5
    instance-of v1, p2, [B

    if-eqz v1, :cond_6

    .line 191
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteProgram;->bindBlob(I[B)V

    goto :goto_0

    .line 193
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lnet/sqlcipher/database/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    .end local p1    # "b":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 300
    .restart local p1    # "b":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    .line 301
    goto :goto_0

    .line 304
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static cursorDoubleToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 604
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 605
    .local v0, "colIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 606
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 610
    :goto_0
    return-void

    .line 608
    :cond_0
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0
.end method

.method public static cursorDoubleToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 796
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 797
    .local v0, "index":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 798
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 800
    :cond_0
    return-void
.end method

.method public static cursorDoubleToCursorValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 591
    invoke-static {p0, p1, p2, p1}, Lnet/sqlcipher/DatabaseUtils;->cursorDoubleToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method public static cursorFloatToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 780
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 781
    .local v0, "index":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 782
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 784
    :cond_0
    return-void
.end method

.method public static cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 530
    invoke-static {p0, p1, p2, p1}, Lnet/sqlcipher/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public static cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 543
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 544
    .local v0, "colIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 545
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 549
    :goto_0
    return-void

    .line 547
    :cond_0
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 764
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 765
    .local v0, "index":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 766
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 768
    :cond_0
    return-void
.end method

.method public static cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 560
    invoke-static {p0, p1, p2, p1}, Lnet/sqlcipher/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public static cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 573
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 574
    .local v0, "colIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 575
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 576
    .local v1, "value":Ljava/lang/Long;
    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 580
    .end local v1    # "value":Ljava/lang/Long;
    :goto_0
    return-void

    .line 578
    :cond_0
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p2, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 732
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 733
    .local v0, "index":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 734
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 736
    :cond_0
    return-void
.end method

.method public static cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 619
    instance-of v4, p0, Lnet/sqlcipher/AbstractWindowedCursor;

    if-eqz v4, :cond_0

    move-object v4, p0

    check-cast v4, Lnet/sqlcipher/AbstractWindowedCursor;

    move-object v0, v4

    .line 622
    .local v0, "awc":Lnet/sqlcipher/AbstractWindowedCursor;
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, "columns":[Ljava/lang/String;
    array-length v3, v1

    .line 624
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 625
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lnet/sqlcipher/AbstractWindowedCursor;->isBlob(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 626
    aget-object v4, v1, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 624
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 619
    .end local v0    # "awc":Lnet/sqlcipher/AbstractWindowedCursor;
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 628
    .restart local v0    # "awc":Lnet/sqlcipher/AbstractWindowedCursor;
    .restart local v1    # "columns":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :cond_1
    aget-object v4, v1, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 631
    :cond_2
    return-void
.end method

.method public static cursorShortToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 748
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 749
    .local v0, "index":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 750
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 752
    :cond_0
    return-void
.end method

.method public static cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 493
    invoke-static {p0, p1, p2, p1}, Lnet/sqlcipher/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public static cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 519
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method public static cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 716
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 717
    .local v0, "index":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 718
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :cond_0
    return-void
.end method

.method public static cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Lnet/sqlcipher/DatabaseUtils$InsertHelper;I)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "inserter"    # Lnet/sqlcipher/DatabaseUtils$InsertHelper;
    .param p3, "index"    # I

    .prologue
    .line 506
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 507
    return-void
.end method

.method public static dumpCurrentRow(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 421
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lnet/sqlcipher/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    .line 422
    return-void
.end method

.method public static dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V
    .locals 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .prologue
    .line 431
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "cols":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    array-length v3, v0

    .line 434
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 437
    :try_start_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 443
    .local v4, "value":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 438
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Lnet/sqlcipher/database/SQLiteException;
    const-string v4, "<unprintable>"

    .restart local v4    # "value":Ljava/lang/String;
    goto :goto_1

    .line 445
    .end local v1    # "e":Lnet/sqlcipher/database/SQLiteException;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    const-string v5, "}"

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public static dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 455
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "cols":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " {\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    array-length v3, v0

    .line 458
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 461
    :try_start_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 467
    .local v4, "value":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 465
    .local v1, "e":Lnet/sqlcipher/database/SQLiteException;
    const-string v4, "<unprintable>"

    .restart local v4    # "value":Ljava/lang/String;
    goto :goto_1

    .line 469
    .end local v1    # "e":Lnet/sqlcipher/database/SQLiteException;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    const-string v5, "}\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    return-void
.end method

.method public static dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lnet/sqlcipher/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    .line 481
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static dumpCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 357
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lnet/sqlcipher/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    .line 358
    return-void
.end method

.method public static dumpCursor(Landroid/database/Cursor;Ljava/io/PrintStream;)V
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .prologue
    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> Dumping cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    if-eqz p0, :cond_1

    .line 370
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 372
    .local v0, "startPos":I
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 373
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    invoke-static {p0, p1}, Lnet/sqlcipher/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    goto :goto_0

    .line 376
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 378
    .end local v0    # "startPos":I
    :cond_1
    const-string v1, "<<<<<"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public static dumpCursor(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> Dumping cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    if-eqz p0, :cond_1

    .line 391
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 393
    .local v0, "startPos":I
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 394
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    invoke-static {p0, p1}, Lnet/sqlcipher/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 397
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 399
    .end local v0    # "startPos":I
    :cond_1
    const-string v1, "<<<<<\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    return-void
.end method

.method public static dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lnet/sqlcipher/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-static {p0}, Lnet/sqlcipher/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 315
    .local v0, "arr":[B
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Lnet/sqlcipher/DatabaseUtils;->getKeyLen([B)I

    move-result v4

    const-string v5, "ISO8859_1"

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    return-object v2

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method private static getCollationKeyInBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 342
    sget-object v0, Lnet/sqlcipher/DatabaseUtils;->mColl:Ljava/text/Collator;

    if-nez v0, :cond_0

    .line 343
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lnet/sqlcipher/DatabaseUtils;->mColl:Ljava/text/Collator;

    .line 344
    sget-object v0, Lnet/sqlcipher/DatabaseUtils;->mColl:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 346
    :cond_0
    sget-object v0, Lnet/sqlcipher/DatabaseUtils;->mColl:Ljava/text/Collator;

    invoke-virtual {v0, p0}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static getHexCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-static {p0}, Lnet/sqlcipher/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 328
    .local v0, "arr":[B
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v1

    .line 329
    .local v1, "keys":[C
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Lnet/sqlcipher/DatabaseUtils;->getKeyLen([B)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method private static getKeyLen([B)I
    .locals 1
    .param p0, "arr"    # [B

    .prologue
    .line 333
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    if-eqz v0, :cond_0

    .line 334
    array-length v0, p0

    .line 337
    :goto_0
    return v0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static getTypeOfObject(Ljava/lang/Object;)I
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 215
    if-nez p0, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0

    .line 217
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 218
    const/4 v0, 0x4

    goto :goto_0

    .line 219
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 220
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 221
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 222
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 224
    :cond_5
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static longForQuery(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3
    .param p0, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 655
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object v0

    .line 657
    .local v0, "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :try_start_0
    invoke-static {v0, p2}, Lnet/sqlcipher/DatabaseUtils;->longForQuery(Lnet/sqlcipher/database/SQLiteStatement;[Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 659
    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    throw v1
.end method

.method public static longForQuery(Lnet/sqlcipher/database/SQLiteStatement;[Ljava/lang/String;)J
    .locals 6
    .param p0, "prog"    # Lnet/sqlcipher/database/SQLiteStatement;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 668
    if-eqz p1, :cond_0

    .line 669
    array-length v1, p1

    .line 670
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 671
    add-int/lit8 v4, v0, 0x1

    aget-object v5, p1, v0

    invoke-static {p0, v4, v5}, Lnet/sqlcipher/DatabaseUtils;->bindObjectToProgram(Lnet/sqlcipher/database/SQLiteProgram;ILjava/lang/Object;)V

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 674
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    .line 675
    .local v2, "value":J
    return-wide v2
.end method

.method public static queryNumEntries(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)J
    .locals 9
    .param p0, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 640
    sget-object v2, Lnet/sqlcipher/DatabaseUtils;->countProjection:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v8

    .line 643
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 644
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 646
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static final readExceptionFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p0, "reply"    # Landroid/os/Parcel;

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .local v0, "code":I
    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "msg":Ljava/lang/String;
    invoke-static {p0, v1, v0}, Lnet/sqlcipher/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static final readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V
    .locals 1
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 144
    packed-switch p2, :pswitch_data_0

    .line 162
    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    .line 164
    return-void

    .line 146
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :pswitch_2
    new-instance v0, Lnet/sqlcipher/database/SQLiteAbortException;

    invoke-direct {v0, p1}, Lnet/sqlcipher/database/SQLiteAbortException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :pswitch_3
    new-instance v0, Lnet/sqlcipher/database/SQLiteConstraintException;

    invoke-direct {v0, p1}, Lnet/sqlcipher/database/SQLiteConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :pswitch_4
    new-instance v0, Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;

    invoke-direct {v0, p1}, Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :pswitch_5
    new-instance v0, Lnet/sqlcipher/database/SQLiteFullException;

    invoke-direct {v0, p1}, Lnet/sqlcipher/database/SQLiteFullException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :pswitch_6
    new-instance v0, Lnet/sqlcipher/database/SQLiteDiskIOException;

    invoke-direct {v0, p1}, Lnet/sqlcipher/database/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :pswitch_7
    new-instance v0, Lnet/sqlcipher/database/SQLiteException;

    invoke-direct {v0, p1}, Lnet/sqlcipher/database/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p0, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    .local v0, "code":I
    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "msg":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 125
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_1
    invoke-static {p0, v1, v0}, Lnet/sqlcipher/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static readExceptionWithOperationApplicationExceptionFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p0, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .local v0, "code":I
    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "msg":Ljava/lang/String;
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 137
    new-instance v2, Landroid/content/OperationApplicationException;

    invoke-direct {v2, v1}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_1
    invoke-static {p0, v1, v0}, Lnet/sqlcipher/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v0, "escaper":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lnet/sqlcipher/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static stringForQuery(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 683
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object v0

    .line 685
    .local v0, "prog":Lnet/sqlcipher/database/SQLiteStatement;
    :try_start_0
    invoke-static {v0, p2}, Lnet/sqlcipher/DatabaseUtils;->stringForQuery(Lnet/sqlcipher/database/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 687
    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    throw v1
.end method

.method public static stringForQuery(Lnet/sqlcipher/database/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "prog"    # Lnet/sqlcipher/database/SQLiteStatement;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 696
    if-eqz p1, :cond_0

    .line 697
    array-length v1, p1

    .line 698
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 699
    add-int/lit8 v3, v0, 0x1

    aget-object v4, p1, v0

    invoke-static {p0, v3, v4}, Lnet/sqlcipher/DatabaseUtils;->bindObjectToProgram(Lnet/sqlcipher/database/SQLiteProgram;ILjava/lang/Object;)V

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, "value":Ljava/lang/String;
    return-object v2
.end method

.method public static final writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V
    .locals 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "code":I
    const/4 v1, 0x1

    .line 69
    .local v1, "logException":Z
    instance-of v2, p1, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_1

    .line 70
    const/4 v0, 0x1

    .line 71
    const/4 v1, 0x0

    .line 95
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    if-eqz v1, :cond_0

    .line 99
    const-string v2, "DatabaseUtils"

    const-string v3, "Writing exception to parcel"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :cond_0
    :goto_1
    return-void

    .line 72
    :cond_1
    instance-of v2, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_2

    .line 73
    const/4 v0, 0x2

    goto :goto_0

    .line 74
    :cond_2
    instance-of v2, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_3

    .line 75
    const/4 v0, 0x3

    goto :goto_0

    .line 76
    :cond_3
    instance-of v2, p1, Lnet/sqlcipher/database/SQLiteAbortException;

    if-eqz v2, :cond_4

    .line 77
    const/4 v0, 0x4

    goto :goto_0

    .line 78
    :cond_4
    instance-of v2, p1, Lnet/sqlcipher/database/SQLiteConstraintException;

    if-eqz v2, :cond_5

    .line 79
    const/4 v0, 0x5

    goto :goto_0

    .line 80
    :cond_5
    instance-of v2, p1, Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;

    if-eqz v2, :cond_6

    .line 81
    const/4 v0, 0x6

    goto :goto_0

    .line 82
    :cond_6
    instance-of v2, p1, Lnet/sqlcipher/database/SQLiteFullException;

    if-eqz v2, :cond_7

    .line 83
    const/4 v0, 0x7

    goto :goto_0

    .line 84
    :cond_7
    instance-of v2, p1, Lnet/sqlcipher/database/SQLiteDiskIOException;

    if-eqz v2, :cond_8

    .line 85
    const/16 v0, 0x8

    goto :goto_0

    .line 86
    :cond_8
    instance-of v2, p1, Lnet/sqlcipher/database/SQLiteException;

    if-eqz v2, :cond_9

    .line 87
    const/16 v0, 0x9

    goto :goto_0

    .line 88
    :cond_9
    instance-of v2, p1, Landroid/content/OperationApplicationException;

    if-eqz v2, :cond_a

    .line 89
    const/16 v0, 0xa

    goto :goto_0

    .line 91
    :cond_a
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 92
    const-string v2, "DatabaseUtils"

    const-string v3, "Writing exception to parcel"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
