.class Lorg/holoeverywhere/widget/TimePicker$3;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lorg/holoeverywhere/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/widget/TimePicker;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/widget/TimePicker;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lorg/holoeverywhere/widget/TimePicker$3;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lorg/holoeverywhere/widget/NumberPicker;II)V
    .locals 7
    .param p1, "spinner"    # Lorg/holoeverywhere/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 165
    iget-object v5, p0, Lorg/holoeverywhere/widget/TimePicker$3;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    # invokes: Lorg/holoeverywhere/widget/TimePicker;->updateInputState()V
    invoke-static {v5}, Lorg/holoeverywhere/widget/TimePicker;->access$100(Lorg/holoeverywhere/widget/TimePicker;)V

    .line 166
    iget-object v5, p0, Lorg/holoeverywhere/widget/TimePicker$3;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    # getter for: Lorg/holoeverywhere/widget/TimePicker;->mMinuteSpinner:Lorg/holoeverywhere/widget/NumberPicker;
    invoke-static {v5}, Lorg/holoeverywhere/widget/TimePicker;->access$500(Lorg/holoeverywhere/widget/TimePicker;)Lorg/holoeverywhere/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Lorg/holoeverywhere/widget/NumberPicker;->getMinValue()I

    move-result v1

    .line 167
    .local v1, "minValue":I
    iget-object v5, p0, Lorg/holoeverywhere/widget/TimePicker$3;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    # getter for: Lorg/holoeverywhere/widget/TimePicker;->mMinuteSpinner:Lorg/holoeverywhere/widget/NumberPicker;
    invoke-static {v5}, Lorg/holoeverywhere/widget/TimePicker;->access$500(Lorg/holoeverywhere/widget/TimePicker;)Lorg/holoeverywhere/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Lorg/holoeverywhere/widget/NumberPicker;->getMaxValue()I

    move-result v0

    .line 168
    .local v0, "maxValue":I
    if-ne p2, v0, :cond_3

    if-ne p3, v1, :cond_3

    .line 169
    iget-object v5, p0, Lorg/holoeverywhere/widget/TimePicker$3;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    # getter for: Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;
    invoke-static {v5}, Lorg/holoeverywhere/widget/TimePicker;->access$600(Lorg/holoeverywhere/widget/TimePicker;)Lorg/holoeverywhere/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Lorg/holoeverywhere/widget/NumberPicker;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 170
    .local v2, "newHour":I
    iget-object v5, p0, Lorg/holoeverywhere/widget/TimePicker$3;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    invoke-virtual {v5}, Lorg/holoeverywhere/widget/TimePicker;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0xc

    if-ne v2, v5, :cond_0

    .line 172
    iget-object v5, p0, Lorg/holoeverywhere/widget/TimePicker$3;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    iget-object v6, p0, Lorg/holoeverywhere/widget/TimePicker$3;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    # getter for: Lorg/holoeverywhere/widget/TimePicker;->mIsAm:Z
    invoke-static {v6}, Lorg/holoeverywhere/widget/TimePicker;->access$200(Lorg/holoeverywhere/widget/TimePicker;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_0
    # setter for: Lorg/holoeverywhere/widget/TimePicker;->mIsAm:Z
    invoke-static {v5, v3}, Lorg/holoeverywhere/widget/TimePicker;->access$202(Lorg/holoeverywhere/widget/TimePicker;Z)Z

    .line 173
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker$3;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    # invokes: Lorg/holoeverywhere/widget/TimePicker;->updateAmPmControl()V
    invoke-static {v3}, Lorg/holoeverywhere/widget/TimePicker;->access$300(Lorg/holoeverywhere/widget/TimePicker;)V

    .line 175
    :cond_0
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker$3;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    # getter for: Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;
    invoke-static {v3}, Lorg/holoeverywhere/widget/TimePicker;->access$600(Lorg/holoeverywhere/widget/TimePicker;)Lorg/holoeverywhere/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setValue(I)V

    .line 185
    .end local v2    # "newHour":I
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker$3;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    # invokes: Lorg/holoeverywhere/widget/TimePicker;->onTimeChanged()V
    invoke-static {v3}, Lorg/holoeverywhere/widget/TimePicker;->access$400(Lorg/holoeverywhere/widget/TimePicker;)V

    .line 186
    return-void

    .restart local v2    # "newHour":I
    :cond_2
    move v3, v4

    .line 172
    goto :goto_0

    .line 176
    .end local v2    # "newHour":I
    :cond_3
    if-ne p2, v1, :cond_1

    if-ne p3, v0, :cond_1

    .line 177
    iget-object v5, p0, Lorg/holoeverywhere/widget/TimePicker$3;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    # getter for: Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;
    invoke-static {v5}, Lorg/holoeverywhere/widget/TimePicker;->access$600(Lorg/holoeverywhere/widget/TimePicker;)Lorg/holoeverywhere/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Lorg/holoeverywhere/widget/NumberPicker;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 178
    .restart local v2    # "newHour":I
    iget-object v5, p0, Lorg/holoeverywhere/widget/TimePicker$3;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    invoke-virtual {v5}, Lorg/holoeverywhere/widget/TimePicker;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0xb

    if-ne v2, v5, :cond_4

    .line 180
    iget-object v5, p0, Lorg/holoeverywhere/widget/TimePicker$3;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    iget-object v6, p0, Lorg/holoeverywhere/widget/TimePicker$3;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    # getter for: Lorg/holoeverywhere/widget/TimePicker;->mIsAm:Z
    invoke-static {v6}, Lorg/holoeverywhere/widget/TimePicker;->access$200(Lorg/holoeverywhere/widget/TimePicker;)Z

    move-result v6

    if-nez v6, :cond_5

    :goto_2
    # setter for: Lorg/holoeverywhere/widget/TimePicker;->mIsAm:Z
    invoke-static {v5, v3}, Lorg/holoeverywhere/widget/TimePicker;->access$202(Lorg/holoeverywhere/widget/TimePicker;Z)Z

    .line 181
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker$3;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    # invokes: Lorg/holoeverywhere/widget/TimePicker;->updateAmPmControl()V
    invoke-static {v3}, Lorg/holoeverywhere/widget/TimePicker;->access$300(Lorg/holoeverywhere/widget/TimePicker;)V

    .line 183
    :cond_4
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker$3;->this$0:Lorg/holoeverywhere/widget/TimePicker;

    # getter for: Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;
    invoke-static {v3}, Lorg/holoeverywhere/widget/TimePicker;->access$600(Lorg/holoeverywhere/widget/TimePicker;)Lorg/holoeverywhere/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setValue(I)V

    goto :goto_1

    :cond_5
    move v3, v4

    .line 180
    goto :goto_2
.end method
