.class public Lnz/co/telecom/smartphone/activity/ActivityLogFile;
.super Lroboguice/activity/RoboActivity;
.source "ActivityLogFile.java"


# annotations
.annotation runtime Lroboguice/inject/ContentView;
    value = 0x7f030023
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private buttonClearLog:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0900a0
    .end annotation
.end field

.field private buttonShowLog:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0900a1
    .end annotation
.end field

.field private buttonWriteLog:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0900a2
    .end annotation
.end field

.field private textViewLogFileText:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0900a3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lnz/co/telecom/smartphone/activity/ActivityLogFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/activity/ActivityLogFile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lroboguice/activity/RoboActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnz/co/telecom/smartphone/activity/ActivityLogFile;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityLogFile;

    .prologue
    .line 24
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityLogFile;->displayLogFile()V

    return-void
.end method

.method static synthetic access$100(Lnz/co/telecom/smartphone/activity/ActivityLogFile;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityLogFile;

    .prologue
    .line 24
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityLogFile;->clearLogFile()V

    return-void
.end method

.method static synthetic access$200(Lnz/co/telecom/smartphone/activity/ActivityLogFile;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/telecom/smartphone/activity/ActivityLogFile;

    .prologue
    .line 24
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityLogFile;->writeLogFileToSDCard()V

    return-void
.end method

.method private clearLogFile()V
    .locals 7

    .prologue
    .line 96
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "logcat -c"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 97
    .local v4, "process":Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 99
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v3, "log":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "log":Ljava/lang/StringBuilder;
    .end local v4    # "process":Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityLogFile;->textViewLogFileText:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 105
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "log":Ljava/lang/StringBuilder;
    .restart local v4    # "process":Ljava/lang/Process;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityLogFile;->textViewLogFileText:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private displayLogFile()V
    .locals 7

    .prologue
    .line 73
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "logcat -d -v time"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 74
    .local v4, "process":Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 76
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v3, "log":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 80
    const-string v5, "nz.co.telecom.smartphone"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "log":Ljava/lang/StringBuilder;
    .end local v4    # "process":Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityLogFile;->textViewLogFileText:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 85
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "log":Ljava/lang/StringBuilder;
    .restart local v4    # "process":Ljava/lang/Process;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityLogFile;->textViewLogFileText:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private writeLogFileToSDCard()V
    .locals 9

    .prologue
    .line 115
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 116
    .local v6, "sdCard":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/telecom"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 118
    new-instance v2, Ljava/io/File;

    const-string v7, "logfile.txt"

    invoke-direct {v2, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 123
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    iget-object v7, p0, Lnz/co/telecom/smartphone/activity/ActivityLogFile;->textViewLogFileText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "logText":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 126
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 127
    .local v5, "myOutWriter":Ljava/io/OutputStreamWriter;
    iget-object v7, p0, Lnz/co/telecom/smartphone/activity/ActivityLogFile;->textViewLogFileText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 128
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 129
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "logText":Ljava/lang/String;
    .end local v5    # "myOutWriter":Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lnz/co/telecom/smartphone/activity/ActivityLogFile;->TAG:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lroboguice/activity/RoboActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityLogFile;->textViewLogFileText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityLogFile;->buttonShowLog:Landroid/widget/Button;

    new-instance v1, Lnz/co/telecom/smartphone/activity/ActivityLogFile$1;

    invoke-direct {v1, p0}, Lnz/co/telecom/smartphone/activity/ActivityLogFile$1;-><init>(Lnz/co/telecom/smartphone/activity/ActivityLogFile;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityLogFile;->buttonClearLog:Landroid/widget/Button;

    new-instance v1, Lnz/co/telecom/smartphone/activity/ActivityLogFile$2;

    invoke-direct {v1, p0}, Lnz/co/telecom/smartphone/activity/ActivityLogFile$2;-><init>(Lnz/co/telecom/smartphone/activity/ActivityLogFile;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityLogFile;->buttonWriteLog:Landroid/widget/Button;

    new-instance v1, Lnz/co/telecom/smartphone/activity/ActivityLogFile$3;

    invoke-direct {v1, p0}, Lnz/co/telecom/smartphone/activity/ActivityLogFile$3;-><init>(Lnz/co/telecom/smartphone/activity/ActivityLogFile;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
