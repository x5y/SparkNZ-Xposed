.class final Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$TableInfo;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TableInfo"
.end annotation


# instance fields
.field public final collCount:I

.field public final collEnd:I

.field public final collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

.field public final count:I

.field public final longestCollisionList:I

.field public final mainHash:[I

.field public final mainHashMask:I

.field public final mainNames:[Lorg/codehaus/jackson/sym/Name;


# direct methods
.method public constructor <init>(II[I[Lorg/codehaus/jackson/sym/Name;[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;III)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "mainHashMask"    # I
    .param p3, "mainHash"    # [I
    .param p4, "mainNames"    # [Lorg/codehaus/jackson/sym/Name;
    .param p5, "collList"    # [Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    .param p6, "collCount"    # I
    .param p7, "collEnd"    # I
    .param p8, "longestCollisionList"    # I

    .prologue
    .line 1129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1130
    iput p1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    .line 1131
    iput p2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$TableInfo;->mainHashMask:I

    .line 1132
    iput-object p3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$TableInfo;->mainHash:[I

    .line 1133
    iput-object p4, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$TableInfo;->mainNames:[Lorg/codehaus/jackson/sym/Name;

    .line 1134
    iput-object p5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$TableInfo;->collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 1135
    iput p6, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$TableInfo;->collCount:I

    .line 1136
    iput p7, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$TableInfo;->collEnd:I

    .line 1137
    iput p8, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$TableInfo;->longestCollisionList:I

    .line 1138
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;)V
    .locals 1
    .param p1, "src"    # Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .prologue
    .line 1141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    .line 1143
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$TableInfo;->mainHashMask:I

    .line 1144
    iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$TableInfo;->mainHash:[I

    .line 1145
    iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$TableInfo;->mainNames:[Lorg/codehaus/jackson/sym/Name;

    .line 1146
    iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$TableInfo;->collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 1147
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$TableInfo;->collCount:I

    .line 1148
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$TableInfo;->collEnd:I

    .line 1149
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$TableInfo;->longestCollisionList:I

    .line 1150
    return-void
.end method
