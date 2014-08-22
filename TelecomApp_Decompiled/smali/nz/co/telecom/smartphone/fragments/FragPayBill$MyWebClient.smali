.class public Lnz/co/telecom/smartphone/fragments/FragPayBill$MyWebClient;
.super Landroid/webkit/WebViewClient;
.source "FragPayBill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/FragPayBill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyWebClient"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/fragments/FragPayBill;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyWebClient;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 540
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyWebClient;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$000(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onPageFinished url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    :try_start_0
    const-string v0, "javascript:window.ExtObj.readHTML(document.getElementsByTagName(\'html\')[0].innerHTML);"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 533
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 534
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyWebClient;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$000(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onPageStarted url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 522
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragPayBill$MyWebClient;->this$0:Lnz/co/telecom/smartphone/fragments/FragPayBill;

    # getter for: Lnz/co/telecom/smartphone/fragments/FragPayBill;->debug:Z
    invoke-static {v0}, Lnz/co/telecom/smartphone/fragments/FragPayBill;->access$000(Lnz/co/telecom/smartphone/fragments/FragPayBill;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragPayBill;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyWebClient shouldOverrideUrlLoading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 526
    :catch_0
    move-exception v0

    goto :goto_0
.end method
