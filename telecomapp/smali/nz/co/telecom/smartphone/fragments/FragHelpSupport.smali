.class public Lnz/co/telecom/smartphone/fragments/FragHelpSupport;
.super Lnz/co/telecom/smartphone/fragments/FragBase;
.source "FragHelpSupport.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment",
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/telecom/smartphone/fragments/FragHelpSupport$MyHandler;,
        Lnz/co/telecom/smartphone/fragments/FragHelpSupport$MyChromeClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private globalView:Landroid/view/View;

.field private helpHandler:Landroid/os/Handler;

.field private helpWebView:Landroid/webkit/WebView;

.field protected mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private progress_block_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBase;-><init>(I)V

    .line 55
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lnz/co/telecom/smartphone/fragments/FragHelpSupport;)Lnz/co/telecom/smartphone/widget/TMYTextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/telecom/smartphone/fragments/FragHelpSupport;

    .prologue
    .line 27
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->progress_block_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    return-object v0
.end method

.method private helpInitializeHandler()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport$MyHandler;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragHelpSupport$MyHandler;-><init>(Lnz/co/telecom/smartphone/fragments/FragHelpSupport;)V

    iput-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->helpHandler:Landroid/os/Handler;

    .line 173
    return-void
.end method


# virtual methods
.method public changeProgressDialogStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 123
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->content_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected createMessage(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 100
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 101
    .local v0, "m":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 102
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->helpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 103
    return-void
.end method

.method protected getDTO()V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->TAG:Ljava/lang/String;

    const-string v1, "No DTO associated with the Help screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initData()Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 75
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->localInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030022

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->globalView:Landroid/view/View;

    .line 76
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->globalView:Landroid/view/View;

    const v2, 0x7f09009e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->content_progressbar:Landroid/widget/RelativeLayout;

    .line 77
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->globalView:Landroid/view/View;

    const v2, 0x7f09009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->content_no_data_error:Landroid/widget/RelativeLayout;

    .line 78
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->globalView:Landroid/view/View;

    const v2, 0x7f09013a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnz/co/telecom/smartphone/widget/TMYTextView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->progress_block_TV:Lnz/co/telecom/smartphone/widget/TMYTextView;

    .line 79
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->initData()Landroid/view/View;

    .line 80
    invoke-direct {p0}, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->helpInitializeHandler()V

    .line 81
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->globalView:Landroid/view/View;

    const v2, 0x7f09009d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->helpWebView:Landroid/webkit/WebView;

    .line 82
    new-instance v0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport$MyChromeClient;

    invoke-direct {v0, p0}, Lnz/co/telecom/smartphone/fragments/FragHelpSupport$MyChromeClient;-><init>(Lnz/co/telecom/smartphone/fragments/FragHelpSupport;)V

    .line 83
    .local v0, "mcc":Lnz/co/telecom/smartphone/fragments/FragHelpSupport$MyChromeClient;
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->helpWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 84
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->helpWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 85
    const/16 v1, 0x12

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v2, :cond_0

    .line 86
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->helpWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 88
    :cond_0
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->helpWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 89
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 90
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->helpWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3, v4}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 92
    :cond_1
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->helpWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v2}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->getHelpAndSupportUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 93
    const-string v1, "helpAndSupport"

    iget-object v2, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v2}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->getHelpAndSupportUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnz/co/telecom/smartphone/analytics/TrackingHelper;->trackPageLinkOff(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/16 v1, 0x201

    invoke-virtual {p0, v1}, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->createMessage(I)V

    .line 96
    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->globalView:Landroid/view/View;

    return-object v1
.end method

.method protected isDTOCached()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lnz/co/telecom/smartphone/fragments/FragBase;->onResume()V

    .line 65
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->helpWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->helpWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->mPropertiesService:Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;

    invoke-interface {v1}, Lnz/co/telecom/smartphone/service/PropertiesServiceInterface;->getHelpAndSupportUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    invoke-super {p0, p1}, Lnz/co/telecom/smartphone/fragments/FragBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 178
    return-void
.end method

.method protected refreshPageDetails()V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/fragments/FragHelpSupport;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnz/co/telecom/smartphone/activity/ActivityNavigationDrawer;->showRefreshButton(Z)V

    .line 51
    return-void
.end method
