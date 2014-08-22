.class public interface abstract Lorg/holoeverywhere/preference/SharedPreferences$Editor;
.super Ljava/lang/Object;
.source "SharedPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/holoeverywhere/preference/SharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Editor"
.end annotation


# virtual methods
.method public abstract apply()V
.end method

.method public abstract clear()Lorg/holoeverywhere/preference/SharedPreferences$Editor;
.end method

.method public abstract commit()Z
.end method

.method public abstract putBoolean(IZ)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
.end method

.method public abstract putBoolean(Ljava/lang/String;Z)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
.end method

.method public abstract putFloat(IF)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
.end method

.method public abstract putFloat(Ljava/lang/String;F)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
.end method

.method public abstract putFloatSet(ILjava/util/Set;)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Lorg/holoeverywhere/preference/SharedPreferences$Editor;"
        }
    .end annotation
.end method

.method public abstract putFloatSet(Ljava/lang/String;Ljava/util/Set;)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Lorg/holoeverywhere/preference/SharedPreferences$Editor;"
        }
    .end annotation
.end method

.method public abstract putInt(II)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
.end method

.method public abstract putInt(Ljava/lang/String;I)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
.end method

.method public abstract putIntSet(ILjava/util/Set;)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/holoeverywhere/preference/SharedPreferences$Editor;"
        }
    .end annotation
.end method

.method public abstract putIntSet(Ljava/lang/String;Ljava/util/Set;)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/holoeverywhere/preference/SharedPreferences$Editor;"
        }
    .end annotation
.end method

.method public abstract putJSONArray(ILorg/json/JSONArray;)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
.end method

.method public abstract putJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
.end method

.method public abstract putJSONObject(ILorg/json/JSONObject;)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
.end method

.method public abstract putJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
.end method

.method public abstract putLong(IJ)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
.end method

.method public abstract putLong(Ljava/lang/String;J)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
.end method

.method public abstract putLongSet(ILjava/util/Set;)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/holoeverywhere/preference/SharedPreferences$Editor;"
        }
    .end annotation
.end method

.method public abstract putLongSet(Ljava/lang/String;Ljava/util/Set;)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/holoeverywhere/preference/SharedPreferences$Editor;"
        }
    .end annotation
.end method

.method public abstract putString(ILjava/lang/String;)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
.end method

.method public abstract putStringSet(ILjava/util/Set;)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/holoeverywhere/preference/SharedPreferences$Editor;"
        }
    .end annotation
.end method

.method public abstract putStringSet(Ljava/lang/String;Ljava/util/Set;)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/holoeverywhere/preference/SharedPreferences$Editor;"
        }
    .end annotation
.end method

.method public abstract remove(I)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
.end method

.method public abstract remove(Ljava/lang/String;)Lorg/holoeverywhere/preference/SharedPreferences$Editor;
.end method
