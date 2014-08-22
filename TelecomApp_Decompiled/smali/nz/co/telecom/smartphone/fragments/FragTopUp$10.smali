.class Lnz/co/telecom/smartphone/fragments/FragTopUp$10;
.super Ljava/lang/Object;
.source "FragTopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/FragTopUp;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

.field final synthetic val$subDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1137
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$10;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iput-object p2, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$10;->val$subDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1140
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$10;->val$subDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1141
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$10;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # invokes: Lnz/co/telecom/smartphone/fragments/FragTopUp;->resetOtherAmountCreditCardButtons()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$3300(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V

    .line 1142
    return-void
.end method
