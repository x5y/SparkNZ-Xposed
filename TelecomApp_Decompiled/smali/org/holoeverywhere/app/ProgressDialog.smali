.class public Lorg/holoeverywhere/app/ProgressDialog;
.super Lorg/holoeverywhere/app/AlertDialog;
.source "ProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Lorg/holoeverywhere/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/holoeverywhere/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressStyle:I

    .line 76
    invoke-direct {p0}, Lorg/holoeverywhere/app/ProgressDialog;->initFormats()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lorg/holoeverywhere/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressStyle:I

    .line 81
    invoke-direct {p0}, Lorg/holoeverywhere/app/ProgressDialog;->initFormats()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lorg/holoeverywhere/app/ProgressDialog;)Lorg/holoeverywhere/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/ProgressDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lorg/holoeverywhere/app/ProgressDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/ProgressDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/holoeverywhere/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/ProgressDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/holoeverywhere/app/ProgressDialog;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/ProgressDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$400(Lorg/holoeverywhere/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/ProgressDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private initFormats()V
    .locals 2

    .prologue
    .line 124
    const-string v0, "%1d/%2d"

    iput-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 125
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 126
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 127
    return-void
.end method

.method private onProgressChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    iget v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 223
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/holoeverywhere/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/holoeverywhere/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/holoeverywhere/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/holoeverywhere/app/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z

    .prologue
    .line 32
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lorg/holoeverywhere/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lorg/holoeverywhere/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lorg/holoeverywhere/app/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .prologue
    .line 38
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/holoeverywhere/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lorg/holoeverywhere/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lorg/holoeverywhere/app/ProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 45
    new-instance v0, Lorg/holoeverywhere/app/ProgressDialog;

    invoke-direct {v0, p0}, Lorg/holoeverywhere/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "dialog":Lorg/holoeverywhere/app/ProgressDialog;
    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {v0, p2}, Lorg/holoeverywhere/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {v0, p3}, Lorg/holoeverywhere/app/ProgressDialog;->setIndeterminate(Z)V

    .line 49
    invoke-virtual {v0, p4}, Lorg/holoeverywhere/app/ProgressDialog;->setCancelable(Z)V

    .line 50
    invoke-virtual {v0, p5}, Lorg/holoeverywhere/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 51
    invoke-virtual {v0}, Lorg/holoeverywhere/app/ProgressDialog;->show()V

    .line 52
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ProgressBar;->getMax()I

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 95
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ProgressBar;->incrementProgress(I)V

    .line 108
    invoke-direct {p0}, Lorg/holoeverywhere/app/ProgressDialog;->onProgressChanged()V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mIncrementBy:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ProgressBar;->incrementSecondaryProgress(I)V

    .line 117
    invoke-direct {p0}, Lorg/holoeverywhere/app/ProgressDialog;->onProgressChanged()V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lorg/holoeverywhere/R$styleable;->AlertDialog:[I

    sget v5, Lorg/holoeverywhere/R$attr;->alertDialogStyle:I

    sget v6, Lorg/holoeverywhere/R$style;->Holo_AlertDialog:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 142
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 143
    new-instance v2, Lorg/holoeverywhere/app/ProgressDialog$1;

    invoke-direct {v2, p0}, Lorg/holoeverywhere/app/ProgressDialog$1;-><init>(Lorg/holoeverywhere/app/ProgressDialog;)V

    iput-object v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 169
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ProgressDialog;->getLayoutInflater()Lorg/holoeverywhere/LayoutInflater;

    move-result-object v2

    const/16 v3, 0x9

    sget v4, Lorg/holoeverywhere/R$layout;->alert_dialog_progress_holo:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/holoeverywhere/LayoutInflater;->inflate(I)Landroid/view/View;

    move-result-object v1

    .line 173
    .local v1, "view":Landroid/view/View;
    sget v2, Lorg/holoeverywhere/R$id;->progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/holoeverywhere/widget/ProgressBar;

    iput-object v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    .line 174
    sget v2, Lorg/holoeverywhere/R$id;->progress_number:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 176
    sget v2, Lorg/holoeverywhere/R$id;->progress_percent:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 185
    :goto_0
    invoke-virtual {p0, v1}, Lorg/holoeverywhere/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 186
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    iget v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mMax:I

    if-lez v2, :cond_0

    .line 188
    iget v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mMax:I

    invoke-virtual {p0, v2}, Lorg/holoeverywhere/app/ProgressDialog;->setMax(I)V

    .line 190
    :cond_0
    iget v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressVal:I

    if-lez v2, :cond_1

    .line 191
    iget v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v2}, Lorg/holoeverywhere/app/ProgressDialog;->setProgress(I)V

    .line 193
    :cond_1
    iget v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mSecondaryProgressVal:I

    if-lez v2, :cond_2

    .line 194
    iget v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v2}, Lorg/holoeverywhere/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 196
    :cond_2
    iget v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mIncrementBy:I

    if-lez v2, :cond_3

    .line 197
    iget v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v2}, Lorg/holoeverywhere/app/ProgressDialog;->incrementProgressBy(I)V

    .line 199
    :cond_3
    iget v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mIncrementSecondaryBy:I

    if-lez v2, :cond_4

    .line 200
    iget v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v2}, Lorg/holoeverywhere/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 202
    :cond_4
    iget-object v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 203
    iget-object v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lorg/holoeverywhere/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    :cond_5
    iget-object v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 206
    iget-object v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lorg/holoeverywhere/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    :cond_6
    iget-object v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    .line 209
    iget-object v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lorg/holoeverywhere/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 211
    :cond_7
    iget-boolean v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v2}, Lorg/holoeverywhere/app/ProgressDialog;->setIndeterminate(Z)V

    .line 212
    invoke-direct {p0}, Lorg/holoeverywhere/app/ProgressDialog;->onProgressChanged()V

    .line 213
    invoke-super {p0, p1}, Lorg/holoeverywhere/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 214
    return-void

    .line 179
    .end local v1    # "view":Landroid/view/View;
    :cond_8
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ProgressDialog;->getLayoutInflater()Lorg/holoeverywhere/LayoutInflater;

    move-result-object v2

    const/16 v3, 0xe

    sget v4, Lorg/holoeverywhere/R$layout;->progress_dialog_holo:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/holoeverywhere/LayoutInflater;->inflate(I)Landroid/view/View;

    move-result-object v1

    .line 182
    .restart local v1    # "view":Landroid/view/View;
    sget v2, Lorg/holoeverywhere/R$id;->progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/holoeverywhere/widget/ProgressBar;

    iput-object v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    .line 183
    sget v2, Lorg/holoeverywhere/R$id;->message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/holoeverywhere/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Lorg/holoeverywhere/app/AlertDialog;->onStart()V

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mHasStarted:Z

    .line 229
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Lorg/holoeverywhere/app/AlertDialog;->onStop()V

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mHasStarted:Z

    .line 235
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 238
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ProgressBar;->setIndeterminate(Z)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iput-boolean p1, p0, Lorg/holoeverywhere/app/ProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 246
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iput-object p1, p0, Lorg/holoeverywhere/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ProgressBar;->setMax(I)V

    .line 256
    invoke-direct {p0}, Lorg/holoeverywhere/app/ProgressDialog;->onProgressChanged()V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    iput p1, p0, Lorg/holoeverywhere/app/ProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 264
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 265
    iget v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 266
    invoke-super {p0, p1}, Lorg/holoeverywhere/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 273
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 271
    :cond_1
    iput-object p1, p0, Lorg/holoeverywhere/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 276
    iget-boolean v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ProgressBar;->setProgress(I)V

    .line 278
    invoke-direct {p0}, Lorg/holoeverywhere/app/ProgressDialog;->onProgressChanged()V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    iput p1, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 285
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    iput-object p1, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 294
    invoke-direct {p0}, Lorg/holoeverywhere/app/ProgressDialog;->onProgressChanged()V

    .line 295
    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 298
    iput-object p1, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 299
    invoke-direct {p0}, Lorg/holoeverywhere/app/ProgressDialog;->onProgressChanged()V

    .line 300
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 303
    iput p1, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgressStyle:I

    .line 304
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lorg/holoeverywhere/app/ProgressDialog;->mProgress:Lorg/holoeverywhere/widget/ProgressBar;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 309
    invoke-direct {p0}, Lorg/holoeverywhere/app/ProgressDialog;->onProgressChanged()V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    iput p1, p0, Lorg/holoeverywhere/app/ProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method
