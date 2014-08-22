.class Lnz/co/telecom/smartphone/activity/ActivityRegister$3;
.super Ljava/lang/Object;
.source "ActivityRegister.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/activity/ActivityRegister;->displayExplainFlows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/activity/ActivityRegister;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityRegister;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$3;->this$0:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 220
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityRegister$3;->this$0:Lnz/co/telecom/smartphone/activity/ActivityRegister;

    const/16 v1, 0x20e

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityRegister;->createMessage(I)V
    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityRegister;->access$300(Lnz/co/telecom/smartphone/activity/ActivityRegister;I)V

    .line 221
    return-void
.end method
