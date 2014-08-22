.class public Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;
.super Lnz/co/telecom/smartphone/activity/RoboSherlockFragmentActivity;
.source "ActivityNavigationDrawer.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$RefreshOnlineStatusReceiver;
    }
.end annotation


# static fields
.field private static final CONTENT_VIEW_ID:I = 0x48a213

.field private static final ERROR_OCCURED_DIALOG:I = 0x3e7

.field public static final EXTRA_RESULTS_ERROR:Ljava/lang/String; = "EXTRA_ERROR"

.field public static final EXTRA_RESULTS_ERROR_INT:I = 0x0

.field public static final EXTRA_RESULTS_RECEIVER:Ljava/lang/String; = "EXTRA_RESULTS"

.field public static final EXTRA_RESULTS_SUCCESS:Ljava/lang/String; = "EXTRA_SUCCESS"

.field public static final EXTRA_RESULTS_SUCCESS_INT:I = 0x1

.field public static final NETWORK_CONNECTIONS_CONNECTED:I = 0x1

.field public static final NETWORK_CONNECTIONS_DISCONNECTED:I = 0x0

.field public static final NETWORK_CONNECTIONS_RESULTS:Ljava/lang/String; = "NETWORK_CONNECTIONS_RESULTS"

.field public static final S_MAIN_FRAGMENT_TAG:Ljava/lang/String; = "MAIN_FRAGMENT_TAG"

.field private static final TAG:Ljava/lang/String;

.field public static final TOPUP_RESULTS_RECEIVER:Ljava/lang/String; = "TOPUP_RESULTS"

.field public static savedFragId:I


# instance fields
.field private final debug:Z

.field private extrasReceiver:Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;

.field private inflater:Landroid/view/LayoutInflater;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

.field private refreshOnlineStatusReceiver:Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$RefreshOnlineStatusReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->TAG:Ljava/lang/String;

    .line 297
    const/4 v0, 0x0

    sput v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->savedFragId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/RoboSherlockFragmentActivity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->debug:Z

    .line 159
    return-void
.end method

.method private configureConnectivityManager()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 338
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 340
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 341
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->toggleNetworkStatus(I)V

    .line 348
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 344
    invoke-virtual {p0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->toggleNetworkStatus(I)V

    goto :goto_0

    .line 346
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->toggleNetworkStatus(I)V

    goto :goto_0
.end method

.method private setInitialFragment()V
    .locals 5

    .prologue
    .line 86
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/MainFragment;->newInstance()Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/fragments/MainFragment;

    iput-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    .line 88
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 89
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 90
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x48a213

    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    const-string v4, "MAIN_FRAGMENT_TAG"

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 91
    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnz/co/telecom/smartphone/fragments/MainFragment;->setRetainInstance(Z)V

    .line 92
    return-void
.end method


# virtual methods
.method protected displayExitDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 242
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 243
    .local v3, "subDialog":Landroid/app/Dialog;
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03001a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, "myDialogView":Landroid/view/View;
    const v4, 0x7f090083

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 245
    .local v2, "popup_dialog_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const v4, 0x7f090084

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 246
    .local v1, "popup_dialog_cancel_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    new-instance v4, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$3;

    invoke-direct {v4, p0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$3;-><init>(Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    new-instance v4, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$4;

    invoke-direct {v4, p0, v3}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$4;-><init>(Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 262
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 263
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 265
    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 266
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 267
    return-void
.end method

.method public hideSoftKeyBoard()V
    .locals 4

    .prologue
    .line 368
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 370
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 371
    .local v0, "currentFocus":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 374
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 271
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    iget-boolean v1, v1, Lnz/co/telecom/smartphone/fragments/MainFragment;->TandCDisplaying:Z

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->toggleTermsAndConditions(I)V

    .line 296
    :goto_0
    return-void

    .line 273
    :cond_0
    sget-boolean v1, Lnz/co/telecom/smartphone/fragments/FragTopUp;->creditCardPageDisplayed:Z

    if-eqz v1, :cond_1

    .line 274
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->showCreditCardCancelled()V

    goto :goto_0

    .line 275
    :cond_1
    sget-boolean v1, Lnz/co/telecom/smartphone/fragments/FragPayBill;->creditCardPageDisplayed:Z

    if-eqz v1, :cond_2

    .line 276
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->showCreditCardCancelled()V

    goto :goto_0

    .line 278
    :cond_2
    sput v3, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->savedFragId:I

    .line 279
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 280
    .local v0, "manager":Landroid/support/v4/app/FragmentManager;
    if-eqz v0, :cond_5

    .line 281
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 282
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    sget v1, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    if-eqz v1, :cond_3

    .line 283
    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v2, v3, v3}, Lnz/co/telecom/smartphone/fragments/MainFragment;->getCurrentFragment(IZ)Lnz/co/telecom/smartphone/fragments/FragBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnz/co/telecom/smartphone/fragments/MainFragment;->switchContent(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    goto :goto_0

    .line 285
    :cond_3
    invoke-super {p0}, Lnz/co/telecom/smartphone/activity/RoboSherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 289
    :cond_4
    invoke-super {p0}, Lnz/co/telecom/smartphone/activity/RoboSherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 292
    :cond_5
    invoke-super {p0}, Lnz/co/telecom/smartphone/activity/RoboSherlockFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x1

    .line 70
    invoke-super {p0, p1}, Lnz/co/telecom/smartphone/activity/RoboSherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 76
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, "frame":Landroid/widget/FrameLayout;
    const v1, 0x48a213

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 78
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    if-nez p1, :cond_0

    .line 81
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->setInitialFragment()V

    .line 83
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 180
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 181
    .local v4, "subDialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 211
    :goto_0
    invoke-super {p0, p1}, Lnz/co/telecom/smartphone/activity/RoboSherlockFragmentActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    return-object v5

    .line 183
    :pswitch_0
    iget-object v5, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030045

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, "myDialogView":Landroid/view/View;
    const v5, 0x7f090132

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;

    .line 185
    .local v3, "popup_dialog_title_TV":Lnz/co/telecom/smartphone/widget/TMYBoldTextView;
    const v5, 0x7f090133

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 186
    .local v1, "popup_dialog_content_TV":Lnz/co/telecom/smartphone/widget/TMYTextView;
    const v5, 0x7f090136

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnz/co/telecom/smartphone/widget/TMYButton;

    .line 187
    .local v2, "popup_dialog_ok_btn":Lnz/co/telecom/smartphone/widget/TMYButton;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lnz/co/telecom/smartphone/widget/TMYBoldTextView;->setVisibility(I)V

    .line 188
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0079

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnz/co/telecom/smartphone/widget/TMYTextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    new-instance v5, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$1;

    invoke-direct {v5, p0, v4}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$1;-><init>(Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 196
    new-instance v5, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$2;

    invoke-direct {v5, p0, v4}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$2;-><init>(Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Lnz/co/telecom/smartphone/widget/TMYButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 204
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 205
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 207
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x3e7
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lnz/co/telecom/smartphone/activity/RoboSherlockFragmentActivity;->onPause()V

    .line 115
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->extrasReceiver:Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->extrasReceiver:Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->refreshOnlineStatusReceiver:Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$RefreshOnlineStatusReceiver;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->refreshOnlineStatusReceiver:Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$RefreshOnlineStatusReceiver;

    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    :cond_1
    sget v0, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    sput v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->savedFragId:I

    .line 122
    invoke-static {}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->stopActivity()V

    .line 123
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 317
    invoke-super {p0, p1}, Lnz/co/telecom/smartphone/activity/RoboSherlockFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 322
    :try_start_0
    const-string v1, "fragmentId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->savedFragId:I

    .line 325
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "mContent"

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "mContent"

    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "mContent"

    invoke-virtual {v3, p1, v4}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRestoreInstanceState error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 127
    invoke-super {p0}, Lnz/co/telecom/smartphone/activity/RoboSherlockFragmentActivity;->onResume()V

    .line 129
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->inflater:Landroid/view/LayoutInflater;

    .line 133
    new-instance v4, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;

    invoke-direct {v4}, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;-><init>()V

    iput-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->extrasReceiver:Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;

    .line 135
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "EXTRA_RESULTS"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, "extraFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->extrasReceiver:Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;

    invoke-virtual {p0, v4, v1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    new-instance v4, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$RefreshOnlineStatusReceiver;

    invoke-direct {v4, p0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$RefreshOnlineStatusReceiver;-><init>(Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;)V

    iput-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->refreshOnlineStatusReceiver:Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$RefreshOnlineStatusReceiver;

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "NETWORK_CONNECTIONS_RESULTS"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "connectionFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->refreshOnlineStatusReceiver:Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer$RefreshOnlineStatusReceiver;

    invoke-virtual {p0, v4, v0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    invoke-static {p0}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->startActivity(Landroid/app/Activity;)V

    .line 145
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    if-nez v4, :cond_0

    .line 146
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 147
    .local v2, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 148
    .local v3, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 150
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->setInitialFragment()V

    .line 151
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/fragments/MainFragment;->setCurrentNavigationMenuFragment(I)V

    .line 152
    const-string v4, "usage"

    invoke-static {v4}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageEvent(Ljava/lang/String;)V

    .line 156
    .end local v2    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v3    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :goto_0
    invoke-direct {p0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->configureConnectivityManager()V

    .line 157
    return-void

    .line 154
    :cond_0
    iget-object v4, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    sget v5, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->savedFragId:I

    invoke-virtual {v4, v5}, Lnz/co/telecom/smartphone/fragments/MainFragment;->setCurrentNavigationMenuFragment(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 301
    invoke-super {p0, p1}, Lnz/co/telecom/smartphone/activity/RoboSherlockFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 305
    :try_start_0
    const-string v1, "fragmentId"

    sget v2, Lnz/co/telecom/smartphone/fragments/MainFragment;->myCurrentFragmentId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "mContent"

    iget-object v3, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveInstanceState error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshNavigationMenu(ZZZ)V
    .locals 1
    .param p1, "isPrepaid"    # Z
    .param p2, "isPostpaid"    # Z
    .param p3, "billPaymentAvailable"    # Z

    .prologue
    .line 363
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v0, p1, p2, p3}, Lnz/co/telecom/smartphone/fragments/MainFragment;->refreshNavigationMenu(ZZZ)V

    .line 365
    return-void
.end method

.method public setCurrentNavigationMenuFragment(I)V
    .locals 1
    .param p1, "fragmentId"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/fragments/MainFragment;->setCurrentNavigationMenuFragment(I)V

    .line 96
    return-void
.end method

.method public showRefreshButton(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/fragments/MainFragment;->showRefreshButton(Z)V

    .line 104
    return-void
.end method

.method public switchContent(Lnz/co/telecom/smartphone/fragments/FragBase;)V
    .locals 1
    .param p1, "fragmentContent"    # Lnz/co/telecom/smartphone/fragments/FragBase;

    .prologue
    .line 99
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/fragments/MainFragment;->switchContent(Lnz/co/telecom/smartphone/fragments/FragBase;)V

    .line 100
    return-void
.end method

.method toggleNetworkStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/fragments/MainFragment;->toggleNetworkStatus(I)V

    .line 359
    :cond_0
    return-void
.end method

.method public toggleTermsAndConditions(I)V
    .locals 1
    .param p1, "isVisible"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->mMainFragment:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-virtual {v0, p1}, Lnz/co/telecom/smartphone/fragments/MainFragment;->toggleTermsAndConditions(I)V

    .line 108
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x1

    .line 221
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v0, "activityWelcomeIntent":Landroid/content/Intent;
    const-class v1, Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 223
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 224
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 226
    instance-of v1, p2, Lnz/co/telecom/smartphone/exception/InvalidSessionTokenException;

    if-eqz v1, :cond_0

    .line 229
    const-string v1, "is.from.session.expiry"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 236
    :goto_0
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->finish()V

    .line 237
    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->startActivity(Landroid/content/Intent;)V

    .line 239
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 240
    return-void

    .line 232
    :cond_0
    sget-object v1, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->TAG:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    const-string v1, "is.from.crash"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method
