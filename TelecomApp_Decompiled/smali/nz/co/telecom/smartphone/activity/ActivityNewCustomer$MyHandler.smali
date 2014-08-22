.class Lnz/co/telecom/smartphone/activity/ActivityNewCustomer$MyHandler;
.super Landroid/os/Handler;
.source "ActivityNewCustomer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;
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
            "Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;)V
    .locals 1
    .param p1, "activity"    # Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 52
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;

    .line 58
    .local v0, "activity":Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;
    if-eqz v0, :cond_0

    .line 60
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 62
    :pswitch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->TAG:Ljava/lang/String;

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

    .line 66
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    const/16 v3, 0x3e6

    :try_start_1
    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->showDialog(I)V

    goto :goto_0

    .line 70
    :pswitch_3
    const/16 v3, 0x3e7

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->showDialog(I)V

    goto :goto_0

    .line 74
    :pswitch_4
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->register_newcustomer_content_no_data_error:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$000(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 75
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->no_data_icons_layout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 79
    :pswitch_5
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->register_newcustomer_content_no_data_error:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$000(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 80
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->no_data_error_title_TV:Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$100(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;)Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    move-result-object v3

    const v4, 0x7f0e00c5

    invoke-virtual {v0, v4}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->no_data_error_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$200(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v3

    const v4, 0x7f0e00c6

    invoke-virtual {v0, v4}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->no_data_icons_layout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 87
    :pswitch_6
    const/4 v3, 0x0

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->toggleProgressBar(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$300(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v2, "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const v4, 0x7f0e00ae

    invoke-virtual {v0, v4}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->getString(I)Ljava/lang/String;

    move-result-object v4

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->register_newcustomer_main_mobile_no_ET:Lnz/co/telecom/smartphone/widget/TMYEditText;
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$400(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;)Lnz/co/telecom/smartphone/widget/TMYEditText;

    move-result-object v5

    invoke-virtual {v5}, Lnz/co/telecom/smartphone/widget/TMYEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->removeEmptySpacesInPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->registrationController:Lnz/co/telecom/smartphone/controller/RegistrationController;

    invoke-virtual {v3, v2}, Lnz/co/telecom/smartphone/controller/RegistrationController;->createTokenSession(Ljava/util/ArrayList;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v3

    # setter for: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$502(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    .line 92
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$500(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 93
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$500(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getCodeInt()I

    move-result v3

    sget v4, Lnz/co/telecom/smartphone/TelecomConstants;->REGISTRATION_CODE_NON_TELECOM:I

    if-ne v3, v4, :cond_1

    .line 94
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$500(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getDescription()Ljava/lang/String;

    move-result-object v3

    # setter for: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->errorMessageFromServer:Ljava/lang/String;
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$602(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    const/16 v3, 0x20d

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->createMessage(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$700(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 105
    .end local v2    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_1
    move-exception v1

    .line 106
    .restart local v1    # "e":Ljava/lang/Exception;
    const/16 v3, 0x208

    :try_start_3
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->createMessage(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$700(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 107
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 96
    .restart local v2    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :cond_1
    :try_start_5
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$500(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getCodeInt()I

    move-result v3

    sget v4, Lnz/co/telecom/smartphone/TelecomConstants;->REGISTRATION_CODE_SUCCESS:I

    if-ne v3, v4, :cond_2

    .line 97
    const/16 v3, 0x20b

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->createMessage(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$700(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;I)V

    goto/16 :goto_0

    .line 99
    :cond_2
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->rdto:Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$500(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;)Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;

    move-result-object v3

    invoke-virtual {v3}, Lnz/co/telecom/smartphone/dto/registration/RegistrationDTO;->getDescription()Ljava/lang/String;

    move-result-object v3

    # setter for: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->errorMessageFromServer:Ljava/lang/String;
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$602(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    const/16 v3, 0x20d

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->createMessage(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$700(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;I)V

    goto/16 :goto_0

    .line 103
    :cond_3
    const/16 v3, 0x20a

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->createMessage(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$700(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 113
    .end local v2    # "urlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :pswitch_7
    const/16 v3, 0x8

    :try_start_6
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->toggleProgressBar(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$300(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;I)V

    .line 114
    const/16 v3, 0x3e5

    invoke-virtual {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->showDialog(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 120
    :pswitch_8
    :try_start_7
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->createPassword()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$800(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 121
    :catch_2
    move-exception v1

    .line 122
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_8
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->TAG:Ljava/lang/String;

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
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 123
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    :try_start_9
    throw v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 130
    :pswitch_9
    const/16 v3, 0x8

    :try_start_a
    # invokes: Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->toggleProgressBar(I)V
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->access$300(Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_0

    .line 132
    :catch_3
    move-exception v1

    .line 133
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_b
    iget-object v3, v0, Lnz/co/telecom/smartphone/activity/ActivityNewCustomer;->TAG:Ljava/lang/String;

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
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_0

    .line 134
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v3

    :try_start_c
    throw v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 60
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
        :pswitch_8
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method
