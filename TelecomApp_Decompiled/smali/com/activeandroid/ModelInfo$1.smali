.class Lcom/activeandroid/ModelInfo$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/activeandroid/ModelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Class",
        "<*>;",
        "Lcom/activeandroid/serializer/TypeSerializer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/activeandroid/ModelInfo;


# direct methods
.method constructor <init>(Lcom/activeandroid/ModelInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/activeandroid/ModelInfo$1;->this$0:Lcom/activeandroid/ModelInfo;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-class v0, Ljava/util/Calendar;

    new-instance v1, Lcom/activeandroid/serializer/CalendarSerializer;

    invoke-direct {v1}, Lcom/activeandroid/serializer/CalendarSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/ModelInfo$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/sql/Date;

    new-instance v1, Lcom/activeandroid/serializer/SqlDateSerializer;

    invoke-direct {v1}, Lcom/activeandroid/serializer/SqlDateSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/ModelInfo$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/util/Date;

    new-instance v1, Lcom/activeandroid/serializer/UtilDateSerializer;

    invoke-direct {v1}, Lcom/activeandroid/serializer/UtilDateSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/ModelInfo$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
