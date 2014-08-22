.class Lnz/co/telecom/smartphone/fragments/MainFragment$1;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/telecom/smartphone/fragments/MainFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;


# direct methods
.method constructor <init>(Lnz/co/telecom/smartphone/fragments/MainFragment;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$1;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 174
    new-instance v0, Lnz/co/telecom/smartphone/fragments/MainFragment$MyChromeClient;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$1;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-direct {v0, v1}, Lnz/co/telecom/smartphone/fragments/MainFragment$MyChromeClient;-><init>(Lnz/co/telecom/smartphone/fragments/MainFragment;)V

    .line 175
    .local v0, "mcc":Lnz/co/telecom/smartphone/fragments/MainFragment$MyChromeClient;
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$1;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->TandCWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$200(Lnz/co/telecom/smartphone/fragments/MainFragment;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 176
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$1;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->TandCWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$200(Lnz/co/telecom/smartphone/fragments/MainFragment;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 177
    const/16 v1, 0x12

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v2, :cond_0

    .line 178
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$1;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->TandCWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$200(Lnz/co/telecom/smartphone/fragments/MainFragment;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 181
    :cond_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$1;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->TandCWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$200(Lnz/co/telecom/smartphone/fragments/MainFragment;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 182
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 183
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$1;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->TandCWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$200(Lnz/co/telecom/smartphone/fragments/MainFragment;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 185
    :cond_1
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$1;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    # getter for: Lnz/co/telecom/smartphone/fragments/MainFragment;->TandCWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lnz/co/telecom/smartphone/fragments/MainFragment;->access$200(Lnz/co/telecom/smartphone/fragments/MainFragment;)Landroid/webkit/WebView;

    move-result-object v1

    sget-object v2, Lnz/co/telecom/smartphone/fragments/MainFragment;->mfProperties:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v2}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->getTermsAndConditionsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 186
    return-void
.end method
