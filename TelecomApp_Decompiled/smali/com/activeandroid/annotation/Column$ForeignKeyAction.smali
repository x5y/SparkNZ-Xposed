.class public final enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/activeandroid/annotation/Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForeignKeyAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/activeandroid/annotation/Column$ForeignKeyAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/activeandroid/annotation/Column$ForeignKeyAction;

.field public static final enum CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

.field public static final enum NO_ACTION:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

.field public static final enum RESTRICT:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

.field public static final enum SET_DEFAULT:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

.field public static final enum SET_NULL:Lcom/activeandroid/annotation/Column$ForeignKeyAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    const-string v1, "SET_NULL"

    invoke-direct {v0, v1, v2}, Lcom/activeandroid/annotation/Column$ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->SET_NULL:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    new-instance v0, Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    const-string v1, "SET_DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/activeandroid/annotation/Column$ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->SET_DEFAULT:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    new-instance v0, Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    const-string v1, "CASCADE"

    invoke-direct {v0, v1, v4}, Lcom/activeandroid/annotation/Column$ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    new-instance v0, Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    const-string v1, "RESTRICT"

    invoke-direct {v0, v1, v5}, Lcom/activeandroid/annotation/Column$ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->RESTRICT:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    new-instance v0, Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    const-string v1, "NO_ACTION"

    invoke-direct {v0, v1, v6}, Lcom/activeandroid/annotation/Column$ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->NO_ACTION:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    sget-object v1, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->SET_NULL:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->SET_DEFAULT:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->RESTRICT:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->NO_ACTION:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->$VALUES:[Lcom/activeandroid/annotation/Column$ForeignKeyAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .locals 1

    const-class v0, Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    return-object v0
.end method

.method public static values()[Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .locals 1

    sget-object v0, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->$VALUES:[Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    invoke-virtual {v0}, [Lcom/activeandroid/annotation/Column$ForeignKeyAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    return-object v0
.end method
