.class final Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Lorg/holoeverywhere/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntent:Landroid/content/Intent;

.field private final mLaunchedFromUid:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/holoeverywhere/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lorg/holoeverywhere/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 85
    iget-object v0, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 86
    iput-object p4, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 87
    iput-object p5, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 88
    iput p6, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    .line 89
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/LayoutInflater;

    iput-object v0, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mInflater:Lorg/holoeverywhere/LayoutInflater;

    .line 90
    invoke-direct {p0}, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 91
    return-void
.end method

.method static synthetic access$500(Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method private final bindView(Landroid/view/View;Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 94
    const v3, 0x1020014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/widget/TextView;

    .line 95
    .local v1, "text":Lorg/holoeverywhere/widget/TextView;
    const v3, 0x1020015

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/holoeverywhere/widget/TextView;

    .line 96
    .local v2, "text2":Lorg/holoeverywhere/widget/TextView;
    sget v3, Lorg/holoeverywhere/R$id;->icon:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 97
    .local v0, "icon":Landroid/widget/ImageView;
    iget-object v3, p2, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lorg/holoeverywhere/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v3, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    # getter for: Lorg/holoeverywhere/app/ResolverActivity;->mShowExtended:Z
    invoke-static {v3}, Lorg/holoeverywhere/app/ResolverActivity;->access$100(Lorg/holoeverywhere/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/holoeverywhere/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v3, p2, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lorg/holoeverywhere/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_0
    iget-object v3, p2, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 105
    iget-object v3, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    iget-object v4, p2, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v4}, Lorg/holoeverywhere/app/ResolverActivity;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p2, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 107
    :cond_0
    iget-object v3, p2, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    return-void

    .line 102
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/holoeverywhere/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 16
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Landroid/content/pm/ResolveInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v1, p3, p2

    add-int/lit8 v12, v1, 0x1

    .line 171
    .local v12, "num":I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_1

    .line 172
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;-><init>(Lorg/holoeverywhere/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_0
    return-void

    .line 174
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    const/4 v2, 0x1

    # setter for: Lorg/holoeverywhere/app/ResolverActivity;->mShowExtended:Z
    invoke-static {v1, v2}, Lorg/holoeverywhere/app/ResolverActivity;->access$102(Lorg/holoeverywhere/app/ResolverActivity;Z)Z

    .line 175
    const/4 v14, 0x0

    .line 176
    .local v14, "usePkg":Z
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    # getter for: Lorg/holoeverywhere/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lorg/holoeverywhere/app/ResolverActivity;->access$300(Lorg/holoeverywhere/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 177
    .local v13, "startApp":Ljava/lang/CharSequence;
    if-nez v13, :cond_2

    .line 178
    const/4 v14, 0x1

    .line 180
    :cond_2
    if-nez v14, :cond_5

    .line 181
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 183
    .local v7, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v8, p2, 0x1

    .local v8, "j":I
    :goto_0
    move/from16 v0, p3

    if-gt v8, v0, :cond_4

    .line 185
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 186
    .local v10, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    # getter for: Lorg/holoeverywhere/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lorg/holoeverywhere/app/ResolverActivity;->access$300(Lorg/holoeverywhere/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 187
    .local v9, "jApp":Ljava/lang/CharSequence;
    if-eqz v9, :cond_3

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 188
    :cond_3
    const/4 v14, 0x1

    .line 194
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 196
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    :cond_5
    move/from16 v11, p2

    .local v11, "k":I
    :goto_1
    move/from16 v0, p3

    if-gt v11, v0, :cond_0

    .line 197
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 198
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_7

    .line 199
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;-><init>(Lorg/holoeverywhere/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 191
    .end local v3    # "add":Landroid/content/pm/ResolveInfo;
    .end local v11    # "k":I
    .restart local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v8    # "j":I
    .restart local v9    # "jApp":Ljava/lang/CharSequence;
    .restart local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 202
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "k":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    # getter for: Lorg/holoeverywhere/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lorg/holoeverywhere/app/ResolverActivity;->access$300(Lorg/holoeverywhere/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;-><init>(Lorg/holoeverywhere/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private rebuildList()V
    .locals 24

    .prologue
    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    .line 229
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    .local v14, "N":I
    if-lez v14, :cond_10

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 231
    .local v12, "r0":Landroid/content/pm/ResolveInfo;
    const/16 v18, 0x1

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v14, :cond_6

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 233
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget v2, v12, Landroid/content/pm/ResolveInfo;->priority:I

    iget v3, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, v12, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v3, v4, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v2, v3, :cond_5

    .line 235
    :cond_1
    :goto_1
    move/from16 v0, v18

    if-ge v0, v14, :cond_5

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 237
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 213
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v12    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v14    # "N":I
    .end local v18    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    # getter for: Lorg/holoeverywhere/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lorg/holoeverywhere/app/ResolverActivity;->access$300(Lorg/holoeverywhere/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/high16 v6, 0x10000

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    # getter for: Lorg/holoeverywhere/app/ResolverActivity;->mAlwaysUseOption:Z
    invoke-static {v2}, Lorg/holoeverywhere/app/ResolverActivity;->access$400(Lorg/holoeverywhere/app/ResolverActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x40

    :goto_2
    or-int/2addr v2, v6

    invoke-virtual {v3, v5, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v18, v2, -0x1

    .restart local v18    # "i":I
    :goto_3
    if-ltz v18, :cond_0

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v15, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 219
    .local v15, "ai":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    iget-object v3, v15, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    iget-object v6, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v8, v15, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-virtual {v2, v3, v5, v6, v8}, Lorg/holoeverywhere/app/ResolverActivity;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v17

    .line 222
    .local v17, "granted":I
    if-eqz v17, :cond_3

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 217
    :cond_3
    add-int/lit8 v18, v18, -0x1

    goto :goto_3

    .line 213
    .end local v15    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v17    # "granted":I
    .end local v18    # "i":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 231
    .restart local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v12    # "r0":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "N":I
    .restart local v18    # "i":I
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 241
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    const/4 v2, 0x1

    if-le v14, v2, :cond_7

    .line 242
    new-instance v22, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    # getter for: Lorg/holoeverywhere/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lorg/holoeverywhere/app/ResolverActivity;->access$300(Lorg/holoeverywhere/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 244
    .local v22, "rComparator":Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 246
    .end local v22    # "rComparator":Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v2, :cond_b

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    move-object/from16 v16, v0

    .local v16, "arr$":[Landroid/content/Intent;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    aget-object v7, v16, v19

    .line 249
    .local v7, "ii":Landroid/content/Intent;
    if-nez v7, :cond_8

    .line 248
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 252
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    invoke-virtual {v2}, Lorg/holoeverywhere/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v15

    .line 254
    .restart local v15    # "ai":Landroid/content/pm/ActivityInfo;
    if-nez v15, :cond_9

    .line 255
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No activity found for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 259
    :cond_9
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 260
    .restart local v4    # "ri":Landroid/content/pm/ResolveInfo;
    iput-object v15, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 261
    instance-of v2, v7, Landroid/content/pm/LabeledIntent;

    if-eqz v2, :cond_a

    move-object/from16 v21, v7

    .line 262
    check-cast v21, Landroid/content/pm/LabeledIntent;

    .line 263
    .local v21, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 264
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v2

    iput v2, v4, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 265
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v4, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 266
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v2

    iput v2, v4, Landroid/content/pm/ResolveInfo;->icon:I

    .line 268
    .end local v21    # "li":Landroid/content/pm/LabeledIntent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v2, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    invoke-virtual {v5}, Lorg/holoeverywhere/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;-><init>(Lorg/holoeverywhere/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 272
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v7    # "ii":Landroid/content/Intent;
    .end local v15    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v16    # "arr$":[Landroid/content/Intent;
    .end local v19    # "i$":I
    .end local v20    # "len$":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "r0":Landroid/content/pm/ResolveInfo;
    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 273
    .restart local v12    # "r0":Landroid/content/pm/ResolveInfo;
    const/4 v10, 0x0

    .line 274
    .local v10, "start":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    # getter for: Lorg/holoeverywhere/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lorg/holoeverywhere/app/ResolverActivity;->access$300(Lorg/holoeverywhere/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 275
    .local v13, "r0Label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    const/4 v3, 0x0

    # setter for: Lorg/holoeverywhere/app/ResolverActivity;->mShowExtended:Z
    invoke-static {v2, v3}, Lorg/holoeverywhere/app/ResolverActivity;->access$102(Lorg/holoeverywhere/app/ResolverActivity;Z)Z

    .line 276
    const/16 v18, 0x1

    :goto_6
    move/from16 v0, v18

    if-ge v0, v14, :cond_f

    .line 277
    if-nez v13, :cond_c

    .line 278
    iget-object v2, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 280
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 281
    .restart local v4    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    # getter for: Lorg/holoeverywhere/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lorg/holoeverywhere/app/ResolverActivity;->access$300(Lorg/holoeverywhere/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    .line 282
    .local v23, "riLabel":Ljava/lang/CharSequence;
    if-nez v23, :cond_d

    .line 283
    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 285
    :cond_d
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 276
    :goto_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 288
    :cond_e
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    add-int/lit8 v11, v18, -0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 289
    move-object v12, v4

    .line 290
    move-object/from16 v13, v23

    .line 291
    move/from16 v10, v18

    goto :goto_7

    .line 293
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v23    # "riLabel":Ljava/lang/CharSequence;
    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    add-int/lit8 v11, v14, -0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 295
    .end local v10    # "start":I
    .end local v12    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v13    # "r0Label":Ljava/lang/CharSequence;
    .end local v14    # "N":I
    .end local v18    # "i":I
    :cond_10
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 122
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 128
    if-nez p2, :cond_0

    .line 129
    iget-object v3, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mInflater:Lorg/holoeverywhere/LayoutInflater;

    sget v4, Lorg/holoeverywhere/R$layout;->resolve_list_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Lorg/holoeverywhere/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 130
    .local v2, "view":Landroid/view/View;
    sget v3, Lorg/holoeverywhere/R$id;->icon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 131
    .local v0, "icon":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 132
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    # getter for: Lorg/holoeverywhere/app/ResolverActivity;->mIconSize:I
    invoke-static {v3}, Lorg/holoeverywhere/app/ResolverActivity;->access$200(Lorg/holoeverywhere/app/ResolverActivity;)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 136
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    iget-object v3, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;

    invoke-direct {p0, v2, v3}, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->bindView(Landroid/view/View;Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;)V

    .line 137
    return-object v2

    .line 134
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public handlePackagesChanged()V
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v1

    .line 142
    .local v1, "oldItemCount":I
    invoke-direct {p0}, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 143
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 144
    iget-object v2, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 145
    iget-object v2, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    invoke-virtual {v2}, Lorg/holoeverywhere/app/ResolverActivity;->finish()V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 148
    .local v0, "newItemCount":I
    if-eq v0, v1, :cond_1

    .line 149
    iget-object v2, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->this$0:Lorg/holoeverywhere/app/ResolverActivity;

    invoke-virtual {v2}, Lorg/holoeverywhere/app/ResolverActivity;->resizeGrid()V

    .line 151
    :cond_1
    return-void
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 154
    iget-object v3, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 155
    const/4 v2, 0x0

    .line 165
    :goto_0
    return-object v2

    .line 157
    :cond_0
    iget-object v3, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;

    .line 158
    .local v1, "dri":Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_1
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 160
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x3000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    iget-object v3, v1, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 163
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 158
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    goto :goto_1
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/holoeverywhere/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;

    iget-object v0, v0, Lorg/holoeverywhere/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method
