.class Lnz/co/telecom/smartphone/activity/ActivityLogFile$1;
.super Ljava/lang/Object;
.source "ActivityLogFile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/activity/ActivityLogFile;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/activity/ActivityLogFile;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityLogFile;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityLogFile$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityLogFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityLogFile$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityLogFile;

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityLogFile;->displayLogFile()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityLogFile;->access$000(Lnz/co/telecom/smartphone/activity/ActivityLogFile;)V

    .line 50
    return-void
.end method
