.class public Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;
.super Ljava/lang/Object;
.source "FolmeUtils.java"

# interfaces
.implements Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/animation/FolmeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhyAnimatorListener"
.end annotation


# instance fields
.field private mListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;->mListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;->mListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;->onCancel()V

    :cond_0
    return-void
.end method

.method public onEnd()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;->mListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;->onEnd()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;->mListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;->onStart()V

    :cond_0
    return-void
.end method

.method public onUpdate(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;->mListener:Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/camera/animation/FolmeUtils$IPhyAnimatorListener;->onUpdate(F)V

    :cond_0
    return-void
.end method
