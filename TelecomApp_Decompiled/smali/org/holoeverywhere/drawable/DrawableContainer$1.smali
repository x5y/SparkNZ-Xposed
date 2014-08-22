.class Lorg/holoeverywhere/drawable/DrawableContainer$1;
.super Ljava/lang/Object;
.source "DrawableContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/holoeverywhere/drawable/DrawableContainer;->selectDrawable(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/drawable/DrawableContainer;


# direct methods
.method constructor <init>(Lorg/holoeverywhere/drawable/DrawableContainer;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lorg/holoeverywhere/drawable/DrawableContainer$1;->this$0:Lorg/holoeverywhere/drawable/DrawableContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$1;->this$0:Lorg/holoeverywhere/drawable/DrawableContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/drawable/DrawableContainer;->animate(Z)V

    .line 557
    iget-object v0, p0, Lorg/holoeverywhere/drawable/DrawableContainer$1;->this$0:Lorg/holoeverywhere/drawable/DrawableContainer;

    invoke-virtual {v0}, Lorg/holoeverywhere/drawable/DrawableContainer;->invalidateSelf()V

    .line 558
    return-void
.end method
