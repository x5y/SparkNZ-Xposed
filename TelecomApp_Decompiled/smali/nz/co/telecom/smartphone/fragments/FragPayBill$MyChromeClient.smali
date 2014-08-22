.class Lnz/co/telecom/smartphone/fragments/FragPayBill$MyChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "FragPayBill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragPayBill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;


# direct methods
.method private constructor <init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyChromeClient;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;Lnz/co/telecom/smartphone/fragments/FragPayBill$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/telecom/smartphone/fragments/FragPayBill;
    .param p2, "x1"    # Lnz/co/telecom/smartphone/fragments/FragPayBill$1;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyChromeClient;-><init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "window"    # Landroid/webkit/WebView;

    .prologue
    .line 318
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyChromeClient;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$000(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    const-string v1, " MyChromeClient onCloseWindow window closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyChromeClient;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$000(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

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

    .line 327
    :cond_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 328
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyChromeClient;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    const/16 v1, 0x8

    # invokes: Lnz/co/telecom/smartphone/fragments/FragPayBill;->changeProgressDialogStatus(I)V
    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$500(Lnz/co/telecom/smartphone/fragments/FragPayBill;I)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyChromeClient;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    const/4 v1, 0x0

    # invokes: Lnz/co/telecom/smartphone/fragments/FragPayBill;->changeProgressDialogStatus(I)V
    invoke-static {v0, v1}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$500(Lnz/co/telecom/smartphone/fragments/FragPayBill;I)V

    goto :goto_0
.end method
