.class public Lorg/holoeverywhere/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/TimePicker$SavedState;,
        Lorg/holoeverywhere/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final NO_OP_CHANGE_LISTENER:Lorg/holoeverywhere/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Lorg/holoeverywhere/widget/NumberPicker;

.field private final mAmPmSpinnerInput:Lorg/holoeverywhere/internal/NumberPickerEditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDivider:Lorg/holoeverywhere/widget/TextView;

.field private final mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;

.field private final mHourSpinnerInput:Lorg/holoeverywhere/internal/NumberPickerEditText;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lorg/holoeverywhere/widget/NumberPicker;

.field private final mMinuteSpinnerInput:Lorg/holoeverywhere/internal/NumberPickerEditText;

.field private mOnTimeChangedListener:Lorg/holoeverywhere/widget/TimePicker$OnTimeChangedListener;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lorg/holoeverywhere/widget/TimePicker$1;

    invoke-direct {v0}, Lorg/holoeverywhere/widget/TimePicker$1;-><init>()V

    sput-object v0, Lorg/holoeverywhere/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lorg/holoeverywhere/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    sget v0, Lorg/holoeverywhere/R$attr;->timePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    iput-boolean v7, p0, Lorg/holoeverywhere/widget/TimePicker;->mIsEnabled:Z

    .line 122
    iput-object p1, p0, Lorg/holoeverywhere/widget/TimePicker;->mContext:Landroid/content/Context;

    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/holoeverywhere/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 124
    sget-object v3, Lorg/holoeverywhere/R$styleable;->TimePicker:[I

    sget v4, Lorg/holoeverywhere/R$style;->Holo_TimePicker:I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 126
    .local v1, "attributesArray":Landroid/content/res/TypedArray;
    sget v3, Lorg/holoeverywhere/R$layout;->time_picker_holo:I

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 128
    .local v2, "layoutResourceId":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p0, v7}, Lorg/holoeverywhere/LayoutInflater;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 130
    sget v3, Lorg/holoeverywhere/R$id;->hour:I

    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/holoeverywhere/widget/NumberPicker;

    iput-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    .line 131
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    new-instance v4, Lorg/holoeverywhere/widget/TimePicker$2;

    invoke-direct {v4, p0}, Lorg/holoeverywhere/widget/TimePicker$2;-><init>(Lorg/holoeverywhere/widget/TimePicker;)V

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/widget/NumberPicker;->setOnValueChangedListener(Lorg/holoeverywhere/widget/NumberPicker$OnValueChangeListener;)V

    .line 149
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v3}, Lorg/holoeverywhere/widget/NumberPicker;->getInputField()Lorg/holoeverywhere/internal/NumberPickerEditText;

    move-result-object v3

    iput-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinnerInput:Lorg/holoeverywhere/internal/NumberPickerEditText;

    .line 150
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinnerInput:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v3, v9}, Lorg/holoeverywhere/internal/NumberPickerEditText;->setImeOptions(I)V

    .line 151
    sget v3, Lorg/holoeverywhere/R$id;->divider:I

    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/holoeverywhere/widget/TextView;

    iput-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mDivider:Lorg/holoeverywhere/widget/TextView;

    .line 152
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mDivider:Lorg/holoeverywhere/widget/TextView;

    if-eqz v3, :cond_0

    .line 153
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mDivider:Lorg/holoeverywhere/widget/TextView;

    sget v4, Lorg/holoeverywhere/R$string;->time_picker_separator:I

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/widget/TextView;->setText(I)V

    .line 155
    :cond_0
    sget v3, Lorg/holoeverywhere/R$id;->minute:I

    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/holoeverywhere/widget/NumberPicker;

    iput-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mMinuteSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    .line 156
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mMinuteSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v3, v6}, Lorg/holoeverywhere/widget/NumberPicker;->setMinValue(I)V

    .line 157
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mMinuteSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/widget/NumberPicker;->setMaxValue(I)V

    .line 158
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mMinuteSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lorg/holoeverywhere/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 159
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mMinuteSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    sget-object v4, Lorg/holoeverywhere/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lorg/holoeverywhere/widget/NumberPicker$Formatter;

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/widget/NumberPicker;->setFormatter(Lorg/holoeverywhere/widget/NumberPicker$Formatter;)V

    .line 160
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mMinuteSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    new-instance v4, Lorg/holoeverywhere/widget/TimePicker$3;

    invoke-direct {v4, p0}, Lorg/holoeverywhere/widget/TimePicker$3;-><init>(Lorg/holoeverywhere/widget/TimePicker;)V

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/widget/NumberPicker;->setOnValueChangedListener(Lorg/holoeverywhere/widget/NumberPicker$OnValueChangeListener;)V

    .line 188
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mMinuteSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v3}, Lorg/holoeverywhere/widget/NumberPicker;->getInputField()Lorg/holoeverywhere/internal/NumberPickerEditText;

    move-result-object v3

    iput-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mMinuteSpinnerInput:Lorg/holoeverywhere/internal/NumberPickerEditText;

    .line 189
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mMinuteSpinnerInput:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v3, v9}, Lorg/holoeverywhere/internal/NumberPickerEditText;->setImeOptions(I)V

    .line 190
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    .line 191
    sget v3, Lorg/holoeverywhere/R$id;->amPm:I

    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 192
    .local v0, "amPmView":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/Button;

    if-eqz v3, :cond_2

    .line 193
    iput-object v8, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    .line 194
    iput-object v8, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinnerInput:Lorg/holoeverywhere/internal/NumberPickerEditText;

    .line 195
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "amPmView":Landroid/view/View;
    iput-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 196
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v4, Lorg/holoeverywhere/widget/TimePicker$4;

    invoke-direct {v4, p0}, Lorg/holoeverywhere/widget/TimePicker$4;-><init>(Lorg/holoeverywhere/widget/TimePicker;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    :goto_0
    invoke-direct {p0}, Lorg/holoeverywhere/widget/TimePicker;->updateHourControl()V

    .line 227
    invoke-direct {p0}, Lorg/holoeverywhere/widget/TimePicker;->updateAmPmControl()V

    .line 228
    sget-object v3, Lorg/holoeverywhere/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Lorg/holoeverywhere/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/TimePicker;->setOnTimeChangedListener(Lorg/holoeverywhere/widget/TimePicker$OnTimeChangedListener;)V

    .line 229
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 230
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/holoeverywhere/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 231
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/TimePicker;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 232
    invoke-virtual {p0, v6}, Lorg/holoeverywhere/widget/TimePicker;->setEnabled(Z)V

    .line 234
    :cond_1
    invoke-direct {p0}, Lorg/holoeverywhere/widget/TimePicker;->setContentDescriptions()V

    .line 235
    return-void

    .line 206
    .restart local v0    # "amPmView":Landroid/view/View;
    :cond_2
    iput-object v8, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 207
    check-cast v0, Lorg/holoeverywhere/widget/NumberPicker;

    .end local v0    # "amPmView":Landroid/view/View;
    iput-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    .line 208
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v3, v6}, Lorg/holoeverywhere/widget/NumberPicker;->setMinValue(I)V

    .line 209
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v3, v7}, Lorg/holoeverywhere/widget/NumberPicker;->setMaxValue(I)V

    .line 210
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v4, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 211
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    new-instance v4, Lorg/holoeverywhere/widget/TimePicker$5;

    invoke-direct {v4, p0}, Lorg/holoeverywhere/widget/TimePicker$5;-><init>(Lorg/holoeverywhere/widget/TimePicker;)V

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/widget/NumberPicker;->setOnValueChangedListener(Lorg/holoeverywhere/widget/NumberPicker$OnValueChangeListener;)V

    .line 223
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v3}, Lorg/holoeverywhere/widget/NumberPicker;->getInputField()Lorg/holoeverywhere/internal/NumberPickerEditText;

    move-result-object v3

    iput-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinnerInput:Lorg/holoeverywhere/internal/NumberPickerEditText;

    .line 224
    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinnerInput:Lorg/holoeverywhere/internal/NumberPickerEditText;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/internal/NumberPickerEditText;->setImeOptions(I)V

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/holoeverywhere/widget/TimePicker;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/TimePicker;

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/holoeverywhere/widget/TimePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$200(Lorg/holoeverywhere/widget/TimePicker;)Z
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/TimePicker;

    .prologue
    .line 28
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$202(Lorg/holoeverywhere/widget/TimePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/TimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$300(Lorg/holoeverywhere/widget/TimePicker;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/TimePicker;

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/holoeverywhere/widget/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$400(Lorg/holoeverywhere/widget/TimePicker;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/TimePicker;

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/holoeverywhere/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$500(Lorg/holoeverywhere/widget/TimePicker;)Lorg/holoeverywhere/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/TimePicker;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mMinuteSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Lorg/holoeverywhere/widget/TimePicker;)Lorg/holoeverywhere/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/TimePicker;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    return-object v0
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 317
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 318
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mOnTimeChangedListener:Lorg/holoeverywhere/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mOnTimeChangedListener:Lorg/holoeverywhere/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lorg/holoeverywhere/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Lorg/holoeverywhere/widget/TimePicker;II)V

    .line 322
    :cond_0
    return-void
.end method

.method private static setContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "childId"    # I
    .param p2, "textId"    # I

    .prologue
    .line 87
    if-nez p0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setContentDescriptions()V
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mMinuteSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    sget v1, Lorg/holoeverywhere/R$id;->increment:I

    sget v2, Lorg/holoeverywhere/R$string;->time_picker_increment_minute_button:I

    invoke-static {v0, v1, v2}, Lorg/holoeverywhere/widget/TimePicker;->setContentDescription(Landroid/view/View;II)V

    .line 327
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mMinuteSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    sget v1, Lorg/holoeverywhere/R$id;->decrement:I

    sget v2, Lorg/holoeverywhere/R$string;->time_picker_decrement_minute_button:I

    invoke-static {v0, v1, v2}, Lorg/holoeverywhere/widget/TimePicker;->setContentDescription(Landroid/view/View;II)V

    .line 329
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    sget v1, Lorg/holoeverywhere/R$id;->increment:I

    sget v2, Lorg/holoeverywhere/R$string;->time_picker_increment_hour_button:I

    invoke-static {v0, v1, v2}, Lorg/holoeverywhere/widget/TimePicker;->setContentDescription(Landroid/view/View;II)V

    .line 331
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    sget v1, Lorg/holoeverywhere/R$id;->decrement:I

    sget v2, Lorg/holoeverywhere/R$string;->time_picker_decrement_hour_button:I

    invoke-static {v0, v1, v2}, Lorg/holoeverywhere/widget/TimePicker;->setContentDescription(Landroid/view/View;II)V

    .line 333
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    sget v1, Lorg/holoeverywhere/R$id;->increment:I

    sget v2, Lorg/holoeverywhere/R$string;->time_picker_increment_set_pm_button:I

    invoke-static {v0, v1, v2}, Lorg/holoeverywhere/widget/TimePicker;->setContentDescription(Landroid/view/View;II)V

    .line 336
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    sget v1, Lorg/holoeverywhere/R$id;->decrement:I

    sget v2, Lorg/holoeverywhere/R$string;->time_picker_decrement_set_am_button:I

    invoke-static {v0, v1, v2}, Lorg/holoeverywhere/widget/TimePicker;->setContentDescription(Landroid/view/View;II)V

    .line 339
    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 364
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    iput-object p1, p0, Lorg/holoeverywhere/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 368
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private updateAmPmControl()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 415
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/TimePicker;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 416
    iget-object v1, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v1, v3}, Lorg/holoeverywhere/widget/NumberPicker;->setVisibility(I)V

    .line 431
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 432
    return-void

    .line 419
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 422
    :cond_1
    iget-boolean v2, p0, Lorg/holoeverywhere/widget/TimePicker;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 423
    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    if-eqz v2, :cond_3

    .line 424
    iget-object v2, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v2, v0}, Lorg/holoeverywhere/widget/NumberPicker;->setValue(I)V

    .line 425
    iget-object v2, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v2, v1}, Lorg/holoeverywhere/widget/NumberPicker;->setVisibility(I)V

    goto :goto_0

    .line 422
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 427
    .restart local v0    # "index":I
    :cond_3
    iget-object v2, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v2, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHourControl()V
    .locals 2

    .prologue
    .line 435
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/NumberPicker;->setMinValue(I)V

    .line 437
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/NumberPicker;->setMaxValue(I)V

    .line 438
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    sget-object v1, Lorg/holoeverywhere/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lorg/holoeverywhere/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/NumberPicker;->setFormatter(Lorg/holoeverywhere/widget/NumberPicker$Formatter;)V

    .line 444
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/NumberPicker;->setMinValue(I)V

    .line 441
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/NumberPicker;->setMaxValue(I)V

    .line 442
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/NumberPicker;->setFormatter(Lorg/holoeverywhere/widget/NumberPicker$Formatter;)V

    goto :goto_0
.end method

.method private updateInputState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 447
    iget-object v1, p0, Lorg/holoeverywhere/widget/TimePicker;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 449
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 450
    iget-object v1, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinnerInput:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinnerInput:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v1}, Lorg/holoeverywhere/internal/NumberPickerEditText;->clearFocus()V

    .line 452
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v1, p0, Lorg/holoeverywhere/widget/TimePicker;->mMinuteSpinnerInput:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 454
    iget-object v1, p0, Lorg/holoeverywhere/widget/TimePicker;->mMinuteSpinnerInput:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v1}, Lorg/holoeverywhere/internal/NumberPickerEditText;->clearFocus()V

    .line 455
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 456
    :cond_2
    iget-object v1, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinnerInput:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinnerInput:Lorg/holoeverywhere/internal/NumberPickerEditText;

    invoke-virtual {v1}, Lorg/holoeverywhere/internal/NumberPickerEditText;->clearFocus()V

    .line 458
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 241
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/TimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 242
    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 254
    iget-object v1, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v1}, Lorg/holoeverywhere/widget/NumberPicker;->getValue()I

    move-result v0

    .line 255
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/TimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 260
    :goto_0
    return-object v1

    .line 257
    :cond_0
    iget-boolean v1, p0, Lorg/holoeverywhere/widget/TimePicker;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 258
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 260
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mMinuteSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 281
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 282
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 283
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 289
    const/4 v0, 0x1

    .line 290
    .local v0, "flags":I
    iget-boolean v2, p0, Lorg/holoeverywhere/widget/TimePicker;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 291
    or-int/lit16 v0, v0, 0x80

    .line 295
    :goto_0
    iget-object v2, p0, Lorg/holoeverywhere/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 296
    iget-object v2, p0, Lorg/holoeverywhere/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 297
    iget-object v2, p0, Lorg/holoeverywhere/widget/TimePicker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/holoeverywhere/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    return-void

    .line 293
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 304
    move-object v0, p1

    check-cast v0, Lorg/holoeverywhere/widget/TimePicker$SavedState;

    .line 305
    .local v0, "ss":Lorg/holoeverywhere/widget/TimePicker$SavedState;
    invoke-virtual {v0}, Lorg/holoeverywhere/widget/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 306
    invoke-virtual {v0}, Lorg/holoeverywhere/widget/TimePicker$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 307
    invoke-virtual {v0}, Lorg/holoeverywhere/widget/TimePicker$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 308
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 312
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 313
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lorg/holoeverywhere/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/holoeverywhere/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILorg/holoeverywhere/widget/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    const/16 v1, 0xc

    .line 342
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 346
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mIsAm:Z

    .line 348
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 349
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 357
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/holoeverywhere/widget/TimePicker;->updateAmPmControl()V

    .line 359
    :cond_3
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/NumberPicker;->setValue(I)V

    .line 360
    invoke-direct {p0}, Lorg/holoeverywhere/widget/TimePicker;->onTimeChanged()V

    goto :goto_0

    .line 352
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mIsAm:Z

    .line 353
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 354
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 372
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mMinuteSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/NumberPicker;->setValue(I)V

    .line 376
    invoke-direct {p0}, Lorg/holoeverywhere/widget/TimePicker;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 381
    iget-boolean v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 396
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 385
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mMinuteSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/NumberPicker;->setEnabled(Z)V

    .line 386
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mDivider:Lorg/holoeverywhere/widget/TextView;

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mDivider:Lorg/holoeverywhere/widget/TextView;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/TextView;->setEnabled(Z)V

    .line 389
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mHourSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/NumberPicker;->setEnabled(Z)V

    .line 390
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    if-eqz v0, :cond_2

    .line 391
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/NumberPicker;->setEnabled(Z)V

    .line 395
    :goto_1
    iput-boolean p1, p0, Lorg/holoeverywhere/widget/TimePicker;->mIsEnabled:Z

    goto :goto_0

    .line 393
    :cond_2
    iget-object v0, p0, Lorg/holoeverywhere/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 399
    iget-boolean v1, p0, Lorg/holoeverywhere/widget/TimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 407
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lorg/holoeverywhere/widget/TimePicker;->mIs24HourView:Z

    .line 403
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 404
    .local v0, "currentHour":I
    invoke-direct {p0}, Lorg/holoeverywhere/widget/TimePicker;->updateHourControl()V

    .line 405
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/holoeverywhere/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 406
    invoke-direct {p0}, Lorg/holoeverywhere/widget/TimePicker;->updateAmPmControl()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Lorg/holoeverywhere/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Lorg/holoeverywhere/widget/TimePicker$OnTimeChangedListener;

    .prologue
    .line 411
    iput-object p1, p0, Lorg/holoeverywhere/widget/TimePicker;->mOnTimeChangedListener:Lorg/holoeverywhere/widget/TimePicker$OnTimeChangedListener;

    .line 412
    return-void
.end method
