.class public Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExtrasReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private displayContent:Ljava/lang/String;

.field private displayTitle:Ljava/lang/String;

.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private createDialog(I)V
    .locals 9
    .param p1, "oneStatus"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 63
    new-instance v3, Landroid/app/Dialog;

    iget-object v5, p0, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 64
    .local v3, "subDialog":Landroid/app/Dialog;
    const/4 v2, 0x0

    .line 65
    .local v2, "myDialog":Landroid/view/View;
    const/4 v1, 0x0

    .line 66
    .local v1, "contentTextView":Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 67
    .local v4, "titleTextView":Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 68
    .local v0, "alert_message_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    packed-switch p1, :pswitch_data_0

    .line 88
    :goto_0
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 89
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 90
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 93
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 94
    if-eqz v0, :cond_0

    .line 95
    new-instance v5, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver$1;

    invoke-direct {v5, p0, v3}, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver$1;-><init>(Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_0
    return-void

    .line 70
    :pswitch_0
    iget-object v5, p0, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030017

    invoke-virtual {v5, v6, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 71
    const v5, 0x7f090075

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "alert_message_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    check-cast v0, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 72
    .restart local v0    # "alert_message_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const v5, 0x7f090074

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "contentTextView":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 73
    .restart local v1    # "contentTextView":Landroid/widget/TextView;
    const v5, 0x7f090073

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "titleTextView":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 74
    .restart local v4    # "titleTextView":Landroid/widget/TextView;
    iget-object v5, p0, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;->displayContent:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v5, p0, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;->displayTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v5, p0, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030018

    invoke-virtual {v5, v6, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 80
    const v5, 0x7f09007a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "alert_message_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    check-cast v0, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 81
    .restart local v0    # "alert_message_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const v5, 0x7f090079

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "contentTextView":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 82
    .restart local v1    # "contentTextView":Landroid/widget/TextView;
    const v5, 0x7f090078

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "titleTextView":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 83
    .restart local v4    # "titleTextView":Landroid/widget/TextView;
    iget-object v5, p0, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;->displayContent:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v5, p0, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;->displayTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private displayDialog(I)V
    .locals 0
    .param p1, "resultId"    # I

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 52
    :pswitch_0
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;->createDialog(I)V

    goto :goto_0

    .line 56
    :pswitch_1
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;->createDialog(I)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    :try_start_0
    sget-object v3, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;->TAG:Ljava/lang/String;

    const-string v4, "ExtraReceiver start "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iput-object p1, p0, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;->mContext:Landroid/content/Context;

    .line 31
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;->inflater:Landroid/view/LayoutInflater;

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EXTRA_RESULTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 34
    .local v1, "myExtraData":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 35
    const-string v3, "EXTRA_RESULTS"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 36
    .local v2, "myResult":I
    const-string v3, "ActivitySlidingMain_TITLE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;->displayTitle:Ljava/lang/String;

    .line 37
    const-string v3, "ActivitySlidingMain_TYPE_CONTENT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;->displayContent:Ljava/lang/String;

    .line 38
    invoke-direct {p0, v2}, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;->displayDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .end local v1    # "myExtraData":Landroid/os/Bundle;
    .end local v2    # "myResult":I
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error in ExtraReceiver "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    throw v3
.end method
