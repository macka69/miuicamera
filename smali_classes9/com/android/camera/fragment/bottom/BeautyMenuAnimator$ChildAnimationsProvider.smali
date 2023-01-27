.class interface abstract Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$ChildAnimationsProvider;
.super Ljava/lang/Object;
.source "BeautyMenuAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/bottom/BeautyMenuAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ChildAnimationsProvider"
.end annotation


# virtual methods
.method public abstract expandAnimation(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/core/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract shrinkAnimation(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/core/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end method
