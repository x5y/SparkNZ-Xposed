.class Lorg/holoeverywhere/widget/CalendarView$2;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/widget/CalendarView;->setUpListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/CalendarView;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/widget/CalendarView;)V
    .locals 0

    .prologue
    .line 886
    iput-object p1, p0, Lorg/holoeverywhere/widget/CalendarView$2;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 890
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView$2;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    # invokes: Lorg/holoeverywhere/widget/CalendarView;->onScroll(Landroid/widget/AbsListView;III)V
    invoke-static {v0, p1, p2, p3, p4}, Lorg/holoeverywhere/widget/CalendarView;->access$2800(Lorg/holoeverywhere/widget/CalendarView;Landroid/widget/AbsListView;III)V

    .line 892
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 896
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView$2;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    # invokes: Lorg/holoeverywhere/widget/CalendarView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
    invoke-static {v0, p1, p2}, Lorg/holoeverywhere/widget/CalendarView;->access$2900(Lorg/holoeverywhere/widget/CalendarView;Landroid/widget/AbsListView;I)V

    .line 897
    return-void
.end method
