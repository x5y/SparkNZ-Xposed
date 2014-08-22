.class public Lorg/holoeverywhere/widget/ExpandableListView$ExpandableListContextMenuInfo;
.super Ljava/lang/Object;
.source "ExpandableListView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/ExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandableListContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public packedPosition:J

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;JJ)V
    .locals 0
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "packedPosition"    # J
    .param p4, "id"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/holoeverywhere/widget/ExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    .line 36
    iput-wide p2, p0, Lorg/holoeverywhere/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    .line 37
    iput-wide p4, p0, Lorg/holoeverywhere/widget/ExpandableListView$ExpandableListContextMenuInfo;->id:J

    .line 38
    return-void
.end method
