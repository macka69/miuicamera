.class public Lcom/android/camera/animation/folme/FolmeRotateOnSubscribe;
.super Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;
.source "FolmeRotateOnSubscribe.java"


# instance fields
.field private mOriginDegree:I

.field private mTargetDegree:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected clean(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    iget-object p0, p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->mAniView:Landroid/view/View;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IStateContainer;->clean()V

    return-void
.end method

.method public setRotateDegree(II)Lcom/android/camera/animation/folme/FolmeRotateOnSubscribe;
    .locals 0

    iput p1, p0, Lcom/android/camera/animation/folme/FolmeRotateOnSubscribe;->mOriginDegree:I

    iput p2, p0, Lcom/android/camera/animation/folme/FolmeRotateOnSubscribe;->mTargetDegree:I

    return-object p0
.end method

.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->subscribe(Lio/reactivex/CompletableEmitter;)V

    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string v0, "rotate from"

    invoke-direct {p1, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    iget v1, p0, Lcom/android/camera/animation/folme/FolmeRotateOnSubscribe;->mOriginDegree:I

    const/4 v2, 0x0

    new-array v3, v2, [J

    invoke-virtual {p1, v0, v1, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "rotate to"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    iget v3, p0, Lcom/android/camera/animation/folme/FolmeRotateOnSubscribe;->mTargetDegree:I

    new-array v4, v2, [J

    invoke-virtual {v0, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    const/4 v1, 0x1

    new-array v3, v1, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->mAniView:Landroid/view/View;

    aput-object v4, v3, v2

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v3

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->getAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-interface {v3, p1, v0, v1}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method
