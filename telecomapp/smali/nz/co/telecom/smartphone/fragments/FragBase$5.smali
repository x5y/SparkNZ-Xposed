.class Lnz/co/telecom/smartphone/fragments/FragBase$5;
.super Ljava/lang/Object;
.source "FragBase.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field final synthetic val$subDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/FragBase;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragBase$5;->this$0:Lnz/co/telecom/smartphone/fragments/FragBase;

    iput-object p2, p0, Lnz/co/telecom/smartphone/fragments/FragBase$5;->val$subDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 789
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragBase$5;->val$subDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 790
    const/4 v0, 0x1

    return v0
.end method
