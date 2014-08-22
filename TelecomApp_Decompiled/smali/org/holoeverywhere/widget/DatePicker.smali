.class public Lorg/holoeverywhere/widget/DatePicker;
.super Lorg/holoeverywhere/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/widget/DatePicker$1;,
        Lorg/holoeverywhere/widget/DatePicker$SavedState;,
        Lorg/holoeverywhere/widget/DatePicker$OnDateChangedListener;,
        Lorg/holoeverywhere/widget/DatePicker$Callback;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final callback:Lorg/holoeverywhere/widget/DatePicker$Callback;

.field private currentDate:Ljava/util/Calendar;

.field private final dateFormat:Ljava/text/DateFormat;

.field private final daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

.field private final inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private locale:Ljava/util/Locale;

.field private final mCalendarView:Lorg/holoeverywhere/widget/CalendarView;

.field private maxDate:Ljava/util/Calendar;

.field private minDate:Ljava/util/Calendar;

.field private final monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

.field private numberOfMonths:I

.field private onDateChangedListener:Lorg/holoeverywhere/widget/DatePicker$OnDateChangedListener;

.field private shortMonths:[Ljava/lang/String;

.field private final spinners:Lorg/holoeverywhere/widget/LinearLayout;

.field private tempDate:Ljava/util/Calendar;

.field private final yearSpinner:Lorg/holoeverywhere/widget/NumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    const-class v0, Lorg/holoeverywhere/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/holoeverywhere/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/holoeverywhere/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 169
    sget v0, Lorg/holoeverywhere/R$attr;->datePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lorg/holoeverywhere/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 173
    invoke-direct/range {p0 .. p3}, Lorg/holoeverywhere/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    new-instance v12, Lorg/holoeverywhere/widget/DatePicker$Callback;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lorg/holoeverywhere/widget/DatePicker$Callback;-><init>(Lorg/holoeverywhere/widget/DatePicker;Lorg/holoeverywhere/widget/DatePicker$1;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->callback:Lorg/holoeverywhere/widget/DatePicker$Callback;

    .line 152
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "MM/dd/yyyy"

    invoke-direct {v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->dateFormat:Ljava/text/DateFormat;

    .line 174
    sget-object v12, Lorg/holoeverywhere/R$styleable;->DatePicker:[I

    sget v13, Lorg/holoeverywhere/R$style;->Holo_DatePicker:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v12, v2, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 176
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v12, 0x6

    const/4 v13, 0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 178
    .local v10, "spinnersShown":Z
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 180
    .local v4, "calendarViewShown":Z
    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 182
    .local v6, "forceShownState":Z
    const/4 v12, 0x7

    const/16 v13, 0x76c

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 183
    .local v11, "startYear":I
    const/4 v12, 0x1

    const/16 v13, 0x834

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 184
    .local v5, "endYear":I
    const/4 v12, 0x5

    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 185
    .local v9, "minDate":Ljava/lang/String;
    const/4 v12, 0x4

    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, "maxDate":Ljava/lang/String;
    const/4 v12, 0x3

    sget v13, Lorg/holoeverywhere/R$layout;->date_picker_holo:I

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 188
    .local v7, "layoutResourceId":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    const-string v12, "input_method"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 191
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/holoeverywhere/widget/DatePicker;->setLocale(Ljava/util/Locale;)V

    .line 192
    const/4 v12, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v7, v1, v12}, Lorg/holoeverywhere/LayoutInflater;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 193
    sget v12, Lorg/holoeverywhere/R$id;->pickers:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/holoeverywhere/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lorg/holoeverywhere/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->spinners:Lorg/holoeverywhere/widget/LinearLayout;

    .line 194
    sget v12, Lorg/holoeverywhere/R$id;->calendar_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/holoeverywhere/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lorg/holoeverywhere/widget/CalendarView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->mCalendarView:Lorg/holoeverywhere/widget/CalendarView;

    .line 195
    sget v12, Lorg/holoeverywhere/R$id;->day:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/holoeverywhere/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lorg/holoeverywhere/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    .line 196
    sget v12, Lorg/holoeverywhere/R$id;->month:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/holoeverywhere/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lorg/holoeverywhere/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    .line 197
    sget v12, Lorg/holoeverywhere/R$id;->year:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/holoeverywhere/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lorg/holoeverywhere/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->yearSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    .line 198
    invoke-virtual/range {p0 .. p0}, Lorg/holoeverywhere/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "accessibility"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 200
    invoke-direct/range {p0 .. p0}, Lorg/holoeverywhere/widget/DatePicker;->setContentDescriptions()V

    .line 202
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->mCalendarView:Lorg/holoeverywhere/widget/CalendarView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/DatePicker;->callback:Lorg/holoeverywhere/widget/DatePicker$Callback;

    invoke-virtual {v12, v13}, Lorg/holoeverywhere/widget/CalendarView;->setOnDateChangeListener(Lorg/holoeverywhere/widget/CalendarView$OnDateChangeListener;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    sget-object v13, Lorg/holoeverywhere/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lorg/holoeverywhere/widget/NumberPicker$Formatter;

    invoke-virtual {v12, v13}, Lorg/holoeverywhere/widget/NumberPicker;->setFormatter(Lorg/holoeverywhere/widget/NumberPicker$Formatter;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    const-wide/16 v13, 0x64

    invoke-virtual {v12, v13, v14}, Lorg/holoeverywhere/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 205
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/DatePicker;->callback:Lorg/holoeverywhere/widget/DatePicker$Callback;

    invoke-virtual {v12, v13}, Lorg/holoeverywhere/widget/NumberPicker;->setOnValueChangedListener(Lorg/holoeverywhere/widget/NumberPicker$OnValueChangeListener;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lorg/holoeverywhere/widget/NumberPicker;->setMinValue(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/holoeverywhere/widget/DatePicker;->numberOfMonths:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Lorg/holoeverywhere/widget/NumberPicker;->setMaxValue(I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/DatePicker;->shortMonths:[Ljava/lang/String;

    invoke-virtual {v12, v13}, Lorg/holoeverywhere/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    const-wide/16 v13, 0xc8

    invoke-virtual {v12, v13, v14}, Lorg/holoeverywhere/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 210
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/DatePicker;->callback:Lorg/holoeverywhere/widget/DatePicker$Callback;

    invoke-virtual {v12, v13}, Lorg/holoeverywhere/widget/NumberPicker;->setOnValueChangedListener(Lorg/holoeverywhere/widget/NumberPicker$OnValueChangeListener;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->yearSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    const-wide/16 v13, 0x64

    invoke-virtual {v12, v13, v14}, Lorg/holoeverywhere/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 212
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->yearSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/DatePicker;->callback:Lorg/holoeverywhere/widget/DatePicker$Callback;

    invoke-virtual {v12, v13}, Lorg/holoeverywhere/widget/NumberPicker;->setOnValueChangedListener(Lorg/holoeverywhere/widget/NumberPicker$OnValueChangeListener;)V

    .line 213
    if-nez v10, :cond_1

    if-nez v4, :cond_1

    if-eqz v6, :cond_6

    .line 214
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/holoeverywhere/widget/DatePicker;->setSpinnersShown(Z)V

    .line 215
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/holoeverywhere/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 220
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->clear()V

    .line 221
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lorg/holoeverywhere/widget/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 222
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v11, v13, v14}, Ljava/util/Calendar;->set(III)V

    .line 224
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/holoeverywhere/widget/DatePicker;->setMinDate(J)V

    .line 225
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->clear()V

    .line 226
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Lorg/holoeverywhere/widget/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 227
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;

    const/16 v13, 0xb

    const/16 v14, 0x1f

    invoke-virtual {v12, v5, v13, v14}, Ljava/util/Calendar;->set(III)V

    .line 229
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/holoeverywhere/widget/DatePicker;->setMaxDate(J)V

    .line 230
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 231
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Lorg/holoeverywhere/widget/DatePicker;->init(IIILorg/holoeverywhere/widget/DatePicker$OnDateChangedListener;)V

    .line 233
    invoke-direct/range {p0 .. p0}, Lorg/holoeverywhere/widget/DatePicker;->reorderSpinners()V

    .line 234
    return-void

    .line 217
    :cond_6
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/holoeverywhere/widget/DatePicker;->setSpinnersShown(Z)V

    .line 218
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/holoeverywhere/widget/DatePicker;->setCalendarViewShown(Z)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lorg/holoeverywhere/widget/DatePicker;III)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/DatePicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/DatePicker;->setDate(III)V

    return-void
.end method

.method static synthetic access$100(Lorg/holoeverywhere/widget/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/DatePicker;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/holoeverywhere/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$200(Lorg/holoeverywhere/widget/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/DatePicker;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/holoeverywhere/widget/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$300(Lorg/holoeverywhere/widget/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/DatePicker;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/holoeverywhere/widget/DatePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$400(Lorg/holoeverywhere/widget/DatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/DatePicker;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$500(Lorg/holoeverywhere/widget/DatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/DatePicker;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$600(Lorg/holoeverywhere/widget/DatePicker;)Lorg/holoeverywhere/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/DatePicker;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$700(Lorg/holoeverywhere/widget/DatePicker;)Lorg/holoeverywhere/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/DatePicker;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$800(Lorg/holoeverywhere/widget/DatePicker;)Lorg/holoeverywhere/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/widget/DatePicker;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->yearSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$900(Lorg/holoeverywhere/widget/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lorg/holoeverywhere/widget/DatePicker;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/holoeverywhere/widget/DatePicker;->updateCalendarView()V

    return-void
.end method

.method private varargs checkInputState([Lorg/holoeverywhere/widget/NumberPicker;)V
    .locals 8
    .param p1, "spinners"    # [Lorg/holoeverywhere/widget/NumberPicker;

    .prologue
    .line 237
    move-object v0, p1

    .local v0, "arr$":[Lorg/holoeverywhere/widget/NumberPicker;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 238
    .local v4, "spinner":Lorg/holoeverywhere/widget/NumberPicker;
    invoke-virtual {v4}, Lorg/holoeverywhere/widget/NumberPicker;->getInputField()Lorg/holoeverywhere/internal/NumberPickerEditText;

    move-result-object v2

    .line 239
    .local v2, "input":Lorg/holoeverywhere/internal/NumberPickerEditText;
    iget-object v5, p0, Lorg/holoeverywhere/widget/DatePicker;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 240
    invoke-virtual {v2}, Lorg/holoeverywhere/internal/NumberPickerEditText;->clearFocus()V

    .line 241
    iget-object v5, p0, Lorg/holoeverywhere/widget/DatePicker;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 237
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v2    # "input":Lorg/holoeverywhere/internal/NumberPickerEditText;
    .end local v4    # "spinner":Lorg/holoeverywhere/widget/NumberPicker;
    :cond_1
    return-void
.end method

.method private static getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p0, "oldCalendar"    # Ljava/util/Calendar;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 130
    if-nez p0, :cond_0

    .line 131
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 136
    :goto_0
    return-object v2

    .line 133
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 134
    .local v0, "currentTimeMillis":J
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 135
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 304
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 310
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/DatePicker;->sendAccessibilityEvent(I)V

    .line 311
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->onDateChangedListener:Lorg/holoeverywhere/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->onDateChangedListener:Lorg/holoeverywhere/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/DatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lorg/holoeverywhere/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lorg/holoeverywhere/widget/DatePicker;III)V

    .line 315
    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 354
    :try_start_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    const/4 v1, 0x1

    .line 359
    :goto_0
    return v1

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/text/ParseException;
    sget-object v1, Lorg/holoeverywhere/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pushSpinner(Lorg/holoeverywhere/widget/NumberPicker;II)V
    .locals 2
    .param p1, "spinner"    # Lorg/holoeverywhere/widget/NumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "i"    # I

    .prologue
    .line 364
    invoke-virtual {p1}, Lorg/holoeverywhere/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/holoeverywhere/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {p1}, Lorg/holoeverywhere/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 367
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 368
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 369
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 370
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/DatePicker;->setImeOptions(Lorg/holoeverywhere/widget/NumberPicker;II)V

    .line 373
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private reorderSpinners()V
    .locals 4

    .prologue
    .line 376
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .line 377
    .local v1, "order":[C
    array-length v2, v1

    .line 378
    .local v2, "spinnerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 379
    aget-char v3, v1, v0

    sparse-switch v3, :sswitch_data_0

    .line 378
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :sswitch_0
    iget-object v3, p0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lorg/holoeverywhere/widget/DatePicker;->pushSpinner(Lorg/holoeverywhere/widget/NumberPicker;II)V

    goto :goto_1

    .line 384
    :sswitch_1
    iget-object v3, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lorg/holoeverywhere/widget/DatePicker;->pushSpinner(Lorg/holoeverywhere/widget/NumberPicker;II)V

    goto :goto_1

    .line 387
    :sswitch_2
    iget-object v3, p0, Lorg/holoeverywhere/widget/DatePicker;->yearSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lorg/holoeverywhere/widget/DatePicker;->pushSpinner(Lorg/holoeverywhere/widget/NumberPicker;II)V

    goto :goto_1

    .line 391
    :cond_0
    return-void

    .line 379
    nop

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private static setContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "childId"    # I
    .param p2, "textId"    # I

    .prologue
    .line 142
    if-nez p0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 147
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
    .line 398
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    sget v1, Lorg/holoeverywhere/R$id;->increment:I

    sget v2, Lorg/holoeverywhere/R$string;->date_picker_increment_day_button:I

    invoke-static {v0, v1, v2}, Lorg/holoeverywhere/widget/DatePicker;->setContentDescription(Landroid/view/View;II)V

    .line 400
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    sget v1, Lorg/holoeverywhere/R$id;->decrement:I

    sget v2, Lorg/holoeverywhere/R$string;->date_picker_decrement_day_button:I

    invoke-static {v0, v1, v2}, Lorg/holoeverywhere/widget/DatePicker;->setContentDescription(Landroid/view/View;II)V

    .line 402
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    sget v1, Lorg/holoeverywhere/R$id;->increment:I

    sget v2, Lorg/holoeverywhere/R$string;->date_picker_increment_month_button:I

    invoke-static {v0, v1, v2}, Lorg/holoeverywhere/widget/DatePicker;->setContentDescription(Landroid/view/View;II)V

    .line 404
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    sget v1, Lorg/holoeverywhere/R$id;->decrement:I

    sget v2, Lorg/holoeverywhere/R$string;->date_picker_decrement_month_button:I

    invoke-static {v0, v1, v2}, Lorg/holoeverywhere/widget/DatePicker;->setContentDescription(Landroid/view/View;II)V

    .line 406
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->yearSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    sget v1, Lorg/holoeverywhere/R$id;->increment:I

    sget v2, Lorg/holoeverywhere/R$string;->date_picker_increment_year_button:I

    invoke-static {v0, v1, v2}, Lorg/holoeverywhere/widget/DatePicker;->setContentDescription(Landroid/view/View;II)V

    .line 408
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->yearSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    sget v1, Lorg/holoeverywhere/R$id;->decrement:I

    sget v2, Lorg/holoeverywhere/R$string;->date_picker_decrement_year_button:I

    invoke-static {v0, v1, v2}, Lorg/holoeverywhere/widget/DatePicker;->setContentDescription(Landroid/view/View;II)V

    .line 410
    return-void
.end method

.method private setDate(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 413
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 414
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->minDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->minDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private setImeOptions(Lorg/holoeverywhere/widget/NumberPicker;II)V
    .locals 2
    .param p1, "spinner"    # Lorg/holoeverywhere/widget/NumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    .line 436
    add-int/lit8 v1, p2, -0x1

    if-ge p3, v1, :cond_0

    .line 437
    const/4 v0, 0x5

    .line 441
    .local v0, "imeOptions":I
    :goto_0
    invoke-virtual {p1}, Lorg/holoeverywhere/widget/NumberPicker;->getInputField()Lorg/holoeverywhere/internal/NumberPickerEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/holoeverywhere/internal/NumberPickerEditText;->setImeOptions(I)V

    .line 442
    return-void

    .line 439
    .end local v0    # "imeOptions":I
    :cond_0
    const/4 v0, 0x6

    .restart local v0    # "imeOptions":I
    goto :goto_0
.end method

.method private updateCalendarView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 503
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->mCalendarView:Lorg/holoeverywhere/widget/CalendarView;

    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3, v3}, Lorg/holoeverywhere/widget/CalendarView;->setDate(JZZ)V

    .line 504
    return-void
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    .line 517
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 518
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/holoeverywhere/widget/NumberPicker;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->yearSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/holoeverywhere/widget/DatePicker;->checkInputState([Lorg/holoeverywhere/widget/NumberPicker;)V

    .line 520
    :cond_0
    return-void
.end method

.method private updateSpinners()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 523
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 524
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->minDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setMinValue(I)V

    .line 526
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setMaxValue(I)V

    .line 528
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v1, v4}, Lorg/holoeverywhere/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 529
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setMinValue(I)V

    .line 530
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setMaxValue(I)V

    .line 532
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v1, v4}, Lorg/holoeverywhere/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 551
    :goto_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->shortMonths:[Ljava/lang/String;

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v2}, Lorg/holoeverywhere/widget/NumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v3}, Lorg/holoeverywhere/widget/NumberPicker;->getMaxValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/holoeverywhere/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 553
    .local v0, "displayedValues":[Ljava/lang/String;
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lorg/holoeverywhere/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->yearSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->minDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setMinValue(I)V

    .line 555
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->yearSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setMaxValue(I)V

    .line 556
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->yearSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v1, v4}, Lorg/holoeverywhere/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 557
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->yearSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setValue(I)V

    .line 558
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setValue(I)V

    .line 559
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setValue(I)V

    .line 560
    return-void

    .line 533
    .end local v0    # "displayedValues":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setMinValue(I)V

    .line 536
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setMaxValue(I)V

    .line 537
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v1, v4}, Lorg/holoeverywhere/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 538
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setMinValue(I)V

    .line 540
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setMaxValue(I)V

    .line 541
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v1, v4}, Lorg/holoeverywhere/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0

    .line 543
    :cond_1
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v1, v5}, Lorg/holoeverywhere/widget/NumberPicker;->setMinValue(I)V

    .line 544
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    iget-object v2, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setMaxValue(I)V

    .line 546
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v1, v5}, Lorg/holoeverywhere/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 547
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v1, v4}, Lorg/holoeverywhere/widget/NumberPicker;->setMinValue(I)V

    .line 548
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lorg/holoeverywhere/widget/NumberPicker;->setMaxValue(I)V

    .line 549
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v1, v5}, Lorg/holoeverywhere/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/DatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 257
    return-void
.end method

.method public getCalendarView()Lorg/holoeverywhere/widget/CalendarView;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->mCalendarView:Lorg/holoeverywhere/widget/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->mCalendarView:Lorg/holoeverywhere/widget/CalendarView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/CalendarView;->isShown()Z

    move-result v0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->mCalendarView:Lorg/holoeverywhere/widget/CalendarView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/CalendarView;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->mCalendarView:Lorg/holoeverywhere/widget/CalendarView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/CalendarView;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getOnDateChangedListener()Lorg/holoeverywhere/widget/DatePicker$OnDateChangedListener;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->onDateChangedListener:Lorg/holoeverywhere/widget/DatePicker$OnDateChangedListener;

    return-object v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->spinners:Lorg/holoeverywhere/widget/LinearLayout;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILorg/holoeverywhere/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lorg/holoeverywhere/widget/DatePicker$OnDateChangedListener;

    .prologue
    .line 297
    invoke-virtual {p0, p4}, Lorg/holoeverywhere/widget/DatePicker;->setOnDateChangedListener(Lorg/holoeverywhere/widget/DatePicker$OnDateChangedListener;)V

    .line 298
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/DatePicker;->setDate(III)V

    .line 299
    invoke-direct {p0}, Lorg/holoeverywhere/widget/DatePicker;->updateSpinners()V

    .line 300
    invoke-direct {p0}, Lorg/holoeverywhere/widget/DatePicker;->updateCalendarView()V

    .line 301
    return-void
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
    .line 320
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 321
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/widget/DatePicker;->setLocale(Ljava/util/Locale;)V

    .line 322
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 327
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 328
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 330
    :cond_0
    const/16 v0, 0x14

    .line 332
    .local v0, "flags":I
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/16 v5, 0x14

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 339
    move-object v0, p1

    check-cast v0, Lorg/holoeverywhere/widget/DatePicker$SavedState;

    .line 340
    .local v0, "ss":Lorg/holoeverywhere/widget/DatePicker$SavedState;
    invoke-virtual {v0}, Lorg/holoeverywhere/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lorg/holoeverywhere/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 341
    # getter for: Lorg/holoeverywhere/widget/DatePicker$SavedState;->year:I
    invoke-static {v0}, Lorg/holoeverywhere/widget/DatePicker$SavedState;->access$1200(Lorg/holoeverywhere/widget/DatePicker$SavedState;)I

    move-result v1

    # getter for: Lorg/holoeverywhere/widget/DatePicker$SavedState;->month:I
    invoke-static {v0}, Lorg/holoeverywhere/widget/DatePicker$SavedState;->access$1300(Lorg/holoeverywhere/widget/DatePicker$SavedState;)I

    move-result v2

    # getter for: Lorg/holoeverywhere/widget/DatePicker$SavedState;->day:I
    invoke-static {v0}, Lorg/holoeverywhere/widget/DatePicker$SavedState;->access$1400(Lorg/holoeverywhere/widget/DatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/holoeverywhere/widget/DatePicker;->setDate(III)V

    .line 342
    invoke-direct {p0}, Lorg/holoeverywhere/widget/DatePicker;->updateSpinners()V

    .line 343
    invoke-direct {p0}, Lorg/holoeverywhere/widget/DatePicker;->updateCalendarView()V

    .line 344
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 348
    new-instance v0, Lorg/holoeverywhere/widget/DatePicker$SavedState;

    invoke-super {p0}, Lorg/holoeverywhere/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/DatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lorg/holoeverywhere/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/holoeverywhere/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILorg/holoeverywhere/widget/DatePicker$1;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 394
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->mCalendarView:Lorg/holoeverywhere/widget/CalendarView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/holoeverywhere/widget/CalendarView;->setVisibility(I)V

    .line 395
    return-void

    .line 394
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 423
    invoke-virtual {p0}, Lorg/holoeverywhere/widget/DatePicker;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 431
    :goto_0
    return-void

    .line 426
    :cond_0
    invoke-super {p0, p1}, Lorg/holoeverywhere/widget/FrameLayout;->setEnabled(Z)V

    .line 427
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->daySpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/NumberPicker;->setEnabled(Z)V

    .line 428
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->monthSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/NumberPicker;->setEnabled(Z)V

    .line 429
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->yearSpinner:Lorg/holoeverywhere/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/NumberPicker;->setEnabled(Z)V

    .line 430
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->mCalendarView:Lorg/holoeverywhere/widget/CalendarView;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/CalendarView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 445
    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    :cond_0
    return-void

    .line 448
    :cond_1
    iput-object p1, p0, Lorg/holoeverywhere/widget/DatePicker;->locale:Ljava/util/Locale;

    .line 449
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;

    invoke-static {v1, p1}, Lorg/holoeverywhere/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;

    .line 450
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->minDate:Ljava/util/Calendar;

    invoke-static {v1, p1}, Lorg/holoeverywhere/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->minDate:Ljava/util/Calendar;

    .line 451
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->maxDate:Ljava/util/Calendar;

    invoke-static {v1, p1}, Lorg/holoeverywhere/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->maxDate:Ljava/util/Calendar;

    .line 452
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    invoke-static {v1, p1}, Lorg/holoeverywhere/widget/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    .line 453
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/holoeverywhere/widget/DatePicker;->numberOfMonths:I

    .line 454
    iget v1, p0, Lorg/holoeverywhere/widget/DatePicker;->numberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->shortMonths:[Ljava/lang/String;

    .line 455
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/holoeverywhere/widget/DatePicker;->numberOfMonths:I

    if-ge v0, v1, :cond_0

    .line 456
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->shortMonths:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x0

    const/16 v3, 0x14

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 4
    .param p1, "maxDateL"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 462
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 463
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 475
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 469
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->mCalendarView:Lorg/holoeverywhere/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/widget/CalendarView;->setMaxDate(J)V

    .line 470
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->maxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 472
    invoke-direct {p0}, Lorg/holoeverywhere/widget/DatePicker;->updateCalendarView()V

    .line 474
    :cond_1
    invoke-direct {p0}, Lorg/holoeverywhere/widget/DatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 4
    .param p1, "minDateL"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 478
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 479
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->minDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->tempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->minDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 491
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->minDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 485
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->mCalendarView:Lorg/holoeverywhere/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Lorg/holoeverywhere/widget/CalendarView;->setMinDate(J)V

    .line 486
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->minDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lorg/holoeverywhere/widget/DatePicker;->currentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->minDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 488
    invoke-direct {p0}, Lorg/holoeverywhere/widget/DatePicker;->updateCalendarView()V

    .line 490
    :cond_1
    invoke-direct {p0}, Lorg/holoeverywhere/widget/DatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setOnDateChangedListener(Lorg/holoeverywhere/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "onDateChangedListener"    # Lorg/holoeverywhere/widget/DatePicker$OnDateChangedListener;

    .prologue
    .line 495
    iput-object p1, p0, Lorg/holoeverywhere/widget/DatePicker;->onDateChangedListener:Lorg/holoeverywhere/widget/DatePicker$OnDateChangedListener;

    .line 496
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 499
    iget-object v1, p0, Lorg/holoeverywhere/widget/DatePicker;->spinners:Lorg/holoeverywhere/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/holoeverywhere/widget/LinearLayout;->setVisibility(I)V

    .line 500
    return-void

    .line 499
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 507
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/DatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/holoeverywhere/widget/DatePicker;->setDate(III)V

    .line 511
    invoke-direct {p0}, Lorg/holoeverywhere/widget/DatePicker;->updateSpinners()V

    .line 512
    invoke-direct {p0}, Lorg/holoeverywhere/widget/DatePicker;->updateCalendarView()V

    .line 513
    invoke-direct {p0}, Lorg/holoeverywhere/widget/DatePicker;->notifyDateChanged()V

    goto :goto_0
.end method
