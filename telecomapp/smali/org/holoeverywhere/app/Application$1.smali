.class Lorg/holoeverywhere/app/Application$1;
.super Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;
.source "Application.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/app/Application;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback",
        "<",
        "Lorg/holoeverywhere/addon/IAddonApplication;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/app/Application;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/app/Application;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lorg/holoeverywhere/app/Application$1;->this$0:Lorg/holoeverywhere/app/Application;

    invoke-direct {p0}, Lorg/holoeverywhere/addon/IAddonAttacher$AddonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic justAction(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 122
    check-cast p1, Lorg/holoeverywhere/addon/IAddonApplication;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/holoeverywhere/app/Application$1;->justAction(Lorg/holoeverywhere/addon/IAddonApplication;)V

    return-void
.end method

.method public justAction(Lorg/holoeverywhere/addon/IAddonApplication;)V
    .locals 0
    .param p1, "addon"    # Lorg/holoeverywhere/addon/IAddonApplication;

    .prologue
    .line 125
    invoke-virtual {p1}, Lorg/holoeverywhere/addon/IAddonApplication;->onPreCreate()V

    .line 126
    return-void
.end method
