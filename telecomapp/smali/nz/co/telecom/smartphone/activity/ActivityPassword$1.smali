.class Lnz/co/telecom/smartphone/activity/ActivityPassword$1;
.super Ljava/lang/Object;
.source "ActivityPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/activity/ActivityPassword;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityPassword;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x0

    .line 214
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v0, v0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validatePassword "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->validatePassword:Z
    invoke-static {v2}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$100(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v0, v0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validatePassword s.length() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_4

    .line 219
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lnz/co/telecom/smartphone/activity/ActivityPassword;->verifyPassword(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$200(Lnz/co/telecom/smartphone/activity/ActivityPassword;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    const/4 v1, 0x1

    # setter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->validatePassword:Z
    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$102(Lnz/co/telecom/smartphone/activity/ActivityPassword;Z)Z

    .line 227
    :goto_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->debug:Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$000(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    iget-object v0, v0, Lnz/co/telecom/smartphone/activity/ActivityPassword;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validatePassword validatePassword "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # getter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->validatePassword:Z
    invoke-static {v2}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$100(Lnz/co/telecom/smartphone/activity/ActivityPassword;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_2
    return-void

    .line 222
    :cond_3
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # setter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->validatePassword:Z
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$102(Lnz/co/telecom/smartphone/activity/ActivityPassword;Z)Z

    goto :goto_0

    .line 225
    :cond_4
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityPassword$1;->this$0:Lnz/co/telecom/smartphone/activity/ActivityPassword;

    # setter for: Lnz/co/telecom/smartphone/activity/ActivityPassword;->validatePassword:Z
    invoke-static {v0, v3}, Lnz/co/telecom/smartphone/activity/ActivityPassword;->access$102(Lnz/co/telecom/smartphone/activity/ActivityPassword;Z)Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 210
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 205
    return-void
.end method
