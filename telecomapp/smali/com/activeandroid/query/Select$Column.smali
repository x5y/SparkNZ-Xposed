.class public Lcom/activeandroid/query/Select$Column;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/activeandroid/query/Select;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Column"
.end annotation


# instance fields
.field alias:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/activeandroid/query/Select$Column;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/activeandroid/query/Select$Column;->alias:Ljava/lang/String;

    return-void
.end method
