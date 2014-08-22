.class public interface abstract Lorg/holoeverywhere/preference/SharedPreferences;
.super Ljava/lang/Object;
.source "SharedPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/holoeverywhere/preference/SharedPreferences$OnSharedPreferenceChangeListener;,
        Lorg/holoeverywhere/preference/SharedPreferences$Editor;
    }
.end annotation


# virtual methods
.method public abstract contains(I)Z
.end method

.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract edit()Lorg/holoeverywhere/preference/SharedPreferences$Editor;
.end method

.method public abstract getAll()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getBoolean(IZ)Z
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getFloat(IF)F
.end method

.method public abstract getFloat(Ljava/lang/String;F)F
.end method

.method public abstract getFloatSet(ILjava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFloatSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInt(II)I
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getIntSet(ILjava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIntSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getJSONArray(ILorg/json/JSONArray;)Lorg/json/JSONArray;
.end method

.method public abstract getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
.end method

.method public abstract getJSONObject(ILorg/json/JSONObject;)Lorg/json/JSONObject;
.end method

.method public abstract getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
.end method

.method public abstract getLong(IJ)J
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public abstract getLongSet(ILjava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLongSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getString(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStringSet(ILjava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract makeNameById(I)Ljava/lang/String;
.end method

.method public abstract registerOnSharedPreferenceChangeListener(Lorg/holoeverywhere/preference/SharedPreferences$OnSharedPreferenceChangeListener;)V
.end method

.method public abstract setDefaultValues(Landroid/os/Bundle;)V
.end method

.method public abstract unregisterOnSharedPreferenceChangeListener(Lorg/holoeverywhere/preference/SharedPreferences$OnSharedPreferenceChangeListener;)V
.end method
