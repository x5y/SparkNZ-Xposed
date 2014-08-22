.class Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;
.super Lcom/actionbarsherlock/view/ActionMode;
.source "ActionBarSherlockNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/ActionBarSherlockNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeWrapper"
.end annotation


# instance fields
.field private final mActionMode:Landroid/view/ActionMode;

.field private mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

.field final synthetic this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;Landroid/view/ActionMode;)V
    .locals 1
    .param p2, "actionMode"    # Landroid/view/ActionMode;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    invoke-direct {p0}, Lcom/actionbarsherlock/view/ActionMode;-><init>()V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    .line 274
    iput-object p2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    .line 275
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 311
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;-><init>(Landroid/view/Menu;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    return-object v0
.end method

.method public bridge synthetic getMenu()Lcom/actionbarsherlock/view/Menu;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->getMenu()Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 305
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->invalidate()V

    .line 306
    :cond_0
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 300
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setSubtitle(I)V

    .line 295
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 290
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTag(Ljava/lang/Object;)V

    .line 344
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTitle(I)V

    .line 285
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method
