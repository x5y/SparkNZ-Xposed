.class Lnz/co/telecom/smartphone/widget/stickyheaders/CheckableWrapperView;
.super Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;
.source "CheckableWrapperView.java"

# interfaces
.implements Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lnz/co/telecom/smartphone/widget/stickyheaders/WrapperView;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CheckableWrapperView;->mItem:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 19
    iget-object v0, p0, Lnz/co/telecom/smartphone/widget/stickyheaders/CheckableWrapperView;->mItem:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 20
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CheckableWrapperView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lnz/co/telecom/smartphone/widget/stickyheaders/CheckableWrapperView;->setChecked(Z)V

    .line 25
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
