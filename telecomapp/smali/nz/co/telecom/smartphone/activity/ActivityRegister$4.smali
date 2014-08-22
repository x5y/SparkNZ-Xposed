.class Lnz/co/telecom/smartphone/activity/ActivityRegister$4;
.super Ljava/lang/Object;
.source "ActivityRegister.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/activity/ActivityRegister;->displayExplainFlowsPopUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/activity/ActivityRegister;

.field final synthetic val$subDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityRegister;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$4;->this$0:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    iput-object p2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$4;->val$subDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 248
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$4;->val$subDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 249
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$4;->this$0:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    const/16 v1, 0x20e

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->createMessage(I)V
    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$300(Lnz/co/telecom/smartphone/activity/ActivityRegister;I)V

    .line 250
    return-void
.end method
