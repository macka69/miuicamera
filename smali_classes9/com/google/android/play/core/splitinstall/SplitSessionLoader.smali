.class public interface abstract Lcom/google/android/play/core/splitinstall/SplitSessionLoader;
.super Ljava/lang/Object;
.source "SplitSessionLoader.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract load(Ljava/util/List;Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/google/android/play/core/splitinstall/SplitSessionStatusChanger;",
            ")V"
        }
    .end annotation
.end method
