.class public Lnz/co/telecom/smartphone/fragments/FragHelpSupport$MyChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "FragHelpSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragHelpSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragHelpSupport;


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/fragments/FragHelpSupport;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport$MyChromeClient;->this$0:Lnz/co/telecom/smartphone/fragments/FragHelpSupport;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "window"    # Landroid/webkit/WebView;

    .prologue
    .line 108
    # getter for: Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, " MyChromeClient onCloseWindow window closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 113
    # getter for: Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->TAG:Ljava/lang/String;
    invoke-static {}, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MyChromeClient onProgressChanged newProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 115
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport$MyChromeClient;->this$0:Lnz/co/telecom/smartphone/fragments/FragHelpSupport;

    const/16 v1, 0x202

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->createMessage(I)V

    .line 117
    :cond_0
    return-void
.end method
