.class Lnz/co/telecom/smartphone/fragments/FragHelpSupport$MyHandler;
.super Landroid/os/Handler;
.source "FragHelpSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragHelpSupport;
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
            "Lnz/co/telecom/smartphone/fragments/FragHelpSupport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/fragments/FragHelpSupport;)V
    .locals 1
    .param p1, "myFrags"    # Lnz/co/telecom/smartphone/fragments/FragHelpSupport;

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport$MyHandler;->myFrag:Ljava/lang/ref/WeakReference;

    .line 135
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 139
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport$MyHandler;->myFrag:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;

    .line 140
    .local v0, "weakFrags":Lnz/co/telecom/smartphone/fragments/FragHelpSupport;
    if-eqz v0, :cond_0

    .line 141
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 143
    :pswitch_0
    # getter for: Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->progress_block_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->access$100(Lnz/co/telecom/smartphone/fragments/FragHelpSupport;)Lnz/co/telecom/smartphone/widget/TMYTextView;

    move-result-object v1

    const v2, 0x7f0e005e

    invoke-virtual {v0, v2}, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v1, v0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 145
    iget-object v1, v0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->content_no_data_error:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 148
    :try_start_0
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v1, v0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    iget-object v1, v0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->content_no_data_error:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 159
    :try_start_1
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 162
    :catch_1
    move-exception v1

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
