.class public Landroid/support/v4/app/_HoloFragmentInflater;
.super Ljava/lang/Object;
.source "_HoloFragmentInflater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static inflate(Landroid/util/AttributeSet;Landroid/view/View;Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)Landroid/view/View;
    .locals 11
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p3, "parentFragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 17
    const-string v7, "class"

    invoke-interface {p0, v3, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    .local v2, "fname":Ljava/lang/String;
    sget-object v7, Landroid/support/v4/app/FragmentActivity$FragmentTag;->Fragment:[I

    invoke-virtual {p2, p0, v7}, Landroid/support/v4/app/FragmentActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 19
    .local v0, "a":Landroid/content/res/TypedArray;
    if-nez v2, :cond_0

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 22
    :cond_0
    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 23
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    :cond_1
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 26
    .local v4, "id":I
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 27
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 29
    .local v1, "containerId":I
    :cond_2
    if-ne v1, v9, :cond_3

    if-ne v4, v9, :cond_3

    if-nez v6, :cond_3

    .line 30
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 35
    :cond_3
    invoke-static {p2, p3}, Landroid/support/v4/app/_HoloFragmentInflater;->obtainFragmentManager(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManagerImpl;

    move-result-object v5

    .line 36
    .local v5, "impl":Landroid/support/v4/app/FragmentManagerImpl;
    if-eq v4, v9, :cond_4

    invoke-virtual {v5, v4}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 37
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    :cond_4
    if-nez v3, :cond_5

    if-eqz v6, :cond_5

    .line 38
    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 40
    :cond_5
    if-nez v3, :cond_6

    if-eq v1, v9, :cond_6

    .line 41
    invoke-virtual {v5, v1}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 43
    :cond_6
    if-nez v3, :cond_8

    .line 44
    invoke-static {p2, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 45
    iput-object p3, v3, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 46
    iput-object p2, v3, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 47
    iput-boolean v10, v3, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 48
    if-eqz v4, :cond_7

    move v7, v4

    :goto_0
    iput v7, v3, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 49
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "parent":Landroid/view/View;
    iput-object p1, v3, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 50
    iput v1, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 51
    iput-object v6, v3, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 52
    iput-boolean v10, v3, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 53
    iput-object v5, v3, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 54
    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, p2, p0, v7}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {v5, v3, v10}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 68
    :goto_1
    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v7, :cond_b

    .line 69
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " did not create a view."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .restart local p1    # "parent":Landroid/view/View;
    :cond_7
    move v7, v1

    .line 48
    goto :goto_0

    .line 56
    :cond_8
    iget-boolean v7, v3, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-eqz v7, :cond_9

    .line 57
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Duplicate id 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", tag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", or parent id 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with another fragment for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 62
    :cond_9
    iput-boolean v10, v3, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 63
    iget-boolean v7, v3, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v7, :cond_a

    .line 64
    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, p2, p0, v7}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 66
    :cond_a
    invoke-virtual {v5, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 72
    .end local p1    # "parent":Landroid/view/View;
    :cond_b
    if-eqz v4, :cond_c

    .line 73
    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setId(I)V

    .line 75
    :cond_c
    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_d

    .line 76
    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    :cond_d
    iget-object v7, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    return-object v7
.end method

.method public static inflate(Lorg/holoeverywhere/LayoutInflater;Landroid/util/AttributeSet;Landroid/view/View;Landroid/support/v4/app/Fragment;)Landroid/view/View;
    .locals 4
    .param p0, "layoutInflater"    # Lorg/holoeverywhere/LayoutInflater;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/holoeverywhere/LayoutInflater;->getFragmentActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 84
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    if-eqz v0, :cond_0

    .line 85
    invoke-static {p1, p2, v0, p3}, Landroid/support/v4/app/_HoloFragmentInflater;->inflate(Landroid/util/AttributeSet;Landroid/view/View;Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)Landroid/view/View;

    move-result-object v2

    .line 98
    :goto_0
    return-object v2

    .line 87
    :cond_0
    invoke-virtual {p0}, Lorg/holoeverywhere/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 88
    .local v1, "context":Landroid/content/Context;
    :goto_1
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    .line 89
    instance-of v2, v1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 90
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 95
    :cond_1
    if-nez v0, :cond_3

    .line 96
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot find any reference to FragmentActivity"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_2
    check-cast v1, Landroid/content/ContextWrapper;

    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .restart local v1    # "context":Landroid/content/Context;
    goto :goto_1

    .line 98
    :cond_3
    invoke-static {p1, p2, v0, p3}, Landroid/support/v4/app/_HoloFragmentInflater;->inflate(Landroid/util/AttributeSet;Landroid/view/View;Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method private static obtainFragmentManager(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManagerImpl;
    .locals 2
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "fm":Landroid/support/v4/app/FragmentManagerImpl;
    if-eqz p1, :cond_0

    .line 105
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 106
    if-nez v1, :cond_0

    .line 108
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .end local v1    # "fm":Landroid/support/v4/app/FragmentManagerImpl;
    check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .restart local v1    # "fm":Landroid/support/v4/app/FragmentManagerImpl;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    .line 115
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    .line 117
    :cond_1
    return-object v1

    .line 109
    .end local v1    # "fm":Landroid/support/v4/app/FragmentManagerImpl;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .restart local v1    # "fm":Landroid/support/v4/app/FragmentManagerImpl;
    goto :goto_0
.end method
