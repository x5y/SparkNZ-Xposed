.class public Lorg/holoeverywhere/app/TimePickerDialog;
.super Lorg/holoeverywhere/app/AlertDialog;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lorg/holoeverywhere/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/app/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mCallback:Lorg/holoeverywhere/app/TimePickerDialog$OnTimeSetListener;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mIs24HourView:Z

.field private final mTimePicker:Lorg/holoeverywhere/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/holoeverywhere/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lorg/holoeverywhere/app/TimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/holoeverywhere/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object p3, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mCallback:Lorg/holoeverywhere/app/TimePickerDialog$OnTimeSetListener;

    .line 35
    iput p4, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mInitialHourOfDay:I

    .line 36
    iput p5, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mInitialMinute:I

    .line 37
    iput-boolean p6, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mIs24HourView:Z

    .line 38
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/holoeverywhere/app/TimePickerDialog;->setIcon(I)V

    .line 39
    sget v2, Lorg/holoeverywhere/R$string;->time_picker_dialog_title:I

    invoke-virtual {p0, v2}, Lorg/holoeverywhere/app/TimePickerDialog;->setTitle(I)V

    .line 40
    invoke-virtual {p0}, Lorg/holoeverywhere/app/TimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    .local v0, "themeContext":Landroid/content/Context;
    const/4 v2, -0x1

    sget v3, Lorg/holoeverywhere/R$string;->date_time_set:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lorg/holoeverywhere/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 43
    const/4 v3, -0x2

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v2, 0x0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v2}, Lorg/holoeverywhere/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 46
    sget v2, Lorg/holoeverywhere/R$layout;->time_picker_dialog:I

    invoke-static {v0, v2}, Lorg/holoeverywhere/LayoutInflater;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/app/TimePickerDialog;->setView(Landroid/view/View;)V

    .line 49
    sget v2, Lorg/holoeverywhere/R$id;->timePicker:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/holoeverywhere/widget/TimePicker;

    iput-object v2, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mTimePicker:Lorg/holoeverywhere/widget/TimePicker;

    .line 50
    iget-object v2, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mTimePicker:Lorg/holoeverywhere/widget/TimePicker;

    iget-boolean v3, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mIs24HourView:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/holoeverywhere/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 51
    iget-object v2, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mTimePicker:Lorg/holoeverywhere/widget/TimePicker;

    iget v3, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/holoeverywhere/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 52
    iget-object v2, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mTimePicker:Lorg/holoeverywhere/widget/TimePicker;

    iget v3, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mInitialMinute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/holoeverywhere/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 53
    iget-object v2, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mTimePicker:Lorg/holoeverywhere/widget/TimePicker;

    invoke-virtual {v2, p0}, Lorg/holoeverywhere/widget/TimePicker;->setOnTimeChangedListener(Lorg/holoeverywhere/widget/TimePicker$OnTimeChangedListener;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/holoeverywhere/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lorg/holoeverywhere/app/TimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 58
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/holoeverywhere/app/TimePickerDialog;-><init>(Landroid/content/Context;ILorg/holoeverywhere/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 59
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mCallback:Lorg/holoeverywhere/app/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mTimePicker:Lorg/holoeverywhere/widget/TimePicker;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/TimePicker;->clearFocus()V

    .line 65
    iget-object v0, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mCallback:Lorg/holoeverywhere/app/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mTimePicker:Lorg/holoeverywhere/widget/TimePicker;

    iget-object v2, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mTimePicker:Lorg/holoeverywhere/widget/TimePicker;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mTimePicker:Lorg/holoeverywhere/widget/TimePicker;

    invoke-virtual {v3}, Lorg/holoeverywhere/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lorg/holoeverywhere/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lorg/holoeverywhere/widget/TimePicker;II)V

    .line 68
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lorg/holoeverywhere/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 73
    const-string v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, "hour":I
    const-string v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 75
    .local v1, "minute":I
    iget-object v2, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mTimePicker:Lorg/holoeverywhere/widget/TimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/holoeverywhere/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 77
    iget-object v2, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mTimePicker:Lorg/holoeverywhere/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/holoeverywhere/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 78
    iget-object v2, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mTimePicker:Lorg/holoeverywhere/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/holoeverywhere/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 79
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Lorg/holoeverywhere/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 84
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "hour"

    iget-object v2, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mTimePicker:Lorg/holoeverywhere/widget/TimePicker;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string v1, "minute"

    iget-object v2, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mTimePicker:Lorg/holoeverywhere/widget/TimePicker;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string v1, "is24hour"

    iget-object v2, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mTimePicker:Lorg/holoeverywhere/widget/TimePicker;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/TimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    return-object v0
.end method

.method public onTimeChanged(Lorg/holoeverywhere/widget/TimePicker;II)V
    .locals 0
    .param p1, "view"    # Lorg/holoeverywhere/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 93
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minutOfHour"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mTimePicker:Lorg/holoeverywhere/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 97
    iget-object v0, p0, Lorg/holoeverywhere/app/TimePickerDialog;->mTimePicker:Lorg/holoeverywhere/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 98
    return-void
.end method
