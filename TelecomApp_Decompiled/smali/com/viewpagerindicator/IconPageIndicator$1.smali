.class Lcom/viewpagerindicator/IconPageIndicator$1;
.super Ljava/lang/Object;
.source "IconPageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/viewpagerindicator/IconPageIndicator;->animateToIcon(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viewpagerindicator/IconPageIndicator;

.field final synthetic val$iconView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/viewpagerindicator/IconPageIndicator;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/viewpagerindicator/IconPageIndicator$1;->this$0:Lcom/viewpagerindicator/IconPageIndicator;

    iput-object p2, p0, Lcom/viewpagerindicator/IconPageIndicator$1;->val$iconView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 63
    iget-object v1, p0, Lcom/viewpagerindicator/IconPageIndicator$1;->val$iconView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/viewpagerindicator/IconPageIndicator$1;->this$0:Lcom/viewpagerindicator/IconPageIndicator;

    invoke-virtual {v2}, Lcom/viewpagerindicator/IconPageIndicator;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/viewpagerindicator/IconPageIndicator$1;->val$iconView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 64
    .local v0, "scrollPos":I
    iget-object v1, p0, Lcom/viewpagerindicator/IconPageIndicator$1;->this$0:Lcom/viewpagerindicator/IconPageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/viewpagerindicator/IconPageIndicator;->smoothScrollTo(II)V

    .line 65
    iget-object v1, p0, Lcom/viewpagerindicator/IconPageIndicator$1;->this$0:Lcom/viewpagerindicator/IconPageIndicator;

    const/4 v2, 0x0

    # setter for: Lcom/viewpagerindicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/viewpagerindicator/IconPageIndicator;->access$002(Lcom/viewpagerindicator/IconPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 66
    return-void
.end method
