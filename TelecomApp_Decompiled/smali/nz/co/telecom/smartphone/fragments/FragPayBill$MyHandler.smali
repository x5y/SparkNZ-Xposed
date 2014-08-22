.class Lnz/co/telecom/smartphone/fragments/FragPayBill$MyHandler;
.super Landroid/os/Handler;
.source "FragPayBill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragPayBill;
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
            "Lnz/co/telecom/smartphone/fragments/FragPayBill;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V
    .locals 1
    .param p1, "myFrag"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .prologue
    .line 338
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 339
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyHandler;->myFrag:Ljava/lang/ref/WeakReference;

    .line 340
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v12, 0x7f020211

    const/4 v11, 0x1

    const v10, 0x7f0b0070

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 344
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 346
    iget-object v5, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyHandler;->myFrag:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;

    .line 347
    .local v0, "fragRef":Lnz/co/telecom/smartphone/fragments/FragPayBill;
    if-eqz v0, :cond_1

    .line 348
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$000(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 349
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "paybillhandler "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 516
    :cond_1
    :goto_0
    return-void

    .line 353
    :sswitch_0
    invoke-virtual {v0, v8}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->toggleTermsAndConditions(I)V

    goto :goto_0

    .line 357
    :sswitch_1
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 358
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_ok_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$600()Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v5

    invoke-virtual {v5, v9}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 359
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_cancel_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$700()Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v5

    invoke-virtual {v5, v8}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 360
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_retry_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$800()Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v5

    invoke-virtual {v5, v8}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 361
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getBadRequestResponseDTO()Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;

    move-result-object v5

    if-nez v5, :cond_5

    .line 364
    :cond_2
    new-instance v3, Lnz/co/telecom/smartphone/util/NetworkUtils;

    invoke-direct {v3}, Lnz/co/telecom/smartphone/util/NetworkUtils;-><init>()V

    .line 365
    .local v3, "nu":Lnz/co/telecom/smartphone/util/NetworkUtils;
    invoke-virtual {v3}, Lnz/co/telecom/smartphone/util/NetworkUtils;->isNetworkAvailable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 366
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->no_data_error_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    const v6, 0x7f0e00c5

    invoke-virtual {v0, v6}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->no_data_error_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const v6, 0x7f0e00c6

    invoke-virtual {v0, v6}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->noDataErrorTryAgainBtn:Lnz/co/telecom/smartphone/widget/TMYButton;

    const v6, 0x7f0e001c

    invoke-virtual {v0, v6}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYButton;->setText(Ljava/lang/CharSequence;)V

    .line 380
    :goto_1
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$900()Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    move-result-object v5

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$200(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1000()Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$300(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    .end local v3    # "nu":Lnz/co/telecom/smartphone/util/NetworkUtils;
    :cond_3
    :goto_2
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_text:Landroid/widget/RelativeLayout;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1100()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 394
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$900()Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    move-result-object v5

    sget-object v6, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setTextColor(I)V

    .line 396
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1000()Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    sget-object v6, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setTextColor(I)V

    .line 398
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_paybill_results:Landroid/widget/RelativeLayout;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1200()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 399
    const-string v5, "paybill:result"

    invoke-static {v5}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 373
    .restart local v3    # "nu":Lnz/co/telecom/smartphone/util/NetworkUtils;
    :cond_4
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->no_data_error_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    const v6, 0x7f0e007a

    invoke-virtual {v0, v6}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->no_data_error_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const v6, 0x7f0e0079

    invoke-virtual {v0, v6}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->noDataErrorTryAgainBtn:Lnz/co/telecom/smartphone/widget/TMYButton;

    const v6, 0x7f0e0092

    invoke-virtual {v0, v6}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 384
    .end local v3    # "nu":Lnz/co/telecom/smartphone/util/NetworkUtils;
    :cond_5
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

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

    .line 386
    .local v2, "message":Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$900()Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    move-result-object v5

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1000()Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    invoke-virtual {v2}, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 403
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "message":Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;
    :sswitch_2
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 404
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_no_data_error:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 405
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getDTO()V

    goto/16 :goto_0

    .line 409
    :sswitch_3
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 410
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_no_data_error:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 411
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->refreshPageDetails()V

    goto/16 :goto_0

    .line 415
    :sswitch_4
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 416
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->progress_block_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1300(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    sget-object v6, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e00c1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->progress_block_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1300(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    .line 420
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$000(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 421
    sget-object v5, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    const-string v6, " MESSAGE_LOAD_ACCOUNT_INFO"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_6
    # invokes: Lnz/co/telecom/smartphone/fragments/FragPayBill;->loadAccountInfo()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1400(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V

    goto/16 :goto_0

    .line 427
    :sswitch_5
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 428
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->progress_block_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1300(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    .line 429
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_account_layout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1500(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 430
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_amount_layout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1600(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 431
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_account_no_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1700(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYEditText;->setText(Ljava/lang/CharSequence;)V

    .line 434
    const/4 v5, 0x0

    # setter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->accountNo:Ljava/lang/String;
    invoke-static {v0, v5}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1802(Lnz/co/telecom/smartphone/fragments/FragPayBill;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v5}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->getUserCredentials()Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    move-result-object v4

    .line 437
    .local v4, "userCredentialsDTO":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->accountNo:Ljava/lang/String;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1800(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->setUserAccountNumber(Ljava/lang/String;)V

    .line 438
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mDataServicesController:Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;

    invoke-interface {v5, v4}, Lnz/co/telecom/smartphone/controller/dataservices/DataServicesControllerInterface;->storeUserCredentials(Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;)V

    .line 441
    # invokes: Lnz/co/telecom/smartphone/fragments/FragPayBill;->createDialog(I)Landroid/app/Dialog;
    invoke-static {v0, v11}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1900(Lnz/co/telecom/smartphone/fragments/FragPayBill;I)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 445
    .end local v4    # "userCredentialsDTO":Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    :sswitch_6
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 446
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->progress_block_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1300(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    .line 449
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_account_layout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1500(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 450
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_amount_layout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1600(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 452
    # invokes: Lnz/co/telecom/smartphone/fragments/FragPayBill;->displayAmount()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$2000(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V

    goto/16 :goto_0

    .line 456
    :sswitch_7
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 457
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->progress_block_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1300(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setVisibility(I)V

    .line 458
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->progress_block_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1300(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    sget-object v6, Lnz/co/telecom/smartphone/fragments/FragPayBill;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e009b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    new-instance v5, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyHandler$1;

    invoke-direct {v5, p0, v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyHandler$1;-><init>(Lnz/co/telecom/smartphone/fragments/FragPayBill$MyHandler;Lnz/co/telecom/smartphone/fragments/FragPayBill;)V

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyHandler$1;->start()V

    goto/16 :goto_0

    .line 469
    :sswitch_8
    const-string v5, "paybill:creditcardwebview"

    invoke-static {v5}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;)V

    .line 470
    # invokes: Lnz/co/telecom/smartphone/fragments/FragPayBill;->callCreditCardPage()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$2200(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V

    goto/16 :goto_0

    .line 474
    :sswitch_9
    iget-object v5, v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 475
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_layout_scroll_view:Landroid/widget/ScrollView;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$2300(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 476
    sput-boolean v8, Lnz/co/telecom/smartphone/fragments/FragPayBill;->creditCardPageDisplayed:Z

    .line 477
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->oneResult:I
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$100(Lnz/co/telecom/smartphone/fragments/FragPayBill;)I

    move-result v5

    if-ne v5, v11, :cond_7

    .line 478
    const-string v5, "paybill:success:creditcard"

    invoke-static {v5}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;)V

    .line 479
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->credit_card_web_view:Landroid/webkit/WebView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$2400()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 480
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_text:Landroid/widget/RelativeLayout;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1100()Landroid/widget/RelativeLayout;

    move-result-object v5

    const v6, 0x7f0201d0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 481
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_ok_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$600()Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v5

    invoke-virtual {v5, v8}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 482
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_cancel_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$700()Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v5

    invoke-virtual {v5, v9}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 483
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_retry_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$800()Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v5

    invoke-virtual {v5, v9}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 484
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_error_close_error_IV:Landroid/widget/ImageView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$2500()Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020140

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 486
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$900()Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    move-result-object v5

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0050

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setTextColor(I)V

    .line 488
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$900()Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    move-result-object v5

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$200(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1000()Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b004f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setTextColor(I)V

    .line 491
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1000()Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$300(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_paybill_results:Landroid/widget/RelativeLayout;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1200()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 493
    const-string v5, "paybill:result"

    invoke-static {v5}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 495
    :cond_7
    const-string v5, "paybill:fail:creditcard"

    invoke-static {v5}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;)V

    .line 496
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->credit_card_web_view:Landroid/webkit/WebView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$2400()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 497
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_text:Landroid/widget/RelativeLayout;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1100()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 498
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_ok_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$600()Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v5

    invoke-virtual {v5, v9}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 499
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_paybill_results:Landroid/widget/RelativeLayout;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1200()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 500
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_cancel_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$700()Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v5

    invoke-virtual {v5, v8}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 501
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_retry_btn:Lnz/co/telecom/smartphone/widget/TMYButton;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$800()Lnz/co/telecom/smartphone/widget/TMYButton;

    move-result-object v5

    invoke-virtual {v5, v8}, Lnz/co/telecom/smartphone/widget/TMYButton;->setVisibility(I)V

    .line 502
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_error_close_error_IV:Landroid/widget/ImageView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$2500()Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020141

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 504
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$900()Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    move-result-object v5

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0071

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setTextColor(I)V

    .line 506
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$900()Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    move-result-object v5

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnTitle:Ljava/lang/String;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$200(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1000()Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setTextColor(I)V

    .line 509
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->paybill_results_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1000()Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v5

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->returnContent:Ljava/lang/String;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$300(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->content_paybill_results:Landroid/widget/RelativeLayout;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$1200()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 351
    nop

    :sswitch_data_0
    .sparse-switch
        0x201 -> :sswitch_2
        0x202 -> :sswitch_3
        0x204 -> :sswitch_1
        0x206 -> :sswitch_0
        0x321 -> :sswitch_4
        0x322 -> :sswitch_5
        0x323 -> :sswitch_6
        0x324 -> :sswitch_7
        0x325 -> :sswitch_9
        0x326 -> :sswitch_8
    .end sparse-switch
.end method
