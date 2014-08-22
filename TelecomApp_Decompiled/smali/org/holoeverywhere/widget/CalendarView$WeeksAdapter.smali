.class Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeeksAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter$CalendarGestureListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mFocusedMonth:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mSelectedDate:Ljava/util/Calendar;

.field private mSelectedWeek:I

.field private mTotalWeekCount:I

.field final synthetic this$0:Lorg/holoeverywhere/widget/CalendarView;


# direct methods
.method public constructor <init>(Lorg/holoeverywhere/widget/CalendarView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    iput-object p1, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    .line 97
    iput-object p2, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->context:Landroid/content/Context;

    .line 98
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter$CalendarGestureListener;

    invoke-direct {v1, p0}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter$CalendarGestureListener;-><init>(Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;)V

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    .line 100
    invoke-direct {p0}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->init()V

    .line 101
    return-void
.end method

.method static synthetic access$2400(Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 145
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    # invokes: Lorg/holoeverywhere/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I
    invoke-static {v0, v1}, Lorg/holoeverywhere/widget/CalendarView;->access$400(Lorg/holoeverywhere/widget/CalendarView;Ljava/util/Calendar;)I

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mSelectedWeek:I

    .line 146
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    # getter for: Lorg/holoeverywhere/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;
    invoke-static {v1}, Lorg/holoeverywhere/widget/CalendarView;->access$500(Lorg/holoeverywhere/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v1

    # invokes: Lorg/holoeverywhere/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I
    invoke-static {v0, v1}, Lorg/holoeverywhere/widget/CalendarView;->access$400(Lorg/holoeverywhere/widget/CalendarView;Ljava/util/Calendar;)I

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mTotalWeekCount:I

    .line 147
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    # getter for: Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;
    invoke-static {v0}, Lorg/holoeverywhere/widget/CalendarView;->access$600(Lorg/holoeverywhere/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    # getter for: Lorg/holoeverywhere/widget/CalendarView;->mFirstDayOfWeek:I
    invoke-static {v1}, Lorg/holoeverywhere/widget/CalendarView;->access$700(Lorg/holoeverywhere/widget/CalendarView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    # getter for: Lorg/holoeverywhere/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;
    invoke-static {v0}, Lorg/holoeverywhere/widget/CalendarView;->access$500(Lorg/holoeverywhere/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    # getter for: Lorg/holoeverywhere/widget/CalendarView;->mFirstDayOfWeek:I
    invoke-static {v1}, Lorg/holoeverywhere/widget/CalendarView;->access$700(Lorg/holoeverywhere/widget/CalendarView;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 149
    :cond_0
    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mTotalWeekCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mTotalWeekCount:I

    .line 151
    :cond_1
    return-void
.end method

.method private onDateTapped(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 155
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    # invokes: Lorg/holoeverywhere/widget/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V
    invoke-static {v0, p1}, Lorg/holoeverywhere/widget/CalendarView;->access$800(Lorg/holoeverywhere/widget/CalendarView;Ljava/util/Calendar;)V

    .line 156
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mTotalWeekCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 115
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedDay()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, -0x2

    .line 124
    const/4 v2, 0x0

    .line 125
    .local v2, "weekView":Lorg/holoeverywhere/widget/CalendarView$WeekView;
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 126
    check-cast v2, Lorg/holoeverywhere/widget/CalendarView$WeekView;

    .line 137
    :goto_0
    iget v3, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mSelectedWeek:I

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 139
    .local v1, "selectedWeekDay":I
    :goto_1
    iget v3, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mFocusedMonth:I

    invoke-virtual {v2, p1, v1, v3}, Lorg/holoeverywhere/widget/CalendarView$WeekView;->init(III)V

    .line 141
    return-object v2

    .line 128
    .end local v1    # "selectedWeekDay":I
    :cond_0
    new-instance v2, Lorg/holoeverywhere/widget/CalendarView$WeekView;

    .end local v2    # "weekView":Lorg/holoeverywhere/widget/CalendarView$WeekView;
    iget-object v3, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    iget-object v4, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lorg/holoeverywhere/widget/CalendarView$WeekView;-><init>(Lorg/holoeverywhere/widget/CalendarView;Landroid/content/Context;)V

    .line 129
    .restart local v2    # "weekView":Lorg/holoeverywhere/widget/CalendarView$WeekView;
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 132
    .local v0, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v2, v0}, Lorg/holoeverywhere/widget/CalendarView$WeekView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/holoeverywhere/widget/CalendarView$WeekView;->setClickable(Z)V

    .line 134
    invoke-virtual {v2, p0}, Lorg/holoeverywhere/widget/CalendarView$WeekView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 137
    .end local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 160
    iget-object v2, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    # getter for: Lorg/holoeverywhere/widget/CalendarView;->mListView:Lorg/holoeverywhere/widget/ListView;
    invoke-static {v2}, Lorg/holoeverywhere/widget/CalendarView;->access$900(Lorg/holoeverywhere/widget/CalendarView;)Lorg/holoeverywhere/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/ListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 161
    check-cast v0, Lorg/holoeverywhere/widget/CalendarView$WeekView;

    .line 162
    .local v0, "weekView":Lorg/holoeverywhere/widget/CalendarView$WeekView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    # getter for: Lorg/holoeverywhere/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Lorg/holoeverywhere/widget/CalendarView;->access$1000(Lorg/holoeverywhere/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/holoeverywhere/widget/CalendarView$WeekView;->getDayFromLocation(FLjava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 171
    .end local v0    # "weekView":Lorg/holoeverywhere/widget/CalendarView$WeekView;
    :cond_0
    :goto_0
    return v1

    .line 165
    .restart local v0    # "weekView":Lorg/holoeverywhere/widget/CalendarView$WeekView;
    :cond_1
    iget-object v2, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    # getter for: Lorg/holoeverywhere/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lorg/holoeverywhere/widget/CalendarView;->access$1000(Lorg/holoeverywhere/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    # getter for: Lorg/holoeverywhere/widget/CalendarView;->mMinDate:Ljava/util/Calendar;
    invoke-static {v3}, Lorg/holoeverywhere/widget/CalendarView;->access$600(Lorg/holoeverywhere/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    # getter for: Lorg/holoeverywhere/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lorg/holoeverywhere/widget/CalendarView;->access$1000(Lorg/holoeverywhere/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    # getter for: Lorg/holoeverywhere/widget/CalendarView;->mMaxDate:Ljava/util/Calendar;
    invoke-static {v3}, Lorg/holoeverywhere/widget/CalendarView;->access$500(Lorg/holoeverywhere/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    iget-object v2, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    # getter for: Lorg/holoeverywhere/widget/CalendarView;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lorg/holoeverywhere/widget/CalendarView;->access$1000(Lorg/holoeverywhere/widget/CalendarView;)Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->onDateTapped(Ljava/util/Calendar;)V

    goto :goto_0

    .line 171
    .end local v0    # "weekView":Lorg/holoeverywhere/widget/CalendarView$WeekView;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFocusMonth(I)V
    .locals 1
    .param p1, "month"    # I

    .prologue
    .line 175
    iget v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mFocusedMonth:I

    if-ne v0, p1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iput p1, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mFocusedMonth:I

    .line 179
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setSelectedDay(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "selectedDay"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 183
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 190
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->this$0:Lorg/holoeverywhere/widget/CalendarView;

    iget-object v1, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    # invokes: Lorg/holoeverywhere/widget/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I
    invoke-static {v0, v1}, Lorg/holoeverywhere/widget/CalendarView;->access$400(Lorg/holoeverywhere/widget/CalendarView;Ljava/util/Calendar;)I

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mSelectedWeek:I

    .line 191
    iget-object v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->mFocusedMonth:I

    .line 192
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
