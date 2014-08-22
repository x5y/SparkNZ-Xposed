.class Lnz/co/telecom/smartphone/activity/ActivityWelcome$7;
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
    .line 737
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$7;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$7;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->welcome_main_mobile_no_ET:Landroid/widget/EditText;
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$900(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$7;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mUserCredentialsDTO:Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;
    invoke-static {v1}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$700(Lnz/co/telecom/smartphone/activity/ActivityWelcome;)Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/telecom/smartphone/dto/usercredentials/UserCredentialsDTO;->getUserMobileNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnz/co/telecom/smartphone/util/PhoneFormatUtils;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$7;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    const/4 v1, 0x1

    # setter for: Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mIsUserNameSetFromWhoAmI:Z
    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->access$1302(Lnz/co/telecom/smartphone/activity/ActivityWelcome;Z)Z

    .line 742
    return-void
.end method
