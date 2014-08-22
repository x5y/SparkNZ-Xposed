.class Lnz/co/telecom/smartphone/activity/ActivityLogFile$3;
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
    .line 60
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityLogFile$3;->this$0:Lnz/co/telecom/smartphone/activity/ActivityLogFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityLogFile$3;->this$0:Lnz/co/telecom/smartphone/activity/ActivityLogFile;

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityLogFile;->writeLogFileToSDCard()V
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityLogFile;->access$200(Lnz/co/telecom/smartphone/activity/ActivityLogFile;)V

    .line 64
    return-void
.end method
