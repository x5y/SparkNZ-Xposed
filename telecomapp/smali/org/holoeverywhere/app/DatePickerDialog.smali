.class public Lorg/holoeverywhere/app/DatePickerDialog;
.super Lorg/holoeverywhere/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lorg/holoeverywhere/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/app/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lorg/holoeverywhere/app/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lorg/holoeverywhere/widget/DatePicker;

.field private mTitleNeedsUpdate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/holoeverywhere/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lorg/holoeverywhere/app/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/holoeverywhere/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 32
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    .line 38
    iput-object p3, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mCallBack:Lorg/holoeverywhere/app/DatePickerDialog$OnDateSetListener;

    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 40
    const/4 v2, -0x1

    invoke-virtual {p0}, Lorg/holoeverywhere/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/holoeverywhere/R$string;->date_time_done:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lorg/holoeverywhere/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 42
    const/4 v2, -0x2

    invoke-virtual {p0}, Lorg/holoeverywhere/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lorg/holoeverywhere/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 44
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/holoeverywhere/app/DatePickerDialog;->setIcon(I)V

    .line 45
    invoke-virtual {p0}, Lorg/holoeverywhere/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/holoeverywhere/LayoutInflater;->from(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    .line 46
    .local v0, "inflater":Lorg/holoeverywhere/LayoutInflater;
    sget v2, Lorg/holoeverywhere/R$layout;->date_picker_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/app/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 48
    sget v2, Lorg/holoeverywhere/R$id;->datePicker:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/holoeverywhere/widget/DatePicker;

    iput-object v2, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mDatePicker:Lorg/holoeverywhere/widget/DatePicker;

    .line 49
    iget-object v2, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mDatePicker:Lorg/holoeverywhere/widget/DatePicker;

    invoke-virtual {v2, p4, p5, p6, p0}, Lorg/holoeverywhere/widget/DatePicker;->init(IIILorg/holoeverywhere/widget/DatePicker$OnDateChangedListener;)V

    .line 50
    invoke-direct {p0, p4, p5, p6}, Lorg/holoeverywhere/app/DatePickerDialog;->updateTitle(III)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/holoeverywhere/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lorg/holoeverywhere/app/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 55
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/holoeverywhere/app/DatePickerDialog;-><init>(Landroid/content/Context;ILorg/holoeverywhere/app/DatePickerDialog$OnDateSetListener;III)V

    .line 56
    return-void
.end method

.method private tryNotifyDateSet()V
    .locals 5

    .prologue
    .line 94
    iget-object v0, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mCallBack:Lorg/holoeverywhere/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mDatePicker:Lorg/holoeverywhere/widget/DatePicker;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/DatePicker;->clearFocus()V

    .line 96
    iget-object v0, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mCallBack:Lorg/holoeverywhere/app/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mDatePicker:Lorg/holoeverywhere/widget/DatePicker;

    iget-object v2, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mDatePicker:Lorg/holoeverywhere/widget/DatePicker;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mDatePicker:Lorg/holoeverywhere/widget/DatePicker;

    invoke-virtual {v3}, Lorg/holoeverywhere/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mDatePicker:Lorg/holoeverywhere/widget/DatePicker;

    invoke-virtual {v4}, Lorg/holoeverywhere/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/holoeverywhere/app/DatePickerDialog$OnDateSetListener;->onDateSet(Lorg/holoeverywhere/widget/DatePicker;III)V

    .line 99
    :cond_0
    return-void
.end method

.method private updateTitle(III)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v5, 0x1

    .line 106
    iget-object v1, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mDatePicker:Lorg/holoeverywhere/widget/DatePicker;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/DatePicker;->getCalendarViewShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    iget-object v1, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v5, p1}, Ljava/util/Calendar;->set(II)V

    .line 108
    iget-object v1, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 109
    iget-object v1, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 110
    invoke-virtual {p0}, Lorg/holoeverywhere/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const v4, 0x18016

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    iput-boolean v5, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    .line 124
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-boolean v1, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    if-eqz v1, :cond_0

    .line 120
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    .line 121
    sget v1, Lorg/holoeverywhere/R$string;->date_picker_dialog_title:I

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/app/DatePickerDialog;->setTitle(I)V

    goto :goto_0
.end method


# virtual methods
.method public getDatePicker()Lorg/holoeverywhere/widget/DatePicker;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mDatePicker:Lorg/holoeverywhere/widget/DatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 64
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 65
    invoke-direct {p0}, Lorg/holoeverywhere/app/DatePickerDialog;->tryNotifyDateSet()V

    .line 67
    :cond_0
    return-void
.end method

.method public onDateChanged(Lorg/holoeverywhere/widget/DatePicker;III)V
    .locals 1
    .param p1, "view"    # Lorg/holoeverywhere/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mDatePicker:Lorg/holoeverywhere/widget/DatePicker;

    invoke-virtual {v0, p2, p3, p4, p0}, Lorg/holoeverywhere/widget/DatePicker;->init(IIILorg/holoeverywhere/widget/DatePicker$OnDateChangedListener;)V

    .line 72
    invoke-direct {p0, p2, p3, p4}, Lorg/holoeverywhere/app/DatePickerDialog;->updateTitle(III)V

    .line 73
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lorg/holoeverywhere/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 78
    const-string v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 79
    .local v2, "year":I
    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 80
    .local v1, "month":I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, "day":I
    iget-object v3, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mDatePicker:Lorg/holoeverywhere/widget/DatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lorg/holoeverywhere/widget/DatePicker;->init(IIILorg/holoeverywhere/widget/DatePicker$OnDateChangedListener;)V

    .line 82
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Lorg/holoeverywhere/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mDatePicker:Lorg/holoeverywhere/widget/DatePicker;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v1, "month"

    iget-object v2, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mDatePicker:Lorg/holoeverywhere/widget/DatePicker;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    const-string v1, "day"

    iget-object v2, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mDatePicker:Lorg/holoeverywhere/widget/DatePicker;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    return-object v0
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lorg/holoeverywhere/app/DatePickerDialog;->mDatePicker:Lorg/holoeverywhere/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lorg/holoeverywhere/widget/DatePicker;->updateDate(III)V

    .line 103
    return-void
.end method
