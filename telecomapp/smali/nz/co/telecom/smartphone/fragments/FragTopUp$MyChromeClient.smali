.class public Lnz/co/telecom/smartphone/fragments/FragTopUp$MyChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "FragTopUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragTopUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/fragments/FragTopUp;)V
    .locals 0

    .prologue
    .line 881
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyChromeClient;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "window"    # Landroid/webkit/WebView;

    .prologue
    .line 884
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyChromeClient;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyChromeClient;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

    const-string v1, " MyChromeClient onCloseWindow window closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 890
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyChromeClient;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragTopUp;->debug:Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->access$700(Lnz/co/telecom/smartphone/fragments/FragTopUp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyChromeClient;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    iget-object v0, v0, Lnz/co/telecom/smartphone/fragments/FragTopUp;->TAG:Ljava/lang/String;

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

    .line 892
    :cond_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 893
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyChromeClient;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->changeProgressDialogStatus(I)V

    .line 897
    :goto_0
    return-void

    .line 895
    :cond_1
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragTopUp$MyChromeClient;->this$0:Lnz/co/telecom/smartphone/fragments/FragTopUp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragTopUp;->changeProgressDialogStatus(I)V

    goto :goto_0
.end method
