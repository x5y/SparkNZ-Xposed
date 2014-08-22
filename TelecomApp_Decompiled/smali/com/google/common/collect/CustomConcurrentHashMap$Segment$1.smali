.class Lcom/google/common/collect/CustomConcurrentHashMap$Segment$1;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment;)V
    .locals 0

    .prologue
    .line 2831
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment.1;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$1;->this$1:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2834
    .local p0, "this":Lcom/google/common/collect/CustomConcurrentHashMap$Segment$1;, "Lcom/google/common/collect/CustomConcurrentHashMap$Segment.1;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$1;->this$1:Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->runCleanup()V

    .line 2835
    return-void
.end method
