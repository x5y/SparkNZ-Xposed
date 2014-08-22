.class Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler;
.super Landroid/os/Handler;
.source "FragTopUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragTopUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private myFrag:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnz/co/telecom/smartphone/fragments/FragTopUp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V
    .locals 1
    .param p1, "myFrags"    # Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .prologue
    .line 388
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 389
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler;->myFrag:Ljava/lang/ref/WeakReference;

    .line 390
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v8, 0x7f0b0070

    const/4 v12, 0x1

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 394
    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler;->myFrag:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;

    .line 395
    .local v4, "weakFrags":Lnz/co/telecom/smartphone/fragments/FragTopUp;
    if-eqz v4, :cond_1

    .line 396
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 397
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tophandler "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 606
    :cond_1
    :goto_0
    return-void

    .line 400
    :sswitch_0
    invoke-virtual {v4, v10}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->toggleTermsAndConditions(I)V

    goto :goto_0

    .line 405
    :sswitch_1
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 406
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_ok_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$800()Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v5

    invoke-virtual {v5, v11}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 407
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_cancel_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$900()Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v5

    invoke-virtual {v5, v10}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 408
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_retry_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1000()Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v5

    invoke-virtual {v5, v10}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 409
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getBadRequestResponseDTO()Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;

    move-result-object v5

    if-nez v5, :cond_5

    .line 410
    :cond_2
    new-instance v3, Lnz/co/telecom/smartphone/util/NetworkUtils;

    invoke-direct {v3}, Lnz/co/telecom/smartphone/util/NetworkUtils;-><init>()V

    .line 411
    .local v3, "nu":Lnz/co/telecom/smartphone/util/NetworkUtils;
    invoke-virtual {v3}, Lnz/co/telecom/smartphone/util/NetworkUtils;->isNetworkAvailable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 412
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->no_data_error_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    const v6, 0x7f0e00c5

    invoke-virtual {v4, v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->no_data_error_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const v6, 0x7f0e00c6

    invoke-virtual {v4, v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->noDataErrorTryAgainBtn:Lnz/co/telecom/smartphone/widget/TMYButton;

    const v6, 0x7f0e001c

    invoke-virtual {v4, v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYButton;->setText(Ljava/lang/CharSequence;)V

    .line 420
    :goto_1
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1200()Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    move-result-object v5

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1100(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1400()Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1300(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    .end local v3    # "nu":Lnz/co/telecom/smartphone/util/NetworkUtils;
    :cond_3
    :goto_2
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_text:Landroid/widget/RelativeLayout;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1500()Landroid/widget/RelativeLayout;

    move-result-object v5

    const v6, 0x7f020211

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 432
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1200()Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    move-result-object v5

    sget-object v6, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setTextColor(I)V

    .line 434
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1400()Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    sget-object v6, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setTextColor(I)V

    .line 436
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_topup_results:Landroid/widget/RelativeLayout;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1600()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 416
    .restart local v3    # "nu":Lnz/co/telecom/smartphone/util/NetworkUtils;
    :cond_4
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->no_data_error_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    const v6, 0x7f0e007a

    invoke-virtual {v4, v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->no_data_error_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const v6, 0x7f0e0079

    invoke-virtual {v4, v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->noDataErrorTryAgainBtn:Lnz/co/telecom/smartphone/widget/TMYButton;

    const v6, 0x7f0e00f2

    invoke-virtual {v4, v6}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 423
    .end local v3    # "nu":Lnz/co/telecom/smartphone/util/NetworkUtils;
    :cond_5
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getBadRequestResponseDTO()Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;

    .line 424
    .local v2, "message":Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1200()Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    move-result-object v5

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1400()Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 440
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "message":Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;
    :sswitch_2
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 441
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_no_data_error:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 442
    invoke-virtual {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getDTO()V

    goto/16 :goto_0

    .line 446
    :sswitch_3
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 447
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 448
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_no_data_error:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 449
    invoke-virtual {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->refreshPageDetails()V

    goto/16 :goto_0

    .line 453
    :sswitch_4
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->progress_block_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    sget-object v6, Lnz/co/telecom/smartphone/fragments/FragTopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e00f0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 455
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 456
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " WAIT_FOR_TOPUP_RESULTS voucherSelected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->voucherSelected:Z
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$000(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_6
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->voucherSelected:Z
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$000(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 460
    new-instance v5, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;

    invoke-direct {v5, p0, v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler;Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$1;->start()V

    goto/16 :goto_0

    .line 526
    :cond_7
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 527
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " WAIT_FOR_TOPUP_RESULTS mdnNo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_voucher_mobile_no_EV:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$400(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v7

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_8
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 529
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_layout_scroll_view:Landroid/widget/ScrollView;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2200(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 530
    new-instance v5, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$2;

    invoke-direct {v5, p0, v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$2;-><init>(Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler;Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyHandler$2;->start()V

    goto/16 :goto_0

    .line 540
    :sswitch_5
    # invokes: Lnz/co/telecom/smartphone/fragments/FragTopUp;->callCreditCardPage()V
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2400(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    goto/16 :goto_0

    .line 544
    :sswitch_6
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 545
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_layout_scroll_view:Landroid/widget/ScrollView;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2200(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 546
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2500()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/webkit/WebView;->setVisibility(I)V

    goto/16 :goto_0

    .line 550
    :sswitch_7
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 551
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_layout_scroll_view:Landroid/widget/ScrollView;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2200(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 552
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->oneResult:I
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2000(Lnz/co/telecom/smartphone/fragments/FragTopUp;)I

    move-result v5

    if-ne v5, v12, :cond_b

    .line 553
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 555
    .local v0, "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->creditCardSelected:Z
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2600(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 556
    const-string v5, "amountToTopUp"

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->amountToTopUp:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2700()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-string v5, "topup:success:creditcard"

    invoke-static {v5, v0}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 562
    :goto_3
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->mostUpdatedBalance:D
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2100(Lnz/co/telecom/smartphone/fragments/FragTopUp;)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_9

    .line 563
    iget-object v5, v4, Lnz/co/telecom/smartphone/fragments/FragTopUp;->header_message_block_money:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const v6, 0x7f0e001e

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, ""

    aput-object v8, v7, v10

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->mostUpdatedBalance:D
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2100(Lnz/co/telecom/smartphone/fragments/FragTopUp;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {v4, v6, v7}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    :cond_9
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2500()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 566
    sput-boolean v10, Lnz/co/telecom/smartphone/fragments/FragTopUp;->creditCardPageDisplayed:Z

    .line 567
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_ok_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$800()Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v5

    invoke-virtual {v5, v10}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 568
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_cancel_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$900()Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v5

    invoke-virtual {v5, v11}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 569
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_retry_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1000()Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v5

    invoke-virtual {v5, v11}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 570
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_error_close_error_IV:Landroid/widget/ImageView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2800()Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020140

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 571
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_text:Landroid/widget/RelativeLayout;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1500()Landroid/widget/RelativeLayout;

    move-result-object v5

    const v6, 0x7f0201d0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 572
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1200()Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    move-result-object v5

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0050

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setTextColor(I)V

    .line 574
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1200()Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    move-result-object v5

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnTitle:Ljava/lang/String;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1100(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1400()Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b004f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setTextColor(I)V

    .line 577
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1400()Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->returnContent:Ljava/lang/String;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1300(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_topup_results:Landroid/widget/RelativeLayout;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1600()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 559
    :cond_a
    const-string v5, "voucherNo"

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->voucherNo:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1800()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v5, "topup:success:voucher"

    invoke-static {v5, v0}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;Ljava/util/Hashtable;)V

    goto/16 :goto_3

    .line 580
    .end local v0    # "contextData":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_b
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->creditCardSelected:Z
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2600(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 581
    const-string v5, "topup:fail:creditcard"

    invoke-static {v5}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;)V

    .line 585
    :goto_4
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_topup_results:Landroid/widget/RelativeLayout;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1600()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 586
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2500()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 587
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_layout_scroll_view:Landroid/widget/ScrollView;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2200(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 588
    # invokes: Lnz/co/telecom/smartphone/fragments/FragTopUp;->resetCreditCardButtons()V
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$300(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    .line 589
    # invokes: Lnz/co/telecom/smartphone/fragments/FragTopUp;->resetVouchers()V
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2900(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    .line 590
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->ERROR_IN_TOP_UP:I
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$3000(Lnz/co/telecom/smartphone/fragments/FragTopUp;)I

    move-result v5

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 583
    :cond_c
    const-string v5, "topup:fail:voucher"

    invoke-static {v5}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;)V

    goto :goto_4

    .line 596
    :sswitch_8
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->content_topup_results:Landroid/widget/RelativeLayout;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$1600()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 597
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->credit_card_webView:Landroid/webkit/WebView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2500()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 598
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->topup_layout_scroll_view:Landroid/widget/ScrollView;
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2200(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 599
    # invokes: Lnz/co/telecom/smartphone/fragments/FragTopUp;->resetCreditCardButtons()V
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$300(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    .line 600
    # invokes: Lnz/co/telecom/smartphone/fragments/FragTopUp;->resetVouchers()V
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$2900(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    .line 601
    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->ERROR_IN_TOP_UP:I
    invoke-static {v4}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$3000(Lnz/co/telecom/smartphone/fragments/FragTopUp;)I

    move-result v5

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 398
    :sswitch_data_0
    .sparse-switch
        0x201 -> :sswitch_2
        0x202 -> :sswitch_3
        0x204 -> :sswitch_1
        0x206 -> :sswitch_0
        0x308 -> :sswitch_6
        0x309 -> :sswitch_4
        0x30a -> :sswitch_7
        0x30b -> :sswitch_5
        0x30c -> :sswitch_8
    .end sparse-switch
.end method
