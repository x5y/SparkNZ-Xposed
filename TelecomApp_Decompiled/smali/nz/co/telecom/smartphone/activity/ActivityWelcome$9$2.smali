.class Lnz/co/telecom/smartphone/activity/ActivityWelcome$9$2;
.super Ljava/lang/Object;
.source "ActivityWelcome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 812
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9$2;->this$1:Lnz/co/telecom/smartphone/activity/ActivityWelcome$9;

    iput-object p2, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9$2;->val$subDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 815
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$9$2;->val$subDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 816
    return-void
.end method
