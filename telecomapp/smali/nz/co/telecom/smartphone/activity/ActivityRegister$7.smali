.class Lnz/co/telecom/smartphone/activity/ActivityRegister$7;
.super Ljava/lang/Object;
.source "ActivityRegister.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/activity/ActivityRegister;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 515
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$7;->this$0:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    iput-object p2, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$7;->val$subDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 518
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$7;->val$subDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 519
    const/4 v0, 0x1

    return v0
.end method
