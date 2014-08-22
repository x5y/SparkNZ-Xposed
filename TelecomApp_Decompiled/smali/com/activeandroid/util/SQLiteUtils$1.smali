.class final Lcom/activeandroid/util/SQLiteUtils$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/activeandroid/util/SQLiteUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Class",
        "<*>;",
        "Lcom/activeandroid/util/SQLiteUtils$SQLiteType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->REAL:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->REAL:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->TEXT:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, [B

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->BLOB:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/lang/Byte;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/lang/Short;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/lang/Integer;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/lang/Long;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/lang/Float;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->REAL:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/lang/Double;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->REAL:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/lang/Character;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->TEXT:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->TEXT:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, [Ljava/lang/Byte;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->BLOB:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
