.class public interface abstract annotation Lcom/activeandroid/annotation/Column;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/activeandroid/annotation/Column;
        length = -0x1
        notNull = false
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->NO_ACTION:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
        onNullConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->FAIL:Lcom/activeandroid/annotation/Column$ConflictAction;
        onUniqueConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->FAIL:Lcom/activeandroid/annotation/Column$ConflictAction;
        onUpdate = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->NO_ACTION:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
        unique = false
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/activeandroid/annotation/Column$ForeignKeyAction;,
        Lcom/activeandroid/annotation/Column$ConflictAction;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract length()I
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract notNull()Z
.end method

.method public abstract onDelete()Lcom/activeandroid/annotation/Column$ForeignKeyAction;
.end method

.method public abstract onNullConflict()Lcom/activeandroid/annotation/Column$ConflictAction;
.end method

.method public abstract onUniqueConflict()Lcom/activeandroid/annotation/Column$ConflictAction;
.end method

.method public abstract onUpdate()Lcom/activeandroid/annotation/Column$ForeignKeyAction;
.end method

.method public abstract unique()Z
.end method
