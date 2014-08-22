.class Lnz/co/telecom/smartphone/activity/ActivityWelcome$10;
.super Ljava/lang/Object;
.source "ActivityWelcome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/activity/ActivityWelcome;->performSessionLogout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

.field final synthetic val$clearTokenOnly:Z


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/activity/ActivityWelcome;Z)V
    .locals 0

    .prologue
    .line 845
    iput-object p1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$10;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    iput-boolean p2, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$10;->val$clearTokenOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$10;->this$0:Lnz/co/telecom/smartphone/activity/ActivityWelcome;

    iget-object v0, v0, Lnz/co/telecom/smartphone/activity/ActivityWelcome;->mAccessControlController:Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;

    iget-boolean v1, p0, Lnz/co/telecom/smartphone/activity/ActivityWelcome$10;->val$clearTokenOnly:Z

    invoke-interface {v0, v1}, Lnz/co/telecom/smartphone/controller/AccessControlControllerInterface;->performLogout(Z)Z

    .line 849
    return-void
.end method
