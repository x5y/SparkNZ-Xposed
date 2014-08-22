.class public interface abstract annotation Lorg/holoeverywhere/addon/IAddon$Addon;
.super Ljava/lang/Object;
.source "IAddon.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/holoeverywhere/addon/IAddon$Addon;
        conflict = {}
        conflictStrings = {}
        inhert = false
        weight = -0x1
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/addon/IAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Addon"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract conflict()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/holoeverywhere/addon/IAddon;",
            ">;"
        }
    .end annotation
.end method

.method public abstract conflictStrings()[Ljava/lang/String;
.end method

.method public abstract inhert()Z
.end method

.method public abstract weight()I
.end method
