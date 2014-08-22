.class public abstract Lorg/holoeverywhere/internal/GenericInflater;
.super Ljava/lang/Object;
.source "GenericInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/internal/GenericInflater$Parent;,
        Lorg/holoeverywhere/internal/GenericInflater$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "P::",
        "Lorg/holoeverywhere/internal/GenericInflater$Parent",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field protected final mConstructorArgs:[Ljava/lang/Object;

.field protected final mConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFactoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/holoeverywhere/internal/GenericInflater$Factory",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/holoeverywhere/internal/GenericInflater;->sConstructorMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    const/4 v1, 0x2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 31
    new-array v0, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mConstructorSignature:[Ljava/lang/Class;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mPackages:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lorg/holoeverywhere/internal/GenericInflater;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mFactoryList:Ljava/util/List;

    .line 41
    return-void
.end method

.method protected constructor <init>(Lorg/holoeverywhere/internal/GenericInflater;Landroid/content/Context;)V
    .locals 3
    .param p2, "newContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/holoeverywhere/internal/GenericInflater",
            "<TT;TP;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    .local p1, "original":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    const/4 v1, 0x2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 31
    new-array v0, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mConstructorSignature:[Ljava/lang/Class;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mPackages:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lorg/holoeverywhere/internal/GenericInflater;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/holoeverywhere/internal/GenericInflater;->mFactoryList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mFactoryList:Ljava/util/List;

    .line 46
    return-void
.end method

.method private final createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    const/4 v4, 0x0

    .line 93
    .local v4, "item":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v5, p0, Lorg/holoeverywhere/internal/GenericInflater;->mFactoryList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v4    # "item":Ljava/lang/Object;, "TT;"
    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/holoeverywhere/internal/GenericInflater$Factory;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 95
    .local v1, "factory":Lorg/holoeverywhere/internal/GenericInflater$Factory;, "Lorg/holoeverywhere/internal/GenericInflater$Factory<TT;>;"
    :try_start_1
    iget-object v5, p0, Lorg/holoeverywhere/internal/GenericInflater;->mContext:Landroid/content/Context;

    invoke-interface {v1, p2, v5, p3}, Lorg/holoeverywhere/internal/GenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 96
    .restart local v4    # "item":Ljava/lang/Object;, "TT;"
    if-eqz v4, :cond_0

    .line 102
    .end local v1    # "factory":Lorg/holoeverywhere/internal/GenericInflater$Factory;, "Lorg/holoeverywhere/internal/GenericInflater$Factory<TT;>;"
    .end local v4    # "item":Ljava/lang/Object;, "TT;"
    :cond_1
    if-nez v4, :cond_2

    .line 103
    const/16 v5, 0x2e

    :try_start_2
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_3

    .line 104
    invoke-virtual {p0, p2, p3}, Lorg/holoeverywhere/internal/GenericInflater;->onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v4

    .line 109
    :cond_2
    :goto_1
    return-object v4

    .line 106
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p0, p2, v5, p3}, Lorg/holoeverywhere/internal/GenericInflater;->createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/view/InflateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .restart local v4    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 110
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/view/InflateException;
    throw v0

    .line 112
    .end local v0    # "e":Landroid/view/InflateException;
    :catch_1
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Error inflating class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 116
    .local v3, "ie":Landroid/view/InflateException;
    invoke-virtual {v3, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 117
    throw v3

    .line 118
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "ie":Landroid/view/InflateException;
    :catch_2
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Error inflating class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 122
    .restart local v3    # "ie":Landroid/view/InflateException;
    invoke-virtual {v3, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 123
    throw v3

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "ie":Landroid/view/InflateException;
    .restart local v1    # "factory":Lorg/holoeverywhere/internal/GenericInflater$Factory;, "Lorg/holoeverywhere/internal/GenericInflater$Factory<TT;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :catch_3
    move-exception v5

    goto :goto_0
.end method

.method private rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TT;",
            "Landroid/util/AttributeSet;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    .local p2, "parent":Ljava/lang/Object;, "TT;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 253
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_2

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 254
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 257
    invoke-virtual {p0, p1, p2, p3}, Lorg/holoeverywhere/internal/GenericInflater;->onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 260
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0, p1, v2, p3}, Lorg/holoeverywhere/internal/GenericInflater;->createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move-object v4, p2

    .line 262
    check-cast v4, Lorg/holoeverywhere/internal/GenericInflater$Parent;

    invoke-interface {v4, v1}, Lorg/holoeverywhere/internal/GenericInflater$Parent;->addItemFromInflater(Ljava/lang/Object;)V

    .line 263
    invoke-direct {p0, p1, v1, p3}, Lorg/holoeverywhere/internal/GenericInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 265
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public addFactory(Lorg/holoeverywhere/internal/GenericInflater$Factory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/holoeverywhere/internal/GenericInflater$Factory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    .local p1, "factory":Lorg/holoeverywhere/internal/GenericInflater$Factory;, "Lorg/holoeverywhere/internal/GenericInflater$Factory<TT;>;"
    iget-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mFactoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public abstract cloneInContext(Landroid/content/Context;)Lorg/holoeverywhere/internal/GenericInflater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lorg/holoeverywhere/internal/GenericInflater",
            "<TT;TP;>;"
        }
    .end annotation
.end method

.method public final createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    if-eqz p2, :cond_0

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    :cond_0
    sget-object v4, Lorg/holoeverywhere/internal/GenericInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 62
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v1, :cond_2

    .line 63
    :try_start_0
    iget-object v4, p0, Lorg/holoeverywhere/internal/GenericInflater;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez v4, :cond_1

    .line 64
    invoke-virtual {p0}, Lorg/holoeverywhere/internal/GenericInflater;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    iput-object v4, p0, Lorg/holoeverywhere/internal/GenericInflater;->mClassLoader:Ljava/lang/ClassLoader;

    .line 65
    iget-object v4, p0, Lorg/holoeverywhere/internal/GenericInflater;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez v4, :cond_1

    .line 66
    iget-object v4, p0, Lorg/holoeverywhere/internal/GenericInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    iput-object v4, p0, Lorg/holoeverywhere/internal/GenericInflater;->mClassLoader:Ljava/lang/ClassLoader;

    .line 69
    :cond_1
    iget-object v4, p0, Lorg/holoeverywhere/internal/GenericInflater;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v0}, Lorg/holoeverywhere/internal/GenericInflater;->findConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 71
    sget-object v4, Lorg/holoeverywhere/internal/GenericInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {p0, p1, p3, v1}, Lorg/holoeverywhere/internal/GenericInflater;->obtainConstructorArgs(Ljava/lang/String;Landroid/util/AttributeSet;Ljava/lang/reflect/Constructor;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Landroid/view/InflateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Error inflating class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 78
    .local v3, "ie":Landroid/view/InflateException;
    invoke-virtual {v3, v2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 79
    throw v3

    .line 80
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .end local v3    # "ie":Landroid/view/InflateException;
    :catch_1
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/view/InflateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Error inflating class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 84
    .restart local v3    # "ie":Landroid/view/InflateException;
    invoke-virtual {v3, v2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 85
    throw v3
.end method

.method protected findConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    iget-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 137
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    iget-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getFactory()Lorg/holoeverywhere/internal/GenericInflater$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/holoeverywhere/internal/GenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/holoeverywhere/internal/GenericInflater;->getFactory(I)Lorg/holoeverywhere/internal/GenericInflater$Factory;

    move-result-object v0

    return-object v0
.end method

.method public final getFactory(I)Lorg/holoeverywhere/internal/GenericInflater$Factory;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/holoeverywhere/internal/GenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    iget-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mFactoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/internal/GenericInflater$Factory;

    return-object v0
.end method

.method public final getFactoryCount()I
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    iget-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mFactoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public inflate(I)Ljava/lang/Object;
    .locals 2
    .param p1, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/holoeverywhere/internal/GenericInflater;->inflate(ILorg/holoeverywhere/internal/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inflate(ILorg/holoeverywhere/internal/GenericInflater$Parent;)Ljava/lang/Object;
    .locals 1
    .param p1, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITP;)TT;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    .local p2, "root":Lorg/holoeverywhere/internal/GenericInflater$Parent;, "TP;"
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/holoeverywhere/internal/GenericInflater;->inflate(ILorg/holoeverywhere/internal/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(ILorg/holoeverywhere/internal/GenericInflater$Parent;Z)Ljava/lang/Object;
    .locals 2
    .param p1, "resource"    # I
    .param p3, "attachToRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITP;Z)TT;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    .local p2, "root":Lorg/holoeverywhere/internal/GenericInflater$Parent;, "TP;"
    invoke-virtual {p0}, Lorg/holoeverywhere/internal/GenericInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 164
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, v0, p2, p3}, Lorg/holoeverywhere/internal/GenericInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Lorg/holoeverywhere/internal/GenericInflater$Parent;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 166
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/holoeverywhere/internal/GenericInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Lorg/holoeverywhere/internal/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Lorg/holoeverywhere/internal/GenericInflater$Parent;)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TP;)TT;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    .local p2, "root":Lorg/holoeverywhere/internal/GenericInflater$Parent;, "TP;"
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/holoeverywhere/internal/GenericInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Lorg/holoeverywhere/internal/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized inflate(Lorg/xmlpull/v1/XmlPullParser;Lorg/holoeverywhere/internal/GenericInflater$Parent;Z)Ljava/lang/Object;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attachToRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TP;Z)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    .local p2, "root":Lorg/holoeverywhere/internal/GenericInflater$Parent;, "TP;"
    const/4 v7, 0x2

    .line 180
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 181
    .local v0, "attrs":Landroid/util/AttributeSet;
    move-object v3, p2

    .line 185
    .local v3, "result":Lorg/holoeverywhere/internal/GenericInflater$Parent;, "TT;"
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v7, :cond_1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 188
    :cond_1
    if-eq v4, v7, :cond_2

    .line 189
    new-instance v6, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": No start tag found!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .end local v4    # "type":I
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Landroid/view/InflateException;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v1    # "e":Landroid/view/InflateException;
    .end local v3    # "result":Lorg/holoeverywhere/internal/GenericInflater$Parent;, "TT;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 192
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "result":Lorg/holoeverywhere/internal/GenericInflater$Parent;, "TT;"
    .restart local v4    # "type":I
    :cond_2
    :try_start_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6, v0}, Lorg/holoeverywhere/internal/GenericInflater;->createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v5

    .line 193
    .local v5, "xmlRoot":Ljava/lang/Object;, "TT;"
    check-cast v5, Lorg/holoeverywhere/internal/GenericInflater$Parent;

    .end local v5    # "xmlRoot":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2, p3, v5}, Lorg/holoeverywhere/internal/GenericInflater;->onMergeRoots(Lorg/holoeverywhere/internal/GenericInflater$Parent;ZLorg/holoeverywhere/internal/GenericInflater$Parent;)Lorg/holoeverywhere/internal/GenericInflater$Parent;

    move-result-object v3

    .line 194
    invoke-direct {p0, p1, v3, v0}, Lorg/holoeverywhere/internal/GenericInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V
    :try_end_3
    .catch Landroid/view/InflateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    monitor-exit p0

    return-object v3

    .line 197
    .end local v4    # "type":I
    :catch_1
    move-exception v1

    .line 198
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    new-instance v2, Landroid/view/InflateException;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 199
    .local v2, "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 200
    throw v2

    .line 201
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "ex":Landroid/view/InflateException;
    :catch_2
    move-exception v1

    .line 202
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 204
    .restart local v2    # "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 205
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected obtainConstructorArgs(Ljava/lang/String;Landroid/util/AttributeSet;Ljava/lang/reflect/Constructor;)[Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            "Ljava/lang/reflect/Constructor",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    .local p3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    iget-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 213
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/holoeverywhere/internal/GenericInflater;->mContext:Landroid/content/Context;

    aput-object v2, v0, v1

    .line 214
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 215
    return-object v0
.end method

.method protected onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TT;",
            "Landroid/util/AttributeSet;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    .local p2, "parent":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    iget-object v2, p0, Lorg/holoeverywhere/internal/GenericInflater;->mPackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 226
    .local v1, "sPackage":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p2}, Lorg/holoeverywhere/internal/GenericInflater;->createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v2

    .line 228
    .end local v1    # "sPackage":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onMergeRoots(Lorg/holoeverywhere/internal/GenericInflater$Parent;ZLorg/holoeverywhere/internal/GenericInflater$Parent;)Lorg/holoeverywhere/internal/GenericInflater$Parent;
    .locals 0
    .param p2, "attachToGivenRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;ZTP;)TP;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    .local p1, "givenRoot":Lorg/holoeverywhere/internal/GenericInflater$Parent;, "TP;"
    .local p3, "xmlRoot":Lorg/holoeverywhere/internal/GenericInflater$Parent;, "TP;"
    return-object p3
.end method

.method public registerPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 236
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    invoke-static {p1}, Ljava/lang/Package;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p1

    .line 237
    iget-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_0
    return-void
.end method

.method public removeFactory(Lorg/holoeverywhere/internal/GenericInflater$Factory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/holoeverywhere/internal/GenericInflater$Factory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    .local p1, "factory":Lorg/holoeverywhere/internal/GenericInflater$Factory;, "Lorg/holoeverywhere/internal/GenericInflater$Factory<TT;>;"
    iget-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mFactoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 268
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    iput-object p1, p0, Lorg/holoeverywhere/internal/GenericInflater;->mClassLoader:Ljava/lang/ClassLoader;

    .line 269
    return-void
.end method

.method public setFactory(Lorg/holoeverywhere/internal/GenericInflater$Factory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/holoeverywhere/internal/GenericInflater$Factory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    .local p1, "factory":Lorg/holoeverywhere/internal/GenericInflater$Factory;, "Lorg/holoeverywhere/internal/GenericInflater$Factory<TT;>;"
    iget-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mFactoryList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 273
    return-void
.end method

.method public unregisterPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 276
    .local p0, "this":Lorg/holoeverywhere/internal/GenericInflater;, "Lorg/holoeverywhere/internal/GenericInflater<TT;TP;>;"
    iget-object v0, p0, Lorg/holoeverywhere/internal/GenericInflater;->mPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 277
    return-void
.end method
