.class Lcom/android/camera/animation/FolmeUtils$5;
.super Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;
.source "FolmeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/animation/FolmeUtils;->popup(Landroid/view/View;FFFLcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;)Lmiuix/animation/IStateStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;


# direct methods
.method constructor <init>(Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;)V
    .locals 0

    iput-object p2, p0, Lcom/android/camera/animation/FolmeUtils$5;->val$listener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    invoke-direct {p0, p1}, Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;-><init>(Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;)V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/animation/FolmeUtils$5;->val$listener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    if-eqz p0, :cond_0

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p3, p1

    invoke-interface {p0, p3}, Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;->onUpdate(F)V

    :cond_0
    return-void
.end method
