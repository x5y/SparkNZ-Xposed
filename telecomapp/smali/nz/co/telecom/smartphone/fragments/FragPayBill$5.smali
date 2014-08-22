.class Lnz/co/telecom/smartphone/fragments/FragPayBill$5;
.super Ljava/lang/Object;
.source "FragPayBill.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragPayBill;->createDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 916
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$5;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    iput-object p2, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$5;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 919
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 920
    return-void
.end method
