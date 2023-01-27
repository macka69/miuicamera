.class public interface abstract Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$Callback;
.super Ljava/lang/Object;
.source "SingleListViewItemActiveCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/camera/visibilityutils/items/ListItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract activateNewCurrentItem(Lcom/android/camera/visibilityutils/items/ListItem;Landroid/view/View;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract deactivateCurrentItem(Lcom/android/camera/visibilityutils/items/ListItem;Landroid/view/View;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation
.end method
