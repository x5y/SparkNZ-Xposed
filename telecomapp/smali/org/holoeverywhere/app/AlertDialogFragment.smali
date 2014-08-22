.class public Lorg/holoeverywhere/app/AlertDialogFragment;
.super Lorg/holoeverywhere/app/DialogFragment;
.source "AlertDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lorg/holoeverywhere/app/DialogFragment;-><init>()V

    .line 8
    sget-object v0, Lorg/holoeverywhere/app/DialogFragment$DialogType;->AlertDialog:Lorg/holoeverywhere/app/DialogFragment$DialogType;

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/AlertDialogFragment;->setDialogType(Lorg/holoeverywhere/app/DialogFragment$DialogType;)V

    .line 9
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Lorg/holoeverywhere/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    new-instance v0, Lorg/holoeverywhere/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/holoeverywhere/app/AlertDialogFragment;->getSupportActivity()Lorg/holoeverywhere/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/holoeverywhere/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 18
    .local v0, "builder":Lorg/holoeverywhere/app/AlertDialog$Builder;
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/app/AlertDialogFragment;->onCreateDialog(Lorg/holoeverywhere/app/AlertDialog$Builder;)V

    .line 19
    invoke-virtual {v0}, Lorg/holoeverywhere/app/AlertDialog$Builder;->create()Lorg/holoeverywhere/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected onCreateDialog(Lorg/holoeverywhere/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "builder"    # Lorg/holoeverywhere/app/AlertDialog$Builder;

    .prologue
    .line 13
    return-void
.end method
