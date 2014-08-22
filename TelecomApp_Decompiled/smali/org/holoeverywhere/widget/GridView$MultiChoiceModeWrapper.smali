.class final Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/widget/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;

.field final synthetic this$0:Lorg/holoeverywhere/widget/GridView;


# direct methods
.method private constructor <init>(Lorg/holoeverywhere/widget/GridView;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;->this$0:Lorg/holoeverywhere/widget/GridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/widget/GridView;Lorg/holoeverywhere/widget/GridView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/widget/GridView;
    .param p2, "x1"    # Lorg/holoeverywhere/widget/GridView$1;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;-><init>(Lorg/holoeverywhere/widget/GridView;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;->mWrapped:Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;->onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;->mWrapped:Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;

    invoke-interface {v1, p1, p2}, Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;->onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;->this$0:Lorg/holoeverywhere/widget/GridView;

    invoke-virtual {v1, v0}, Lorg/holoeverywhere/widget/GridView;->setLongClickable(Z)V

    .line 61
    const/4 v0, 0x1

    .line 63
    :cond_0
    return v0
.end method

.method public onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;->mWrapped:Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;->onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V

    .line 70
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;->this$0:Lorg/holoeverywhere/widget/GridView;

    const/4 v1, 0x0

    # setter for: Lorg/holoeverywhere/widget/GridView;->mChoiceActionMode:Lcom/actionbarsherlock/view/ActionMode;
    invoke-static {v0, v1}, Lorg/holoeverywhere/widget/GridView;->access$002(Lorg/holoeverywhere/widget/GridView;Lcom/actionbarsherlock/view/ActionMode;)Lcom/actionbarsherlock/view/ActionMode;

    .line 71
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;->this$0:Lorg/holoeverywhere/widget/GridView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/GridView;->clearChoices()V

    .line 72
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;->this$0:Lorg/holoeverywhere/widget/GridView;

    # invokes: Lorg/holoeverywhere/widget/GridView;->updateOnScreenCheckedViews()V
    invoke-static {v0}, Lorg/holoeverywhere/widget/GridView;->access$100(Lorg/holoeverywhere/widget/GridView;)V

    .line 73
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;->this$0:Lorg/holoeverywhere/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/holoeverywhere/widget/GridView;->setLongClickable(Z)V

    .line 74
    return-void
.end method

.method public onItemCheckedStateChanged(Lcom/actionbarsherlock/view/ActionMode;IJZ)V
    .locals 6
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;->mWrapped:Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Lcom/actionbarsherlock/view/ActionMode;IJZ)V

    .line 81
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;->this$0:Lorg/holoeverywhere/widget/GridView;

    invoke-virtual {v0}, Lorg/holoeverywhere/widget/GridView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    .line 84
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 88
    iget-object v0, p0, Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;->mWrapped:Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;->onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;)V
    .locals 0
    .param p1, "wrapped"    # Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/holoeverywhere/widget/GridView$MultiChoiceModeWrapper;->mWrapped:Lorg/holoeverywhere/widget/ListView$MultiChoiceModeListener;

    .line 93
    return-void
.end method
