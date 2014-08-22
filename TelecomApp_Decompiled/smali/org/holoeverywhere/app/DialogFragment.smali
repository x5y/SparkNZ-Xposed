.class public Lorg/holoeverywhere/app/DialogFragment;
.super Lorg/holoeverywhere/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/app/DialogFragment$1;,
        Lorg/holoeverywhere/app/DialogFragment$DialogType;,
        Lorg/holoeverywhere/app/DialogFragment$DialogTransaction;
    }
.end annotation


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDialog:Lorg/holoeverywhere/app/Dialog;

.field mDismissed:Z

.field mShownByMe:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I

.field private mTitle:Ljava/lang/CharSequence;

.field mViewDestroyed:Z

.field private type:Lorg/holoeverywhere/app/DialogFragment$DialogType;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 14
    invoke-direct {p0}, Lorg/holoeverywhere/app/Fragment;-><init>()V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mBackStackId:I

    .line 73
    iput-boolean v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mCancelable:Z

    .line 75
    iput-boolean v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mDismissed:Z

    .line 77
    iput-boolean v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mShowsDialog:Z

    .line 78
    iput v2, p0, Lorg/holoeverywhere/app/DialogFragment;->mStyle:I

    .line 79
    iput v2, p0, Lorg/holoeverywhere/app/DialogFragment;->mTheme:I

    .line 82
    sget-object v0, Lorg/holoeverywhere/app/DialogFragment$DialogType;->Dialog:Lorg/holoeverywhere/app/DialogFragment$DialogType;

    iput-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->type:Lorg/holoeverywhere/app/DialogFragment$DialogType;

    return-void
.end method

.method public static final findInstance(Landroid/support/v4/app/FragmentManager;Ljava/lang/Class;Z)Lorg/holoeverywhere/app/DialogFragment;
    .locals 5
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "makeIfNeed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/holoeverywhere/app/DialogFragment;",
            ">(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/lang/Class",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 53
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "FragmentManager of DialogFragment class is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    :cond_1
    invoke-static {p1}, Lorg/holoeverywhere/app/DialogFragment;->makeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "tag":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/app/DialogFragment;

    .line 59
    .local v1, "fragment":Lorg/holoeverywhere/app/DialogFragment;, "TT;"
    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 60
    invoke-static {p1}, Lorg/holoeverywhere/app/Fragment;->instantiate(Ljava/lang/Class;)Lorg/holoeverywhere/app/Fragment;

    move-result-object v1

    .end local v1    # "fragment":Lorg/holoeverywhere/app/DialogFragment;, "TT;"
    check-cast v1, Lorg/holoeverywhere/app/DialogFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .restart local v1    # "fragment":Lorg/holoeverywhere/app/DialogFragment;, "TT;"
    :cond_2
    return-object v1

    .line 62
    .end local v1    # "fragment":Lorg/holoeverywhere/app/DialogFragment;, "TT;"
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error of finding DialogFragment instance"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static final findInstance(Lorg/holoeverywhere/app/Activity;Ljava/lang/Class;)Lorg/holoeverywhere/app/DialogFragment;
    .locals 1
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/holoeverywhere/app/DialogFragment;",
            ">(",
            "Lorg/holoeverywhere/app/Activity;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/holoeverywhere/app/DialogFragment;->findInstance(Lorg/holoeverywhere/app/Activity;Ljava/lang/Class;Z)Lorg/holoeverywhere/app/DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static final findInstance(Lorg/holoeverywhere/app/Activity;Ljava/lang/Class;Z)Lorg/holoeverywhere/app/DialogFragment;
    .locals 2
    .param p0, "activity"    # Lorg/holoeverywhere/app/Activity;
    .param p2, "makeIfNeed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/holoeverywhere/app/DialogFragment;",
            ">(",
            "Lorg/holoeverywhere/app/Activity;",
            "Ljava/lang/Class",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity of DialogFragment class is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/app/Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/holoeverywhere/app/DialogFragment;->findInstance(Landroid/support/v4/app/FragmentManager;Ljava/lang/Class;Z)Lorg/holoeverywhere/app/DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method private static final makeTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/app/DialogFragment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/holoeverywhere/app/DialogFragment;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/DialogFragment;->dismissInternal(Z)V

    .line 86
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/DialogFragment;->dismissInternal(Z)V

    .line 90
    return-void
.end method

.method dismissInternal(Z)V
    .locals 4
    .param p1, "allowStateLoss"    # Z

    .prologue
    const/4 v3, 0x1

    .line 93
    iget-boolean v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mDismissed:Z

    if-eqz v1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 96
    :cond_0
    iput-boolean v3, p0, Lorg/holoeverywhere/app/DialogFragment;->mDismissed:Z

    .line 97
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mShownByMe:Z

    .line 98
    iget-object v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    invoke-virtual {v1}, Lorg/holoeverywhere/app/Dialog;->dismiss()V

    .line 100
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    .line 102
    :cond_1
    iput-boolean v3, p0, Lorg/holoeverywhere/app/DialogFragment;->mViewDestroyed:Z

    .line 103
    iget v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mBackStackId:I

    if-ltz v1, :cond_2

    .line 104
    invoke-virtual {p0}, Lorg/holoeverywhere/app/DialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lorg/holoeverywhere/app/DialogFragment;->mBackStackId:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManager;->popBackStack(II)V

    .line 106
    const/4 v1, -0x1

    iput v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mBackStackId:I

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p0}, Lorg/holoeverywhere/app/DialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 109
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 110
    if-eqz p1, :cond_3

    .line 111
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public getDialog()Lorg/holoeverywhere/app/Dialog;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    return-object v0
.end method

.method public getDialogType()Lorg/holoeverywhere/app/DialogFragment$DialogType;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->type:Lorg/holoeverywhere/app/DialogFragment$DialogType;

    return-object v0
.end method

.method public bridge synthetic getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/DialogFragment;->getLayoutInflater(Landroid/os/Bundle;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Lorg/holoeverywhere/LayoutInflater;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_0

    .line 130
    invoke-super {p0, p1}, Lorg/holoeverywhere/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 132
    :cond_0
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Lorg/holoeverywhere/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    .line 133
    iget-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    iget-object v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mTitle:Ljava/lang/CharSequence;

    .line 137
    :cond_1
    iget v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mStyle:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_1
    iget-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater;->from(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    goto :goto_0

    .line 139
    :pswitch_0
    iget-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 144
    :pswitch_1
    iget-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_1

    .line 149
    :cond_2
    invoke-virtual {p0}, Lorg/holoeverywhere/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/holoeverywhere/LayoutInflater;->from(Landroid/content/Context;)Lorg/holoeverywhere/LayoutInflater;

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getShowsDialog()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mShowsDialog:Z

    return v0
.end method

.method public getTheme()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mTheme:I

    return v0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mCancelable:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lorg/holoeverywhere/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 167
    iget-boolean v2, p0, Lorg/holoeverywhere/app/DialogFragment;->mShowsDialog:Z

    if-nez v2, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-virtual {p0}, Lorg/holoeverywhere/app/DialogFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 171
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 172
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 173
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "DialogFragment can not be attached to a container view"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_2
    iget-object v2, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    instance-of v2, v2, Lorg/holoeverywhere/app/AlertDialog;

    if-eqz v2, :cond_4

    .line 177
    iget-object v2, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    check-cast v2, Lorg/holoeverywhere/app/AlertDialog;

    invoke-virtual {v2, v1}, Lorg/holoeverywhere/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 182
    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    invoke-virtual {p0}, Lorg/holoeverywhere/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/holoeverywhere/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 183
    iget-object v2, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    iget-boolean v3, p0, Lorg/holoeverywhere/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v2, v3}, Lorg/holoeverywhere/app/Dialog;->setCancelable(Z)V

    .line 184
    iget-object v2, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    invoke-virtual {v2, p0}, Lorg/holoeverywhere/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 185
    iget-object v2, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    invoke-virtual {v2, p0}, Lorg/holoeverywhere/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 186
    if-eqz p1, :cond_0

    .line 187
    const-string v2, "android:savedDialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 189
    .local v0, "dialogState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 190
    iget-object v2, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    invoke-virtual {v2, v0}, Lorg/holoeverywhere/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 179
    .end local v0    # "dialogState":Landroid/os/Bundle;
    :cond_4
    iget-object v2, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    invoke-virtual {v2, v1}, Lorg/holoeverywhere/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onAttach(Lorg/holoeverywhere/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 197
    invoke-super {p0, p1}, Lorg/holoeverywhere/app/Fragment;->onAttach(Lorg/holoeverywhere/app/Activity;)V

    .line 198
    iget-boolean v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDismissed:Z

    .line 201
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 205
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    invoke-super {p0, p1}, Lorg/holoeverywhere/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lorg/holoeverywhere/app/DialogFragment;->getContainerId()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mShowsDialog:Z

    .line 211
    if-eqz p1, :cond_0

    .line 212
    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mStyle:I

    .line 213
    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mTheme:I

    .line 214
    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mCancelable:Z

    .line 215
    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mShowsDialog:Z

    .line 217
    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mBackStackId:I

    .line 219
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 210
    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Lorg/holoeverywhere/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 222
    sget-object v0, Lorg/holoeverywhere/app/DialogFragment$1;->$SwitchMap$org$holoeverywhere$app$DialogFragment$DialogType:[I

    iget-object v1, p0, Lorg/holoeverywhere/app/DialogFragment;->type:Lorg/holoeverywhere/app/DialogFragment$DialogType;

    invoke-virtual {v1}, Lorg/holoeverywhere/app/DialogFragment$DialogType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 227
    new-instance v0, Lorg/holoeverywhere/app/Dialog;

    invoke-virtual {p0}, Lorg/holoeverywhere/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/holoeverywhere/app/DialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/holoeverywhere/app/Dialog;-><init>(Landroid/content/Context;I)V

    :goto_0
    return-object v0

    .line 224
    :pswitch_0
    new-instance v0, Lorg/holoeverywhere/app/AlertDialog;

    invoke-virtual {p0}, Lorg/holoeverywhere/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/holoeverywhere/app/DialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/holoeverywhere/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Lorg/holoeverywhere/app/Fragment;->onDestroyView()V

    .line 234
    iget-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mViewDestroyed:Z

    .line 236
    iget-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/Dialog;->dismiss()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    .line 239
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Lorg/holoeverywhere/app/Fragment;->onDetach()V

    .line 244
    iget-boolean v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDismissed:Z

    if-nez v0, :cond_0

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDismissed:Z

    .line 247
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 251
    iget-boolean v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mViewDestroyed:Z

    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/DialogFragment;->dismissInternal(Z)V

    .line 254
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 258
    invoke-super {p0, p1}, Lorg/holoeverywhere/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 259
    iget-object v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    invoke-virtual {v1}, Lorg/holoeverywhere/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 261
    .local v0, "dialogState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 262
    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 265
    .end local v0    # "dialogState":Landroid/os/Bundle;
    :cond_0
    iget v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mStyle:I

    if-eqz v1, :cond_1

    .line 266
    const-string v1, "android:style"

    iget v2, p0, Lorg/holoeverywhere/app/DialogFragment;->mStyle:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    :cond_1
    iget v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mTheme:I

    if-eqz v1, :cond_2

    .line 269
    const-string v1, "android:theme"

    iget v2, p0, Lorg/holoeverywhere/app/DialogFragment;->mTheme:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    :cond_2
    iget-boolean v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mCancelable:Z

    if-nez v1, :cond_3

    .line 272
    const-string v1, "android:cancelable"

    iget-boolean v2, p0, Lorg/holoeverywhere/app/DialogFragment;->mCancelable:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 274
    :cond_3
    iget-boolean v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mShowsDialog:Z

    if-nez v1, :cond_4

    .line 275
    const-string v1, "android:showsDialog"

    iget-boolean v2, p0, Lorg/holoeverywhere/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 277
    :cond_4
    iget v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mBackStackId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 278
    const-string v1, "android:backStackId"

    iget v2, p0, Lorg/holoeverywhere/app/DialogFragment;->mBackStackId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0}, Lorg/holoeverywhere/app/Fragment;->onStart()V

    .line 285
    iget-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mViewDestroyed:Z

    .line 287
    iget-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/Dialog;->show()V

    .line 289
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 293
    invoke-super {p0}, Lorg/holoeverywhere/app/Fragment;->onStop()V

    .line 294
    iget-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    invoke-virtual {v0}, Lorg/holoeverywhere/app/Dialog;->hide()V

    .line 297
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 300
    iput-boolean p1, p0, Lorg/holoeverywhere/app/DialogFragment;->mCancelable:Z

    .line 301
    iget-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/Dialog;->setCancelable(Z)V

    .line 304
    :cond_0
    return-void
.end method

.method public setDialogType(Lorg/holoeverywhere/app/DialogFragment$DialogType;)V
    .locals 0
    .param p1, "type"    # Lorg/holoeverywhere/app/DialogFragment$DialogType;

    .prologue
    .line 307
    iput-object p1, p0, Lorg/holoeverywhere/app/DialogFragment;->type:Lorg/holoeverywhere/app/DialogFragment$DialogType;

    .line 308
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 0
    .param p1, "showsDialog"    # Z

    .prologue
    .line 311
    iput-boolean p1, p0, Lorg/holoeverywhere/app/DialogFragment;->mShowsDialog:Z

    .line 312
    return-void
.end method

.method public setStyle(II)V
    .locals 2
    .param p1, "style"    # I
    .param p2, "theme"    # I

    .prologue
    .line 315
    iput p1, p0, Lorg/holoeverywhere/app/DialogFragment;->mStyle:I

    .line 316
    iget v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mStyle:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 317
    :cond_0
    const v0, 0x1030059

    iput v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mTheme:I

    .line 319
    :cond_1
    if-eqz p2, :cond_2

    .line 320
    iput p2, p0, Lorg/holoeverywhere/app/DialogFragment;->mTheme:I

    .line 322
    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/DialogFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/DialogFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 334
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 325
    iget-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mDialog:Lorg/holoeverywhere/app/Dialog;

    invoke-virtual {v0, p1}, Lorg/holoeverywhere/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    iput-object p1, p0, Lorg/holoeverywhere/app/DialogFragment;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)I
    .locals 1
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/holoeverywhere/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 2
    .param p1, "transaction"    # Landroid/support/v4/app/FragmentTransaction;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 400
    iput-boolean v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mDismissed:Z

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mShownByMe:Z

    .line 402
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 403
    iput-boolean v1, p0, Lorg/holoeverywhere/app/DialogFragment;->mViewDestroyed:Z

    .line 404
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v0

    iput v0, p0, Lorg/holoeverywhere/app/DialogFragment;->mBackStackId:I

    return v0
.end method

.method public show()Lorg/holoeverywhere/app/DialogFragment$DialogTransaction;
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lorg/holoeverywhere/app/DialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;)Lorg/holoeverywhere/app/DialogFragment$DialogTransaction;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroid/support/v4/app/FragmentManager;)Lorg/holoeverywhere/app/DialogFragment$DialogTransaction;
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 346
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/holoeverywhere/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;)Lorg/holoeverywhere/app/DialogFragment$DialogTransaction;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    goto :goto_0
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;)Lorg/holoeverywhere/app/DialogFragment$DialogTransaction;
    .locals 4
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 350
    if-nez p2, :cond_2

    .line 351
    if-nez p1, :cond_1

    .line 352
    invoke-virtual {p0}, Lorg/holoeverywhere/app/DialogFragment;->getSupportActivity()Lorg/holoeverywhere/app/Activity;

    move-result-object v0

    .line 353
    .local v0, "activity":Lorg/holoeverywhere/app/Activity;
    if-nez v0, :cond_0

    .line 354
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "DialogFragment don\'t have any reference to Context or FragmentManager"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_0
    invoke-virtual {v0}, Lorg/holoeverywhere/app/Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 359
    .end local v0    # "activity":Lorg/holoeverywhere/app/Activity;
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    .line 361
    :cond_2
    iget-boolean v2, p0, Lorg/holoeverywhere/app/DialogFragment;->mDismissed:Z

    if-nez v2, :cond_3

    .line 362
    invoke-virtual {p0}, Lorg/holoeverywhere/app/DialogFragment;->dismiss()V

    .line 364
    :cond_3
    new-instance v1, Lorg/holoeverywhere/app/DialogFragment$DialogTransaction;

    invoke-direct {v1}, Lorg/holoeverywhere/app/DialogFragment$DialogTransaction;-><init>()V

    .line 365
    .local v1, "dialogTransaction":Lorg/holoeverywhere/app/DialogFragment$DialogTransaction;
    iput-object p1, v1, Lorg/holoeverywhere/app/DialogFragment$DialogTransaction;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 366
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/holoeverywhere/app/DialogFragment;->makeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/holoeverywhere/app/DialogFragment$DialogTransaction;->dialogTag:Ljava/lang/String;

    .line 367
    iget-object v2, v1, Lorg/holoeverywhere/app/DialogFragment$DialogTransaction;->dialogTag:Ljava/lang/String;

    invoke-virtual {p0, p2, v2}, Lorg/holoeverywhere/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lorg/holoeverywhere/app/DialogFragment$DialogTransaction;->transactionId:I

    .line 368
    return-object v1
.end method

.method public show(Landroid/support/v4/app/FragmentTransaction;)Lorg/holoeverywhere/app/DialogFragment$DialogTransaction;
    .locals 1
    .param p1, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/holoeverywhere/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/FragmentTransaction;)Lorg/holoeverywhere/app/DialogFragment$DialogTransaction;

    move-result-object v0

    return-object v0
.end method

.method public show(Lorg/holoeverywhere/app/Activity;)Lorg/holoeverywhere/app/DialogFragment$DialogTransaction;
    .locals 1
    .param p1, "activity"    # Lorg/holoeverywhere/app/Activity;

    .prologue
    .line 341
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;)Lorg/holoeverywhere/app/DialogFragment$DialogTransaction;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/holoeverywhere/app/Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    goto :goto_0
.end method
