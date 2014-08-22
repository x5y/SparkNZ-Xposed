.class public final Lcom/activeandroid/query/From;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/activeandroid/query/Sqlable;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupBy:Ljava/lang/String;

.field private mHaving:Ljava/lang/String;

.field private mJoins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/activeandroid/query/Join;",
            ">;"
        }
    .end annotation
.end field

.field private mLimit:Ljava/lang/String;

.field private mOffset:Ljava/lang/String;

.field private mOrderBy:Ljava/lang/String;

.field private mQueryBase:Lcom/activeandroid/query/Sqlable;

.field private mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;"
        }
    .end annotation
.end field

.field private mWhere:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/activeandroid/query/Sqlable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;",
            "Lcom/activeandroid/query/Sqlable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    iput-object p2, p0, Lcom/activeandroid/query/From;->mQueryBase:Lcom/activeandroid/query/Sqlable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/activeandroid/query/From;->mArguments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addArguments([Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/activeandroid/query/From;->mArguments:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public as(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    iput-object p1, p0, Lcom/activeandroid/query/From;->mAlias:Ljava/lang/String;

    return-object p0
.end method

.method public crossJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/query/Join;"
        }
    .end annotation

    new-instance v0, Lcom/activeandroid/query/Join;

    sget-object v1, Lcom/activeandroid/query/Join$JoinType;->CROSS:Lcom/activeandroid/query/Join$JoinType;

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    iget-object v1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public execute()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/activeandroid/Model;",
            ">()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/activeandroid/query/From;->mQueryBase:Lcom/activeandroid/query/Sqlable;

    instance-of v0, v0, Lcom/activeandroid/query/Select;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/activeandroid/util/SQLiteUtils;->rawQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/activeandroid/util/SQLiteUtils;->execSql(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public executeSingle()Lcom/activeandroid/Model;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/activeandroid/Model;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/activeandroid/query/From;->mQueryBase:Lcom/activeandroid/query/Sqlable;

    instance-of v0, v0, Lcom/activeandroid/query/Select;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/activeandroid/query/From;->limit(I)Lcom/activeandroid/query/From;

    iget-object v0, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/activeandroid/util/SQLiteUtils;->rawQuerySingle(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/activeandroid/Model;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/activeandroid/util/SQLiteUtils;->execSql(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArguments()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/activeandroid/query/From;->mArguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/activeandroid/query/From;->mArguments:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public groupBy(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    iput-object p1, p0, Lcom/activeandroid/query/From;->mGroupBy:Ljava/lang/String;

    return-object p0
.end method

.method public having(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    iput-object p1, p0, Lcom/activeandroid/query/From;->mHaving:Ljava/lang/String;

    return-object p0
.end method

.method public innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/query/Join;"
        }
    .end annotation

    new-instance v0, Lcom/activeandroid/query/Join;

    sget-object v1, Lcom/activeandroid/query/Join$JoinType;->INNER:Lcom/activeandroid/query/Join$JoinType;

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    iget-object v1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public join(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/query/Join;"
        }
    .end annotation

    new-instance v0, Lcom/activeandroid/query/Join;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    iget-object v1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public leftJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/query/Join;"
        }
    .end annotation

    new-instance v0, Lcom/activeandroid/query/Join;

    sget-object v1, Lcom/activeandroid/query/Join$JoinType;->LEFT:Lcom/activeandroid/query/Join$JoinType;

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    iget-object v1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public limit(I)Lcom/activeandroid/query/From;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/activeandroid/query/From;->limit(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    return-object v0
.end method

.method public limit(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    iput-object p1, p0, Lcom/activeandroid/query/From;->mLimit:Ljava/lang/String;

    return-object p0
.end method

.method public offset(I)Lcom/activeandroid/query/From;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/activeandroid/query/From;->offset(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    return-object v0
.end method

.method public offset(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    iput-object p1, p0, Lcom/activeandroid/query/From;->mOffset:Ljava/lang/String;

    return-object p0
.end method

.method public orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    iput-object p1, p0, Lcom/activeandroid/query/From;->mOrderBy:Ljava/lang/String;

    return-object p0
.end method

.method public outerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/query/Join;"
        }
    .end annotation

    new-instance v0, Lcom/activeandroid/query/Join;

    sget-object v1, Lcom/activeandroid/query/Join$JoinType;->OUTER:Lcom/activeandroid/query/Join$JoinType;

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    iget-object v1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public toSql()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/query/From;->mQueryBase:Lcom/activeandroid/query/Sqlable;

    invoke-interface {v1}, Lcom/activeandroid/query/Sqlable;->toSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    invoke-static {v1}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/query/From;->mAlias:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/query/From;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/query/Join;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/activeandroid/query/Join;->toSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v0, p0, Lcom/activeandroid/query/From;->mGroupBy:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GROUP BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/query/From;->mGroupBy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v0, p0, Lcom/activeandroid/query/From;->mHaving:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "HAVING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/query/From;->mHaving:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v0, p0, Lcom/activeandroid/query/From;->mOrderBy:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/query/From;->mOrderBy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    iget-object v0, p0, Lcom/activeandroid/query/From;->mLimit:Ljava/lang/String;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/query/From;->mLimit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    iget-object v0, p0, Lcom/activeandroid/query/From;->mOffset:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OFFSET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/query/From;->mOffset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-static {}, Lcom/activeandroid/util/Log;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/activeandroid/util/Log;->v(Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public where(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 1

    iput-object p1, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/String;

    iget-object v0, p0, Lcom/activeandroid/query/From;->mArguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public varargs where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;
    .locals 2

    iput-object p1, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/String;

    iget-object v0, p0, Lcom/activeandroid/query/From;->mArguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/activeandroid/query/From;->mArguments:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
