.class Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field private mView:Landroid/widget/AbsListView;

.field final synthetic this$0:Lorg/holoeverywhere/widget/CalendarView;


# direct methods
.method private constructor <init>(Lorg/holoeverywhere/widget/CalendarView;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/widget/CalendarView;Lorg/holoeverywhere/widget/CalendarView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/widget/CalendarView;
    .param p2, "x1"    # Lorg/holoeverywhere/widget/CalendarView$1;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;-><init>(Lorg/holoeverywhere/widget/CalendarView;)V

    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 49
    iput-object p1, p0, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    .line 50
    iput p2, p0, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    .line 51
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    invoke-virtual {v0, p0}, Lorg/holoeverywhere/widget/CalendarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 52
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Lorg/holoeverywhere/widget/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    return-void
.end method

.method public run()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 58
    iget-object v3, p0, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    iget v5, p0, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    # setter for: Lorg/holoeverywhere/widget/CalendarView;->mCurrentScrollState:I
    invoke-static {v3, v5}, Lorg/holoeverywhere/widget/CalendarView;->access$002(Lorg/holoeverywhere/widget/CalendarView;I)I

    .line 59
    iget v3, p0, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    # getter for: Lorg/holoeverywhere/widget/CalendarView;->mPreviousScrollState:I
    invoke-static {v3}, Lorg/holoeverywhere/widget/CalendarView;->access$100(Lorg/holoeverywhere/widget/CalendarView;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    iget-object v3, p0, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    .line 77
    .end local v0    # "child":Landroid/view/View;
    :goto_0
    return-void

    .line 65
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v5, p0, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    # getter for: Lorg/holoeverywhere/widget/CalendarView;->mListScrollTopOffset:I
    invoke-static {v5}, Lorg/holoeverywhere/widget/CalendarView;->access$200(Lorg/holoeverywhere/widget/CalendarView;)I

    move-result v5

    sub-int v1, v3, v5

    .line 66
    .local v1, "dist":I
    iget-object v3, p0, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    # getter for: Lorg/holoeverywhere/widget/CalendarView;->mListScrollTopOffset:I
    invoke-static {v3}, Lorg/holoeverywhere/widget/CalendarView;->access$200(Lorg/holoeverywhere/widget/CalendarView;)I

    move-result v3

    if-le v1, v3, :cond_1

    .line 67
    iget-object v3, p0, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    # getter for: Lorg/holoeverywhere/widget/CalendarView;->mIsScrollingUp:Z
    invoke-static {v3}, Lorg/holoeverywhere/widget/CalendarView;->access$300(Lorg/holoeverywhere/widget/CalendarView;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    :goto_1
    sub-int v2, v1, v3

    .line 68
    .local v2, "y":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v3, v5, :cond_3

    .line 69
    iget-object v3, p0, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 76
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "dist":I
    .end local v2    # "y":I
    :cond_1
    :goto_2
    iget-object v3, p0, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    iget v4, p0, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    # setter for: Lorg/holoeverywhere/widget/CalendarView;->mPreviousScrollState:I
    invoke-static {v3, v4}, Lorg/holoeverywhere/widget/CalendarView;->access$102(Lorg/holoeverywhere/widget/CalendarView;I)I

    goto :goto_0

    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "dist":I
    :cond_2
    move v3, v4

    .line 67
    goto :goto_1

    .line 72
    .restart local v2    # "y":I
    :cond_3
    iget-object v3, p0, Lorg/holoeverywhere/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/AbsListView;->scrollBy(II)V

    goto :goto_2
.end method
