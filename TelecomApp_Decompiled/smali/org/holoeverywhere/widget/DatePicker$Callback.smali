.class final Lorg/holoeverywhere/widget/DatePicker$Callback;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lorg/holoeverywhere/widget/CalendarView$OnDateChangeListener;
.implements Lorg/holoeverywhere/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/DatePicker;


# direct methods
.method private constructor <init>(Lorg/holoeverywhere/widget/DatePicker;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/widget/DatePicker;Lorg/holoeverywhere/widget/DatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/widget/DatePicker;
    .param p2, "x1"    # Lorg/holoeverywhere/widget/DatePicker$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/DatePicker$Callback;-><init>(Lorg/holoeverywhere/widget/DatePicker;)V

    return-void
.end method


# virtual methods
.method public onSelectedDayChange(Lorg/holoeverywhere/widget/CalendarView;III)V
    .locals 1
    .param p1, "view"    # Lorg/holoeverywhere/widget/CalendarView;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "monthDay"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # invokes: Lorg/holoeverywhere/widget/DatePicker;->setDate(III)V
    invoke-static {v0, p2, p3, p4}, Lorg/holoeverywhere/widget/DatePicker;->access$000(Lorg/holoeverywhere/widget/DatePicker;III)V

    .line 41
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # invokes: Lorg/holoeverywhere/widget/DatePicker;->updateSpinners()V
    invoke-static {v0}, Lorg/holoeverywhere/widget/DatePicker;->access$100(Lorg/holoeverywhere/widget/DatePicker;)V

    .line 42
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # invokes: Lorg/holoeverywhere/widget/DatePicker;->notifyDateChanged()V
    invoke-static {v0}, Lorg/holoeverywhere/widget/DatePicker;->access$200(Lorg/holoeverywhere/widget/DatePicker;)V

    .line 43
    return-void
.end method

.method public onValueChange(Lorg/holoeverywhere/widget/NumberPicker;II)V
    .locals 9
    .param p1, "picker"    # Lorg/holoeverywhere/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v8, 0xb

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 47
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # invokes: Lorg/holoeverywhere/widget/DatePicker;->updateInputState()V
    invoke-static {v1}, Lorg/holoeverywhere/widget/DatePicker;->access$300(Lorg/holoeverywhere/widget/DatePicker;)V

    .line 48
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # getter for: Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lorg/holoeverywhere/widget/DatePicker;->access$500(Lorg/holoeverywhere/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # getter for: Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;
    invoke-static {v2}, Lorg/holoeverywhere/widget/DatePicker;->access$400(Lorg/holoeverywhere/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 49
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # getter for: Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;
    invoke-static {v1}, Lorg/holoeverywhere/widget/DatePicker;->access$600(Lorg/holoeverywhere/widget/DatePicker;)Lorg/holoeverywhere/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 50
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # getter for: Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lorg/holoeverywhere/widget/DatePicker;->access$500(Lorg/holoeverywhere/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 52
    .local v0, "maxDayOfMonth":I
    if-ne p2, v0, :cond_1

    if-ne p3, v4, :cond_1

    .line 53
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # getter for: Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lorg/holoeverywhere/widget/DatePicker;->access$500(Lorg/holoeverywhere/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 72
    .end local v0    # "maxDayOfMonth":I
    :goto_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # getter for: Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lorg/holoeverywhere/widget/DatePicker;->access$500(Lorg/holoeverywhere/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # getter for: Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;
    invoke-static {v3}, Lorg/holoeverywhere/widget/DatePicker;->access$500(Lorg/holoeverywhere/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # getter for: Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;
    invoke-static {v4}, Lorg/holoeverywhere/widget/DatePicker;->access$500(Lorg/holoeverywhere/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    # invokes: Lorg/holoeverywhere/widget/DatePicker;->setDate(III)V
    invoke-static {v1, v2, v3, v4}, Lorg/holoeverywhere/widget/DatePicker;->access$000(Lorg/holoeverywhere/widget/DatePicker;III)V

    .line 74
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # invokes: Lorg/holoeverywhere/widget/DatePicker;->updateSpinners()V
    invoke-static {v1}, Lorg/holoeverywhere/widget/DatePicker;->access$100(Lorg/holoeverywhere/widget/DatePicker;)V

    .line 75
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # invokes: Lorg/holoeverywhere/widget/DatePicker;->updateCalendarView()V
    invoke-static {v1}, Lorg/holoeverywhere/widget/DatePicker;->access$900(Lorg/holoeverywhere/widget/DatePicker;)V

    .line 76
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # invokes: Lorg/holoeverywhere/widget/DatePicker;->notifyDateChanged()V
    invoke-static {v1}, Lorg/holoeverywhere/widget/DatePicker;->access$200(Lorg/holoeverywhere/widget/DatePicker;)V

    .line 77
    :cond_0
    return-void

    .line 54
    .restart local v0    # "maxDayOfMonth":I
    :cond_1
    if-ne p2, v4, :cond_2

    if-ne p3, v0, :cond_2

    .line 55
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # getter for: Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lorg/holoeverywhere/widget/DatePicker;->access$500(Lorg/holoeverywhere/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 57
    :cond_2
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # getter for: Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lorg/holoeverywhere/widget/DatePicker;->access$500(Lorg/holoeverywhere/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 59
    .end local v0    # "maxDayOfMonth":I
    :cond_3
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # getter for: Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;
    invoke-static {v1}, Lorg/holoeverywhere/widget/DatePicker;->access$700(Lorg/holoeverywhere/widget/DatePicker;)Lorg/holoeverywhere/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 60
    if-ne p2, v8, :cond_4

    if-nez p3, :cond_4

    .line 61
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # getter for: Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lorg/holoeverywhere/widget/DatePicker;->access$500(Lorg/holoeverywhere/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 62
    :cond_4
    if-nez p2, :cond_5

    if-ne p3, v8, :cond_5

    .line 63
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # getter for: Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lorg/holoeverywhere/widget/DatePicker;->access$500(Lorg/holoeverywhere/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 65
    :cond_5
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # getter for: Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lorg/holoeverywhere/widget/DatePicker;->access$500(Lorg/holoeverywhere/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 67
    :cond_6
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # getter for: Lorg/holoeverywhere/widget/DatePicker;->yearSpinner:Lorg/holoeverywhere/widget/NumberPicker;
    invoke-static {v1}, Lorg/holoeverywhere/widget/DatePicker;->access$800(Lorg/holoeverywhere/widget/DatePicker;)Lorg/holoeverywhere/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 68
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker$Callback;->this$0:Lorg/holoeverywhere/widget/DatePicker;

    # getter for: Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lorg/holoeverywhere/widget/DatePicker;->access$500(Lorg/holoeverywhere/widget/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4, p3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0
.end method
