.class public final Lcom/activeandroid/query/Update;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/activeandroid/query/Sqlable;


# instance fields
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


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/activeandroid/query/Update;->mType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/activeandroid/query/Update;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public set(Ljava/lang/String;)Lcom/activeandroid/query/Set;
    .locals 1

    new-instance v0, Lcom/activeandroid/query/Set;

    invoke-direct {v0, p0, p1}, Lcom/activeandroid/query/Set;-><init>(Lcom/activeandroid/query/Update;Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs set(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/Set;
    .locals 1

    new-instance v0, Lcom/activeandroid/query/Set;

    invoke-direct {v0, p0, p1, p2}, Lcom/activeandroid/query/Set;-><init>(Lcom/activeandroid/query/Update;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public toSql()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/query/Update;->mType:Ljava/lang/Class;

    invoke-static {v1}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
