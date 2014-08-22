.class Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler;
.super Landroid/os/Handler;
.source "ActivityWelcome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/activity/ActivityWelcome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnz/co/telecom/smartphone/activity/ActivityWelcome;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V
    .locals 1
    .param p1, "activity"    # Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    .prologue
    .line 311
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 312
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 313
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 318
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    .line 319
    .local v0, "activity":Lnz/co/telecom/smartphone/activity/ActivityWelcome;
    if-eqz v0, :cond_0

    .line 320
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x20b

    if-ne v3, v4, :cond_1

    .line 321
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->toggleSplashScreen(I)V
    invoke-static {v0, v5}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$100(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V

    .line 326
    :goto_0
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v3, :pswitch_data_0

    .line 506
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 323
    :cond_1
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->toggleSplashScreen(I)V
    invoke-static {v0, v6}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$100(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V

    goto :goto_0

    .line 328
    :pswitch_1
    const/16 v3, 0x8

    :try_start_1
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->toggleSplashScreen(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$100(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V

    .line 329
    const/16 v3, 0x8

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->toggleProgressBar(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$200(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 502
    :catch_0
    move-exception v1

    .line 503
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$1000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handler error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 333
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->softLockCOuntdown()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$300(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V

    goto :goto_1

    .line 337
    :pswitch_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 341
    :pswitch_4
    const/4 v3, 0x0

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->toggleSplashScreen(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$100(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V

    .line 342
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->startMainNavigationPage()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$400(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V

    goto :goto_1

    .line 346
    :pswitch_5
    const/16 v3, 0x3e6

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->showDialog(I)V

    goto :goto_1

    .line 350
    :pswitch_6
    const/16 v3, 0x3e7

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->showDialog(I)V

    goto :goto_1

    .line 354
    :pswitch_7
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_error_IV:Landroid/widget/ImageView;

    const v4, 0x7f020142

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_error_title_TV:Landroid/widget/TextView;

    const v4, 0x7f0e007a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 356
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_error_TV:Landroid/widget/TextView;

    const v4, 0x7f0e0079

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 357
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_error_try_again_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    const v4, 0x7f0e0060

    invoke-virtual {v3, v4}, Lnz/co/telecom/smartphone/widget/TMYButton;->setText(I)V

    .line 358
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->content_no_data_error:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 359
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_icons_layout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 363
    :pswitch_8
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->content_no_data_error:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 364
    new-instance v2, Lnz/co/telecom/smartphone/util/NetworkUtils;

    invoke-direct {v2}, Lnz/co/telecom/smartphone/util/NetworkUtils;-><init>()V

    .line 365
    .local v2, "nu":Lnz/co/telecom/smartphone/util/NetworkUtils;
    invoke-virtual {v2}, Lnz/co/telecom/smartphone/util/NetworkUtils;->isNetworkAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 366
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_error_IV:Landroid/widget/ImageView;

    const v4, 0x7f020141

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 367
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_error_title_TV:Landroid/widget/TextView;

    const v4, 0x7f0e00c5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 368
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_error_TV:Landroid/widget/TextView;

    const v4, 0x7f0e00c6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 374
    :goto_2
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_error_try_again_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    const v4, 0x7f0e001c

    invoke-virtual {v3, v4}, Lnz/co/telecom/smartphone/widget/TMYButton;->setText(I)V

    .line 376
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_icons_layout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 370
    :cond_2
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_error_IV:Landroid/widget/ImageView;

    const v4, 0x7f020142

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 371
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_error_title_TV:Landroid/widget/TextView;

    const v4, 0x7f0e007a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 372
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_error_TV:Landroid/widget/TextView;

    const v4, 0x7f0e0079

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 380
    .end local v2    # "nu":Lnz/co/telecom/smartphone/util/NetworkUtils;
    :pswitch_9
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->content_no_data_error:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 381
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_error_IV:Landroid/widget/ImageView;

    const v4, 0x7f020141

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_error_title_TV:Landroid/widget/TextView;

    const v4, 0x7f0e00f8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 383
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_error_TV:Landroid/widget/TextView;

    const v4, 0x7f0e00f9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 384
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_icons_layout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 385
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_error_try_again_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    const v4, 0x7f0e001d

    invoke-virtual {v3, v4}, Lnz/co/telecom/smartphone/widget/TMYButton;->setText(I)V

    .line 386
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_error_try_again_btn:Lnz/co/telecom/smartphone/widget/TMYButton;

    new-instance v4, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$1;

    invoke-direct {v4, p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$1;-><init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler;Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V

    invoke-virtual {v3, v4}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 400
    :pswitch_a
    const/4 v3, 0x0

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->toggleSplashScreen(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$100(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V

    .line 401
    const/4 v3, 0x1

    # setter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mIsProcessingLoginRequest:Z
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$602(Lnz/co/telecom/smartphone/activity/ActivityWelcome;Z)Z

    .line 402
    new-instance v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$2;

    invoke-direct {v3, p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$2;-><init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler;Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$2;->start()V

    goto/16 :goto_1

    .line 414
    :pswitch_b
    const/4 v3, 0x0

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->toggleSplashScreen(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$100(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V

    .line 415
    const/4 v3, 0x1

    # setter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mIsProcessingLoginRequest:Z
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$602(Lnz/co/telecom/smartphone/activity/ActivityWelcome;Z)Z

    .line 416
    new-instance v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$3;

    invoke-direct {v3, p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$3;-><init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler;Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$3;->start()V

    goto/16 :goto_1

    .line 432
    :pswitch_c
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->content_no_data_error:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 433
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->no_data_icons_layout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 434
    const/4 v3, 0x0

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->toggleSplashScreen(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$100(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V

    .line 436
    new-instance v3, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;

    invoke-direct {v3, p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;-><init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler;Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyHandler$4;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 326
    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_3
        :pswitch_c
        :pswitch_b
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_2
    .end packed-switch
.end method
