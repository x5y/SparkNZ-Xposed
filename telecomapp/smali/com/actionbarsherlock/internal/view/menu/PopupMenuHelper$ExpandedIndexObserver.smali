.class Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$ExpandedIndexObserver;
.super Landroid/database/DataSetObserver;
.source "PopupMenuHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedIndexObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$ExpandedIndexObserver;->this$0:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;
    .param p2, "x1"    # Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$ExpandedIndexObserver;-><init>(Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$ExpandedIndexObserver;->this$0:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;

    # getter for: Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->mAdapter:Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;->access$000(Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper;)Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/PopupMenuHelper$MenuAdapter;->findExpandedIndex()V

    .line 37
    return-void
.end method
