.class Lnz/co/telecom/smartphone/fragments/FragBase$9;
.super Ljava/lang/Object;
.source "FragBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragBase;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnz/co/telecom/smartphone/fragments/OnDismiss;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

.field final synthetic val$isClickedOK:[Z

.field final synthetic val$onDismiss:Lnz/co/telecom/smartphone/fragments/OnDismiss;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragBase;[ZLnz/co/telecom/smartphone/fragments/OnDismiss;)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragBase$9;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    iput-object p2, p0, Lnz/co/telecom/smartphone/fragments/FragBase$9;->val$isClickedOK:[Z

    iput-object p3, p0, Lnz/co/telecom/smartphone/fragments/FragBase$9;->val$onDismiss:Lnz/co/telecom/smartphone/fragments/OnDismiss;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 816
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase$9;->val$isClickedOK:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase$9;->val$onDismiss:Lnz/co/telecom/smartphone/fragments/OnDismiss;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/OnDismiss;->doDismissOK()V

    .line 821
    :goto_0
    return-void

    .line 819
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase$9;->val$onDismiss:Lnz/co/telecom/smartphone/fragments/OnDismiss;

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/fragments/OnDismiss;->doDismissCancel()V

    goto :goto_0
.end method
