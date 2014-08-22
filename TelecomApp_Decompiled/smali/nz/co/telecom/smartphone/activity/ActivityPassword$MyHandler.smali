.class Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler;
.super Landroid/os/Handler;
.source "ActivityPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/activity/ActivityPassword;
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
            "Lnz/co/telecom/smartphone/activity/ActivityPassword;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityPassword;)V
    .locals 1
    .param p1, "activity"    # Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .prologue
    .line 365
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 366
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 367
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 372
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;

    .line 373
    .local v1, "activity":Lnz/co/telecom/smartphone/activity/ActivityPassword;
    if-eqz v1, :cond_1

    .line 374
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 375
    iget-object v5, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msg.what = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 560
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 379
    :pswitch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v2

    .line 557
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handler error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_2
    const/16 v5, 0x8

    :try_start_1
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->toggleProgressBar(I)V
    invoke-static {v1, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$300(Lnz/co/telecom/smartphone/activity/ActivityPassword;I)V

    .line 384
    const/16 v5, 0x3e6

    invoke-virtual {v1, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->showDialog(I)V

    goto :goto_0

    .line 388
    :pswitch_3
    const/16 v5, 0x8

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->toggleProgressBar(I)V
    invoke-static {v1, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$300(Lnz/co/telecom/smartphone/activity/ActivityPassword;I)V

    .line 389
    const/16 v5, 0x3e7

    invoke-virtual {v1, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->showDialog(I)V

    goto :goto_0

    .line 393
    :pswitch_4
    const/16 v5, 0x8

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->toggleProgressBar(I)V
    invoke-static {v1, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$300(Lnz/co/telecom/smartphone/activity/ActivityPassword;I)V

    .line 394
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_content_no_data_error:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$400(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Landroid/widget/RelativeLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 395
    iget-object v5, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->no_data_icons_layout:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 399
    :pswitch_5
    const/16 v5, 0x8

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->toggleProgressBar(I)V
    invoke-static {v1, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$300(Lnz/co/telecom/smartphone/activity/ActivityPassword;I)V

    .line 400
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_content_no_data_error:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$400(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Landroid/widget/RelativeLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 401
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->no_data_error_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$500(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    move-result-object v5

    const v6, 0x7f0e00c5

    invoke-virtual {v1, v6}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->no_data_error_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$600(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    const v6, 0x7f0e00c6

    invoke-virtual {v1, v6}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v5, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->no_data_icons_layout:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 407
    :pswitch_6
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 408
    iget-object v5, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    const-string v6, "STATUS_START_REGISTRATION_NOTIFIER ActivityPassword start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_2
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 411
    iget-object v5, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATUS_START_REGISTRATION_NOTIFIER ActivityPassword register_on_or_off_net "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_on_or_off_net:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$700(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 413
    :cond_3
    :try_start_2
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->isSoftLock:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$800(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 414
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->displayTooManyAttempsDialog()V
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$900(Lnz/co/telecom/smartphone/activity/ActivityPassword;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 499
    :catch_1
    move-exception v2

    .line 500
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v5, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error in processng "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 416
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_4
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->validateAllFields()Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v4

    .line 417
    .local v4, "validFields":Z
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 418
    iget-object v5, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATUS_START_REGISTRATION_NOTIFIER ActivityPsassword validFields "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_5
    if-eqz v4, :cond_6

    .line 420
    const/4 v5, 0x0

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->toggleProgressBar(I)V
    invoke-static {v1, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$300(Lnz/co/telecom/smartphone/activity/ActivityPassword;I)V

    .line 422
    new-instance v5, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;

    invoke-direct {v5, p0, v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;-><init>(Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler;Lnz/co/telecom/smartphone/activity/ActivityPassword;)V

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword$MyHandler$1;->start()V

    goto/16 :goto_0

    .line 496
    :cond_6
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->displayRegistrationFieldsDialog()V
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1900(Lnz/co/telecom/smartphone/activity/ActivityPassword;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 505
    .end local v4    # "validFields":Z
    :pswitch_7
    :try_start_5
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_content_no_data_error:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$400(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Landroid/widget/RelativeLayout;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 506
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_on_or_off_net:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$700(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 507
    const/4 v5, 0x0

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->displayRequestCodeError(I)V
    invoke-static {v1, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$2000(Lnz/co/telecom/smartphone/activity/ActivityPassword;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 513
    :pswitch_8
    :try_start_6
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 514
    iget-object v5, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATUS_REGISTRATION_COMPLETE_NOTIFIER dataServices "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->dataServices:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_7
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 516
    iget-object v5, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATUS_REGISTRATION_COMPLETE_NOTIFIER dataServices.getUserCredentials() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->dataServices:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v7}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getUserCredentials()Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_8
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 518
    iget-object v5, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATUS_REGISTRATION_COMPLETE_NOTIFIER "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_password:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1100(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v7

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_9
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 520
    iget-object v5, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATUS_REGISTRATION_COMPLETE_NOTIFIER mMobilePhoneNumber "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->mMobilePhoneNumber:Ljava/lang/String;
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1500(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_a
    iget-object v5, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->dataServices:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v5}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getUserCredentials()Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    move-result-object v3

    .line 523
    .local v3, "userCredentialsDTO":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->mMobilePhoneNumber:Ljava/lang/String;
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1500(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserMobileNumber(Ljava/lang/String;)V

    .line 524
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_password_password:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$1100(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserPassword(Ljava/lang/String;)V

    .line 525
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setAutoSignin(Z)V

    .line 526
    iget-object v5, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->dataServices:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v5, v3}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->storeUserCredentials(Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;)V

    .line 528
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 529
    iget-object v5, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATUS_REGISTRATION_COMPLETE_NOTIFIER getUserMobileNumber "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserMobileNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_b
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 531
    iget-object v5, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATUS_REGISTRATION_COMPLETE_NOTIFIER getUserPassword "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_c
    iget-object v5, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->mAccessControlController:Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserMobileNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserPassword()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;->performLogin(Ljava/lang/String;Ljava/lang/String;)Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;

    move-result-object v0

    .line 535
    .local v0, "accessControlLoginDTO":Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->accessControlLoginHandler(Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;)Z
    invoke-static {v1, v0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$2100(Lnz/co/telecom/smartphone/activity/ActivityPassword;Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 536
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->showErrorOnAutoLogin()V
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$2200(Lnz/co/telecom/smartphone/activity/ActivityPassword;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 541
    .end local v0    # "accessControlLoginDTO":Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
    .end local v3    # "userCredentialsDTO":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    :catch_2
    move-exception v2

    .line 542
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_7
    iget-object v5, v1, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATUS_REGISTRATION_COMPLETE_NOTIFIER "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 538
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "accessControlLoginDTO":Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
    .restart local v3    # "userCredentialsDTO":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    :cond_d
    :try_start_8
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->displayMainFrame()V
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$2300(Lnz/co/telecom/smartphone/activity/ActivityPassword;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 547
    .end local v0    # "accessControlLoginDTO":Lnz/co/telecom/smartphone/dto/accesscontrol/AccessControlLoginDTO;
    .end local v3    # "userCredentialsDTO":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    :pswitch_9
    const/16 v5, 0x8

    :try_start_9
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->toggleProgressBar(I)V
    invoke-static {v1, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$300(Lnz/co/telecom/smartphone/activity/ActivityPassword;I)V

    .line 548
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->register_on_or_off_net:Z
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$700(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 549
    const/4 v5, 0x0

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->displayRequestCodeError(I)V
    invoke-static {v1, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$2000(Lnz/co/telecom/smartphone/activity/ActivityPassword;I)V

    .line 551
    :cond_e
    const/16 v5, 0x3e5

    invoke-virtual {v1, v5}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->showDialog(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
