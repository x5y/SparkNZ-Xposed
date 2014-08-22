.class Lnz/co/telecom/smartphone/activity/ActivityWelcome$1;
.super Ljava/lang/Object;
.source "ActivityWelcome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/activity/ActivityWelcome;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    const/16 v1, 0x201

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V
    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$000(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V

    .line 239
    return-void
.end method
