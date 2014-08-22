.class public final enum Lcom/activeandroid/util/SQLiteUtils$SQLiteType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/activeandroid/util/SQLiteUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SQLiteType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/activeandroid/util/SQLiteUtils$SQLiteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

.field public static final enum BLOB:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

.field public static final enum INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

.field public static final enum REAL:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

.field public static final enum TEXT:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    new-instance v0, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    const-string v1, "REAL"

    invoke-direct {v0, v1, v3}, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->REAL:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    new-instance v0, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v4}, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->TEXT:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    new-instance v0, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    const-string v1, "BLOB"

    invoke-direct {v0, v1, v5}, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->BLOB:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->REAL:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->TEXT:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->BLOB:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->$VALUES:[Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/activeandroid/util/SQLiteUtils$SQLiteType;
    .locals 1

    const-class v0, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    return-object v0
.end method

.method public static values()[Lcom/activeandroid/util/SQLiteUtils$SQLiteType;
    .locals 1

    sget-object v0, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->$VALUES:[Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {v0}, [Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    return-object v0
.end method
