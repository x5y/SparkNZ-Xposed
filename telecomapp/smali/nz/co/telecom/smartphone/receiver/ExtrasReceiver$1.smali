.class Lnz/co/telecom/smartphone/receiver/ExtrasReceiver$1;
.super Ljava/lang/Object;
.source "ExtrasReceiver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;->createDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;

.field final synthetic val$subDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver$1;->this$0:Lnz/co/telecom/smartphone/receiver/ExtrasReceiver;

    iput-object p2, p0, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver$1;->val$subDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lnz/co/telecom/smartphone/receiver/ExtrasReceiver$1;->val$subDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 98
    return-void
.end method
