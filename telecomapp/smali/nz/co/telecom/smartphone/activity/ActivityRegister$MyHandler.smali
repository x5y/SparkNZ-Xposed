.class Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler;
.super Landroid/os/Handler;
.source "ActivityRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/activity/ActivityRegister;
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
            "Lnz/co/telecom/smartphone/activity/ActivityRegister;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityRegister;)V
    .locals 1
    .param p1, "activity"    # Lnz/co/telecom/smartphone/activity/ActivityRegister;

    .prologue
    .line 285
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 286
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 287
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 292
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityRegister;

    .line 293
    .local v0, "activity":Lnz/co/telecom/smartphone/activity/ActivityRegister;
    if-eqz v0, :cond_1

    .line 294
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->debug:Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$400(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg.what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 415
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 299
    :pswitch_1
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->displaySigninPage()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$500(Lnz/co/telecom/smartphone/activity/ActivityRegister;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v1

    .line 412
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->TAG:Ljava/lang/String;

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

    goto :goto_0

    .line 303
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 307
    :pswitch_3
    const/16 v3, 0x8

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->toggleProgressBar(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$600(Lnz/co/telecom/smartphone/activity/ActivityRegister;I)V

    .line 308
    const/16 v3, 0x3e6

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->showDialog(I)V

    goto :goto_0

    .line 312
    :pswitch_4
    const/16 v3, 0x8

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->toggleProgressBar(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$600(Lnz/co/telecom/smartphone/activity/ActivityRegister;I)V

    .line 313
    const/16 v3, 0x3e7

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->showDialog(I)V

    goto :goto_0

    .line 317
    :pswitch_5
    const/16 v3, 0x8

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->toggleProgressBar(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$600(Lnz/co/telecom/smartphone/activity/ActivityRegister;I)V

    .line 318
    const/16 v3, 0x3e5

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->showDialog(I)V

    goto :goto_0

    .line 322
    :pswitch_6
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_content_no_data_error:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$700(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 323
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->no_data_icons_layout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 327
    :pswitch_7
    const/16 v3, 0x8

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->toggleProgressBar(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$600(Lnz/co/telecom/smartphone/activity/ActivityRegister;I)V

    .line 328
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->register_content_no_data_error:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$700(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 329
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->no_data_error_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$800(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    move-result-object v3

    const v4, 0x7f0e00c5

    invoke-virtual {v0, v4}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityRegister;->no_data_error_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$900(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v3

    const v4, 0x7f0e00c6

    invoke-virtual {v0, v4}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->no_data_icons_layout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 336
    :pswitch_8
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->validateAllFields()Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$1000(Lnz/co/telecom/smartphone/activity/ActivityRegister;)Z

    move-result v2

    .line 337
    .local v2, "validFields":Z
    if-eqz v2, :cond_2

    .line 338
    const/4 v3, 0x0

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->toggleProgressBar(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$600(Lnz/co/telecom/smartphone/activity/ActivityRegister;I)V

    .line 340
    new-instance v3, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;

    invoke-direct {v3, p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;-><init>(Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler;Lnz/co/telecom/smartphone/activity/ActivityRegister;)V

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister$MyHandler$1;->start()V

    goto/16 :goto_0

    .line 385
    :cond_2
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->displayRegistrationFieldsDialog()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$1300(Lnz/co/telecom/smartphone/activity/ActivityRegister;)V

    goto/16 :goto_0

    .line 390
    .end local v2    # "validFields":Z
    :pswitch_9
    const/4 v3, 0x0

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->toggleProgressBar(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$600(Lnz/co/telecom/smartphone/activity/ActivityRegister;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 393
    :try_start_2
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->createPassword()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$1400(Lnz/co/telecom/smartphone/activity/ActivityRegister;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 394
    :catch_1
    move-exception v1

    .line 395
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errror in STATUS_START_REGISTRATION_COMPLETE_NOTIFIER "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 396
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 403
    :pswitch_a
    const/16 v3, 0x8

    :try_start_5
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->toggleProgressBar(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$600(Lnz/co/telecom/smartphone/activity/ActivityRegister;I)V

    .line 404
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->createNewCustomer()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$1500(Lnz/co/telecom/smartphone/activity/ActivityRegister;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 405
    :catch_2
    move-exception v1

    .line 406
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_6
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityRegister;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errror in STATUS_START_REGISTRATION_NOT_TELECOM_NOTIFIER "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method
