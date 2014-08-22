.class Lnz/co/telecom/smartphone/activity/ActivityWelcome$9$1;
.super Ljava/lang/Object;
.source "ActivityWelcome.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/activity/ActivityWelcome$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnz/co/telecom/smartphone/activity/ActivityWelcome$9;

.field final synthetic val$subDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome$9;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9$1;->this$1:Lnz/co/telecom/smartphone/activity/ActivityWelcome$9;

    iput-object p2, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9$1;->val$subDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 807
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9$1;->val$subDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 808
    const/4 v0, 0x1

    return v0
.end method
