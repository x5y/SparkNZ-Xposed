.class abstract enum Lcom/google/common/base/Equivalences$Impl;
.super Ljava/lang/Enum;
.source "Equivalences.java"

# interfaces
.implements Lcom/google/common/base/Equivalence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Equivalences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/base/Equivalences$Impl;",
        ">;",
        "Lcom/google/common/base/Equivalence",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/Equivalences$Impl;

.field public static final enum EQUALS:Lcom/google/common/base/Equivalences$Impl;

.field public static final enum IDENTITY:Lcom/google/common/base/Equivalences$Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/google/common/base/Equivalences$Impl$1;

    const-string v1, "EQUALS"

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Equivalences$Impl$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Equivalences$Impl;->EQUALS:Lcom/google/common/base/Equivalences$Impl;

    .line 74
    new-instance v0, Lcom/google/common/base/Equivalences$Impl$2;

    const-string v1, "IDENTITY"

    invoke-direct {v0, v1, v3}, Lcom/google/common/base/Equivalences$Impl$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Equivalences$Impl;->IDENTITY:Lcom/google/common/base/Equivalences$Impl;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/base/Equivalences$Impl;

    sget-object v1, Lcom/google/common/base/Equivalences$Impl;->EQUALS:Lcom/google/common/base/Equivalences$Impl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/Equivalences$Impl;->IDENTITY:Lcom/google/common/base/Equivalences$Impl;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/common/base/Equivalences$Impl;->$VALUES:[Lcom/google/common/base/Equivalences$Impl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/base/Equivalences$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/common/base/Equivalences$1;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Equivalences$Impl;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/Equivalences$Impl;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/google/common/base/Equivalences$Impl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalences$Impl;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/Equivalences$Impl;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/common/base/Equivalences$Impl;->$VALUES:[Lcom/google/common/base/Equivalences$Impl;

    invoke-virtual {v0}, [Lcom/google/common/base/Equivalences$Impl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/Equivalences$Impl;

    return-object v0
.end method
