.class Lnz/co/telecom/smartphone/activity/ActivityWelcome$6;
.super Ljava/lang/Object;
.source "ActivityWelcome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/activity/ActivityWelcome;->processUserRegistration()V
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
    .line 707
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$6;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$6;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$700(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->isAutoSignin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$6;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    const/16 v1, 0x20b

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->createMessage(I)V
    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$000(Lnz/co/telecom/smartphone/activity/ActivityWelcome;I)V

    .line 712
    :cond_0
    return-void
.end method
