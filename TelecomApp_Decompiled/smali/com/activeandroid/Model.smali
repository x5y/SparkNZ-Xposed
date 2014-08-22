.class public abstract Lcom/activeandroid/Model;
.super Ljava/lang/Object;


# instance fields
.field private mId:Ljava/lang/Long;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Id"
    .end annotation
.end field

.field private mTableInfo:Lcom/activeandroid/TableInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/activeandroid/Cache;->getTableInfo(Ljava/lang/Class;)Lcom/activeandroid/TableInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-static {p0}, Lcom/activeandroid/Cache;->addEntity(Lcom/activeandroid/Model;)V

    return-void
.end method

.method public static delete(Ljava/lang/Class;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;J)V"
        }
    .end annotation

    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    invoke-virtual {v0, p0}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "Id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public static load(Ljava/lang/Class;J)Lcom/activeandroid/Model;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/activeandroid/Model;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;J)TT;"
        }
    .end annotation

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    invoke-virtual {v0, p0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "Id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final delete()V
    .locals 6

    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v1}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/activeandroid/Model;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p0}, Lcom/activeandroid/Cache;->removeEntity(Lcom/activeandroid/Model;)V

    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v1}, Lcom/activeandroid/TableInfo;->getType()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/activeandroid/content/ContentProvider;->createUri(Ljava/lang/Class;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/activeandroid/Model;

    iget-object v0, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v0}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v1}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    iget-object v1, p1, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    return-object v0
.end method

.method protected final getMany(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/activeandroid/Model;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    invoke-virtual {v0, p1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/activeandroid/Model;->getId()Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final loadFromCursor(Landroid/database/Cursor;)V
    .locals 14

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v0}, Lcom/activeandroid/TableInfo;->getFields()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v1, v0}, Lcom/activeandroid/TableInfo;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :try_start_0
    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    invoke-static {v1}, Lcom/activeandroid/Cache;->getParserForType(Ljava/lang/Class;)Lcom/activeandroid/serializer/TypeSerializer;

    move-result-object v9

    if-eqz v9, :cond_1b

    invoke-virtual {v9}, Lcom/activeandroid/serializer/TypeSerializer;->getSerializedType()Ljava/lang/Class;

    move-result-object v1

    move-object v5, v1

    :goto_1
    if-eqz v8, :cond_2

    move-object v0, v2

    move-object v1, v2

    :goto_2
    if-eqz v9, :cond_1

    if-nez v8, :cond_1

    invoke-virtual {v9, v0}, Lcom/activeandroid/serializer/TypeSerializer;->deserialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_2

    :cond_4
    const-class v1, Ljava/lang/Short;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_2

    :cond_6
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_2

    :cond_8
    const-class v1, Ljava/lang/Long;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_2

    :cond_a
    const-class v1, Ljava/lang/Float;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_2

    :cond_c
    const-class v1, Ljava/lang/Double;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_2

    :cond_e
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_f
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_10

    move v1, v3

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_2

    :cond_10
    move v1, v4

    goto :goto_3

    :cond_11
    const-class v1, Ljava/lang/Character;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_2

    :cond_13
    const-class v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_2

    :cond_14
    const-class v1, [Ljava/lang/Byte;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-class v1, [B

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_2

    :cond_16
    invoke-static {v5}, Lcom/activeandroid/util/ReflectionUtils;->isModel(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v5, v10, v11}, Lcom/activeandroid/Cache;->getEntity(Ljava/lang/Class;J)Lcom/activeandroid/Model;

    move-result-object v1

    if-nez v1, :cond_17

    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    invoke-virtual {v1, v5}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    const-string v5, "Id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v12

    invoke-virtual {v1, v5, v7}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v1

    :cond_17
    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_2

    :cond_18
    const-class v1, Ljava/lang/Enum;

    invoke-static {v5, v1}, Lcom/activeandroid/util/ReflectionUtils;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_19
    return-void

    :cond_1a
    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_2

    :cond_1b
    move-object v5, v1

    goto/16 :goto_1
.end method

.method public final save()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    iget-object v0, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v0}, Lcom/activeandroid/TableInfo;->getFields()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v1, v0}, Lcom/activeandroid/TableInfo;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/activeandroid/Cache;->getParserForType(Ljava/lang/Class;)Lcom/activeandroid/serializer/TypeSerializer;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6, v0}, Lcom/activeandroid/serializer/TypeSerializer;->serialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v6}, Lcom/activeandroid/serializer/TypeSerializer;->getSerializedType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "TypeSerializer returned wrong type: expected a %s but got a %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v6}, Lcom/activeandroid/serializer/TypeSerializer;->getSerializedType()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v6, 0x1

    aput-object v1, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/activeandroid/util/Log;->w(Ljava/lang/String;)I

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-class v6, Ljava/lang/Byte;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_4
    :try_start_2
    const-class v6, Ljava/lang/Short;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto/16 :goto_0

    :cond_6
    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_8
    const-class v6, Ljava/lang/Long;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_a
    const-class v6, Ljava/lang/Float;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_b
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto/16 :goto_0

    :cond_c
    const-class v6, Ljava/lang/Double;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_d
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto/16 :goto_0

    :cond_e
    const-class v6, Ljava/lang/Boolean;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_f
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_10
    const-class v6, Ljava/lang/Character;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const-class v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const-class v6, [Ljava/lang/Byte;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    const-class v6, [B

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    :cond_14
    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_0

    :cond_15
    invoke-static {v1}, Lcom/activeandroid/util/ReflectionUtils;->isModel(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_16

    check-cast v0, Lcom/activeandroid/Model;

    invoke-virtual {v0}, Lcom/activeandroid/Model;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_16
    const-class v6, Ljava/lang/Enum;

    invoke-static {v1, v6}, Lcom/activeandroid/util/ReflectionUtils;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v0}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v10, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    :goto_1
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v1}, Lcom/activeandroid/TableInfo;->getType()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/activeandroid/content/ContentProvider;->createUri(Ljava/lang/Class;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void

    :cond_18
    iget-object v0, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v0}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/activeandroid/Model;->mId:Ljava/lang/Long;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v3, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/activeandroid/Model;->mTableInfo:Lcom/activeandroid/TableInfo;

    invoke-virtual {v1}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/activeandroid/Model;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
