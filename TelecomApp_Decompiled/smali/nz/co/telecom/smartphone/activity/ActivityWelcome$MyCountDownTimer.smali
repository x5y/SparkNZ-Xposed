.class public Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "ActivityWelcome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/activity/ActivityWelcome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyCountDownTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome;JJ)V
    .locals 0
    .param p2, "startTime"    # J
    .param p4, "interval"    # J

    .prologue
    .line 863
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyCountDownTimer;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    .line 864
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 865
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 869
    # getter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "soft_lock_param expired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyCountDownTimer;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->sharePref:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$1400(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$MyCountDownTimer;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$500(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e00c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 872
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 876
    return-void
.end method
