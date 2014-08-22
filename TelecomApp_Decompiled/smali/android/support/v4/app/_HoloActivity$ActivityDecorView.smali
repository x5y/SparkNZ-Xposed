.class final Landroid/support/v4/app/_HoloActivity$ActivityDecorView;
.super Lorg/holoeverywhere/internal/WindowDecorView;
.source "_HoloActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/_HoloActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/_HoloActivity;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/_HoloActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Landroid/support/v4/app/_HoloActivity$ActivityDecorView;->this$0:Landroid/support/v4/app/_HoloActivity;

    .line 70
    invoke-direct {p0, p1}, Lorg/holoeverywhere/internal/WindowDecorView;-><init>(Landroid/content/Context;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v2, p0, Landroid/support/v4/app/_HoloActivity$ActivityDecorView;->this$0:Landroid/support/v4/app/_HoloActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/_HoloActivity;->createConfig(Landroid/os/Bundle;)Landroid/support/v4/app/_HoloActivity$Holo;

    move-result-object v2

    # getter for: Landroid/support/v4/app/_HoloActivity$Holo;->windowFeatures:Lorg/holoeverywhere/util/SparseIntArray;
    invoke-static {v2}, Landroid/support/v4/app/_HoloActivity$Holo;->access$000(Landroid/support/v4/app/_HoloActivity$Holo;)Lorg/holoeverywhere/util/SparseIntArray;

    move-result-object v0

    .line 76
    .local v0, "windowFeatures":Lorg/holoeverywhere/util/SparseIntArray;
    if-eqz v0, :cond_0

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lorg/holoeverywhere/util/SparseIntArray;->get(II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lorg/holoeverywhere/internal/WindowDecorView;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0
.end method
