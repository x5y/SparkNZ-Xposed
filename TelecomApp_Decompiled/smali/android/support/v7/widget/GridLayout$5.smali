.class final Landroid/support/v7/widget/GridLayout$5;
.super Landroid/support/v7/widget/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/GridLayout;->createSwitchingAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Alignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ltr:Landroid/support/v7/widget/GridLayout$Alignment;

.field final synthetic val$rtl:Landroid/support/v7/widget/GridLayout$Alignment;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)V
    .locals 0

    .prologue
    .line 2547
    iput-object p1, p0, Landroid/support/v7/widget/GridLayout$5;->val$ltr:Landroid/support/v7/widget/GridLayout$Alignment;

    iput-object p2, p0, Landroid/support/v7/widget/GridLayout$5;->val$rtl:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSize"    # I
    .param p3, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 2557
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2559
    .local v0, "isLayoutRtl":Z
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$5;->val$ltr:Landroid/support/v7/widget/GridLayout$Alignment;

    :goto_1
    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v7/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result v1

    return v1

    .line 2557
    .end local v0    # "isLayoutRtl":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2559
    .restart local v0    # "isLayoutRtl":Z
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$5;->val$rtl:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_1
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cellDelta"    # I

    .prologue
    const/4 v0, 0x1

    .line 2550
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2552
    .local v0, "isLayoutRtl":Z
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$5;->val$ltr:Landroid/support/v7/widget/GridLayout$Alignment;

    :goto_1
    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v1

    return v1

    .line 2550
    .end local v0    # "isLayoutRtl":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2552
    .restart local v0    # "isLayoutRtl":Z
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$5;->val$rtl:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_1
.end method
