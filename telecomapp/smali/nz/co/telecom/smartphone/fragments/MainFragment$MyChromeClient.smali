.class public Lnz/co/telecom/smartphone/fragments/MainFragment$MyChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/telecom/smartphone/fragments/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;


# direct methods
.method public constructor <init>(Lnz/co/telecom/smartphone/fragments/MainFragment;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lnz/co/telecom/smartphone/fragments/MainFragment$MyChromeClient;->this$0:Lnz/co/telecom/smartphone/fragments/MainFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "window"    # Landroid/webkit/WebView;

    .prologue
    .line 199
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 204
    return-void
.end method
