.class public Lorg/holoeverywhere/widget/ExpandableListConnector$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/ExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/ExpandableListConnector;


# direct methods
.method protected constructor <init>(Lorg/holoeverywhere/widget/ExpandableListConnector;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lorg/holoeverywhere/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 83
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Lorg/holoeverywhere/widget/ExpandableListConnector;

    # invokes: Lorg/holoeverywhere/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V
    invoke-static {v0, v1, v1}, Lorg/holoeverywhere/widget/ExpandableListConnector;->access$000(Lorg/holoeverywhere/widget/ExpandableListConnector;ZZ)V

    .line 84
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 85
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 89
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Lorg/holoeverywhere/widget/ExpandableListConnector;

    # invokes: Lorg/holoeverywhere/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V
    invoke-static {v0, v1, v1}, Lorg/holoeverywhere/widget/ExpandableListConnector;->access$000(Lorg/holoeverywhere/widget/ExpandableListConnector;ZZ)V

    .line 90
    iget-object v0, p0, Lorg/holoeverywhere/widget/ExpandableListConnector$MyDataSetObserver;->this$0:Lorg/holoeverywhere/widget/ExpandableListConnector;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ExpandableListConnector;->notifyDataSetInvalidated()V

    .line 91
    return-void
.end method
