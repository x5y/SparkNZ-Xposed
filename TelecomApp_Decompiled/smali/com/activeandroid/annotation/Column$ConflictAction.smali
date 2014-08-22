.class public final enum Lcom/activeandroid/annotation/Column$ConflictAction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/activeandroid/annotation/Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConflictAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/activeandroid/annotation/Column$ConflictAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/activeandroid/annotation/Column$ConflictAction;

.field public static final enum ABORT:Lcom/activeandroid/annotation/Column$ConflictAction;

.field public static final enum FAIL:Lcom/activeandroid/annotation/Column$ConflictAction;

.field public static final enum IGNORE:Lcom/activeandroid/annotation/Column$ConflictAction;

.field public static final enum REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;

.field public static final enum ROLLBACK:Lcom/activeandroid/annotation/Column$ConflictAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/activeandroid/annotation/Column$ConflictAction;

    const-string v1, "ROLLBACK"

    invoke-direct {v0, v1, v2}, Lcom/activeandroid/annotation/Column$ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/activeandroid/annotation/Column$ConflictAction;->ROLLBACK:Lcom/activeandroid/annotation/Column$ConflictAction;

    new-instance v0, Lcom/activeandroid/annotation/Column$ConflictAction;

    const-string v1, "ABORT"

    invoke-direct {v0, v1, v3}, Lcom/activeandroid/annotation/Column$ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/activeandroid/annotation/Column$ConflictAction;->ABORT:Lcom/activeandroid/annotation/Column$ConflictAction;

    new-instance v0, Lcom/activeandroid/annotation/Column$ConflictAction;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v4}, Lcom/activeandroid/annotation/Column$ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/activeandroid/annotation/Column$ConflictAction;->FAIL:Lcom/activeandroid/annotation/Column$ConflictAction;

    new-instance v0, Lcom/activeandroid/annotation/Column$ConflictAction;

    const-string v1, "IGNORE"

    invoke-direct {v0, v1, v5}, Lcom/activeandroid/annotation/Column$ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/activeandroid/annotation/Column$ConflictAction;->IGNORE:Lcom/activeandroid/annotation/Column$ConflictAction;

    new-instance v0, Lcom/activeandroid/annotation/Column$ConflictAction;

    const-string v1, "REPLACE"

    invoke-direct {v0, v1, v6}, Lcom/activeandroid/annotation/Column$ConflictAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/activeandroid/annotation/Column$ConflictAction;

    sget-object v1, Lcom/activeandroid/annotation/Column$ConflictAction;->ROLLBACK:Lcom/activeandroid/annotation/Column$ConflictAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/activeandroid/annotation/Column$ConflictAction;->ABORT:Lcom/activeandroid/annotation/Column$ConflictAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/activeandroid/annotation/Column$ConflictAction;->FAIL:Lcom/activeandroid/annotation/Column$ConflictAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/activeandroid/annotation/Column$ConflictAction;->IGNORE:Lcom/activeandroid/annotation/Column$ConflictAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/activeandroid/annotation/Column$ConflictAction;->$VALUES:[Lcom/activeandroid/annotation/Column$ConflictAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/activeandroid/annotation/Column$ConflictAction;
    .locals 1

    const-class v0, Lcom/activeandroid/annotation/Column$ConflictAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/annotation/Column$ConflictAction;

    return-object v0
.end method

.method public static values()[Lcom/activeandroid/annotation/Column$ConflictAction;
    .locals 1

    sget-object v0, Lcom/activeandroid/annotation/Column$ConflictAction;->$VALUES:[Lcom/activeandroid/annotation/Column$ConflictAction;

    invoke-virtual {v0}, [Lcom/activeandroid/annotation/Column$ConflictAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/activeandroid/annotation/Column$ConflictAction;

    return-object v0
.end method
