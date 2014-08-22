.class final Lorg/holoeverywhere/addon/IAddonBasicAttacher$AddonComparator;
.super Ljava/lang/Object;
.source "IAddonBasicAttacher.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/addon/IAddonBasicAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AddonComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/holoeverywhere/addon/IAddonBasicAttacher;


# direct methods
.method private constructor <init>(Lorg/holoeverywhere/addon/IAddonBasicAttacher;)V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBasicAttacher$AddonComparator;, "Lorg/holoeverywhere/addon/IAddonBasicAttacher<TV;TZ;>.AddonComparator;"
    iput-object p1, p0, Lorg/holoeverywhere/addon/IAddonBasicAttacher$AddonComparator;->this$0:Lorg/holoeverywhere/addon/IAddonBasicAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/holoeverywhere/addon/IAddonBasicAttacher;Lorg/holoeverywhere/addon/IAddonBasicAttacher$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/holoeverywhere/addon/IAddonBasicAttacher;
    .param p2, "x1"    # Lorg/holoeverywhere/addon/IAddonBasicAttacher$1;

    .prologue
    .line 17
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBasicAttacher$AddonComparator;, "Lorg/holoeverywhere/addon/IAddonBasicAttacher<TV;TZ;>.AddonComparator;"
    invoke-direct {p0, p1}, Lorg/holoeverywhere/addon/IAddonBasicAttacher$AddonComparator;-><init>(Lorg/holoeverywhere/addon/IAddonBasicAttacher;)V

    return-void
.end method

.method private getWeight(Lorg/holoeverywhere/addon/IAddon;)I
    .locals 2
    .param p1, "addon"    # Lorg/holoeverywhere/addon/IAddon;

    .prologue
    .line 26
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBasicAttacher$AddonComparator;, "Lorg/holoeverywhere/addon/IAddonBasicAttacher<TV;TZ;>.AddonComparator;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/holoeverywhere/addon/IAddon$Addon;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/holoeverywhere/addon/IAddon$Addon;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/holoeverywhere/addon/IAddon$Addon;

    invoke-interface {v0}, Lorg/holoeverywhere/addon/IAddon$Addon;->weight()I

    move-result v0

    .line 29
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 17
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBasicAttacher$AddonComparator;, "Lorg/holoeverywhere/addon/IAddonBasicAttacher<TV;TZ;>.AddonComparator;"
    check-cast p1, Lorg/holoeverywhere/addon/IAddonBase;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/holoeverywhere/addon/IAddonBase;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/holoeverywhere/addon/IAddonBasicAttacher$AddonComparator;->compare(Lorg/holoeverywhere/addon/IAddonBase;Lorg/holoeverywhere/addon/IAddonBase;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/holoeverywhere/addon/IAddonBase;Lorg/holoeverywhere/addon/IAddonBase;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)I"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lorg/holoeverywhere/addon/IAddonBasicAttacher$AddonComparator;, "Lorg/holoeverywhere/addon/IAddonBasicAttacher<TV;TZ;>.AddonComparator;"
    .local p1, "lhs":Lorg/holoeverywhere/addon/IAddonBase;, "TV;"
    .local p2, "rhs":Lorg/holoeverywhere/addon/IAddonBase;, "TV;"
    invoke-virtual {p1}, Lorg/holoeverywhere/addon/IAddonBase;->getParent()Lorg/holoeverywhere/addon/IAddon;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/holoeverywhere/addon/IAddonBasicAttacher$AddonComparator;->getWeight(Lorg/holoeverywhere/addon/IAddon;)I

    move-result v0

    .line 21
    .local v0, "i1":I
    invoke-virtual {p2}, Lorg/holoeverywhere/addon/IAddonBase;->getParent()Lorg/holoeverywhere/addon/IAddon;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/holoeverywhere/addon/IAddonBasicAttacher$AddonComparator;->getWeight(Lorg/holoeverywhere/addon/IAddon;)I

    move-result v1

    .line 22
    .local v1, "i2":I
    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
