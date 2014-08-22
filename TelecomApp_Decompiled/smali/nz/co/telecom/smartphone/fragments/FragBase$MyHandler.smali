.class Lnz/co/telecom/smartphone/fragments/FragBase$MyHandler;
.super Landroid/os/Handler;
.source "FragBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragBase;
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
            "Lnz/co/telecom/smartphone/fragments/FragBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/fragments/FragBase;)V
    .locals 1
    .param p1, "myFrags"    # Lnz/co/telecom/smartphone/fragments/FragBase;

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 131
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase$MyHandler;->myFrag:Ljava/lang/ref/WeakReference;

    .line 132
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 136
    iget-object v8, p0, Lnz/co/telecom/smartphone/fragments/FragBase$MyHandler;->myFrag:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnz/co/telecom/smartphone/fragments/FragBase;

    .line 137
    .local v7, "weakFrags":Lnz/co/telecom/smartphone/fragments/FragBase;
    if-eqz v7, :cond_1

    .line 139
    # getter for: Lnz/co/telecom/smartphone/fragments/FragBase;->debug:Z
    invoke-static {v7}, Lnz/co/telecom/smartphone/fragments/FragBase;->access$000(Lnz/co/telecom/smartphone/fragments/FragBase;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 140
    sget-object v8, Lnz/co/telecom/smartphone/fragments/FragBase;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "msg.what = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 249
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 144
    :pswitch_1
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lnz/co/telecom/smartphone/fragments/FragBase;->toggleTermsAndConditions(I)V

    goto :goto_0

    .line 149
    :pswitch_2
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->content_no_data_error:Landroid/widget/RelativeLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    invoke-virtual {v7}, Lnz/co/telecom/smartphone/fragments/FragBase;->isDTOCached()Z

    move-result v3

    .line 152
    .local v3, "isDTOCached":Z
    if-nez v3, :cond_2

    .line 153
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->content_progressbar:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    invoke-virtual {v7}, Lnz/co/telecom/smartphone/fragments/FragBase;->getDTO()V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v4, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->mLineExtendedDTO:Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;

    .line 160
    .local v4, "lineExtendedDTO":Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
    invoke-virtual {v7}, Lnz/co/telecom/smartphone/fragments/FragBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    .line 162
    .local v0, "and":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->isPrePaid()Z

    move-result v8

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->isPostPaid()Z

    move-result v9

    invoke-virtual {v4}, Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;->getBillPaymentAvailable()Z

    move-result v10

    invoke-virtual {v0, v8, v9, v10}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->refreshNavigationMenu(ZZZ)V

    .line 168
    :cond_3
    const/16 v8, 0x202

    invoke-virtual {v7, v8}, Lnz/co/telecom/smartphone/fragments/FragBase;->createMessage(I)V

    goto :goto_0

    .line 178
    .end local v0    # "and":Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
    .end local v3    # "isDTOCached":Z
    .end local v4    # "lineExtendedDTO":Lnz/co/telecom/smartphone/dto/lineextended/LineExtendedDTO;
    :pswitch_3
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->content_progressbar:Landroid/widget/RelativeLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 179
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->content_no_data_error:Landroid/widget/RelativeLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 180
    invoke-virtual {v7}, Lnz/co/telecom/smartphone/fragments/FragBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lnz/co/telecom/smartphone/fragments/FragBase;->isAdded()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 182
    :try_start_0
    invoke-virtual {v7}, Lnz/co/telecom/smartphone/fragments/FragBase;->refreshPageDetails()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Lnz/co/telecom/smartphone/fragments/FragBase;->TAG:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 188
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const/16 v8, 0x201

    invoke-virtual {v7, v8}, Lnz/co/telecom/smartphone/fragments/FragBase;->createMessage(I)V

    goto :goto_0

    .line 195
    :pswitch_4
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->content_progressbar:Landroid/widget/RelativeLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 196
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->no_data_icons_layout:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 197
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->content_no_data_error:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 202
    :pswitch_5
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    if-eqz v8, :cond_5

    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    invoke-virtual {v8}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getBadRequestResponseDTO()Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;

    move-result-object v8

    if-nez v8, :cond_8

    .line 205
    :cond_5
    new-instance v6, Lnz/co/telecom/smartphone/util/NetworkUtils;

    invoke-direct {v6}, Lnz/co/telecom/smartphone/util/NetworkUtils;-><init>()V

    .line 206
    .local v6, "nu":Lnz/co/telecom/smartphone/util/NetworkUtils;
    invoke-virtual {v6}, Lnz/co/telecom/smartphone/util/NetworkUtils;->isNetworkAvailable()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 207
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->no_data_error_IV:Landroid/widget/ImageView;

    const v9, 0x7f020141

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->no_data_error_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    const v9, 0x7f0e00c5

    invoke-virtual {v8, v9}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(I)V

    .line 211
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->no_data_error_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const v9, 0x7f0e00c6

    invoke-virtual {v8, v9}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(I)V

    .line 213
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->noDataErrorTryAgainBtn:Lnz/co/telecom/smartphone/widget/TMYButton;

    const v9, 0x7f0e001c

    invoke-virtual {v8, v9}, Lnz/co/telecom/smartphone/widget/TMYButton;->setText(I)V

    .line 240
    .end local v6    # "nu":Lnz/co/telecom/smartphone/util/NetworkUtils;
    :cond_6
    :goto_1
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->content_progressbar:Landroid/widget/RelativeLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 241
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->no_data_icons_layout:Landroid/widget/RelativeLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 242
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->content_no_data_error:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 216
    .restart local v6    # "nu":Lnz/co/telecom/smartphone/util/NetworkUtils;
    :cond_7
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->no_data_error_IV:Landroid/widget/ImageView;

    const v9, 0x7f020142

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->no_data_error_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    const v9, 0x7f0e007a

    invoke-virtual {v8, v9}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(I)V

    .line 220
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->no_data_error_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    const v9, 0x7f0e0079

    invoke-virtual {v8, v9}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(I)V

    .line 222
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->noDataErrorTryAgainBtn:Lnz/co/telecom/smartphone/widget/TMYButton;

    const v9, 0x7f0e00f2

    invoke-virtual {v8, v9}, Lnz/co/telecom/smartphone/widget/TMYButton;->setText(I)V

    goto :goto_1

    .line 226
    .end local v6    # "nu":Lnz/co/telecom/smartphone/util/NetworkUtils;
    :cond_8
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->no_data_error_IV:Landroid/widget/ImageView;

    const v9, 0x7f020141

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->noDataErrorTryAgainBtn:Lnz/co/telecom/smartphone/widget/TMYButton;

    const v9, 0x7f0e001c

    invoke-virtual {v8, v9}, Lnz/co/telecom/smartphone/widget/TMYButton;->setText(I)V

    .line 230
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->currentHttpServiceException:Lnz/co/telecom/smartphone/service/HttpServiceException;

    invoke-virtual {v8}, Lnz/co/telecom/smartphone/service/HttpServiceException;->getBadRequestResponseDTO()Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;

    move-result-object v8

    invoke-virtual {v8}, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseDTO;->getValues()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;

    .line 232
    .local v5, "message":Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->no_data_error_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v8, v7, Lnz/co/telecom/smartphone/fragments/FragBase;->no_data_error_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/dto/badrequest/BadRequestResponseMessageDTO;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
