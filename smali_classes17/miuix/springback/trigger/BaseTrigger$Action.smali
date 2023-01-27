.class public abstract Lmiuix/springback/trigger/BaseTrigger$Action;
.super Ljava/lang/Object;
.source "BaseTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/BaseTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Action"
.end annotation


# static fields
.field static final DISTANCE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lmiuix/springback/trigger/BaseTrigger$Action;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mEnterPoint:I

.field public mTriggerPoint:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiuix/springback/trigger/BaseTrigger$Action$1;

    invoke-direct {v0}, Lmiuix/springback/trigger/BaseTrigger$Action$1;-><init>()V

    sput-object v0, Lmiuix/springback/trigger/BaseTrigger$Action;->DISTANCE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-lt p2, p1, :cond_0

    iput p1, p0, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    iput p2, p0, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not allow enterPoint < 0 or triggerPoint < 0 or triggerPoint < enterPoint!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method notifyActivated()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger$Action;->onActivated()V

    return-void
.end method

.method notifyEntered()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger$Action;->onEntered()V

    return-void
.end method

.method notifyExit()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger$Action;->onExit()V

    return-void
.end method

.method notifyFinished()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger$Action;->onFinished()V

    return-void
.end method

.method notifyTriggered()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger$Action;->onTriggered()V

    return-void
.end method

.method protected abstract onActivated()V
.end method

.method protected onCreateIndicator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract onEntered()V
.end method

.method protected abstract onExit()V
.end method

.method protected abstract onFinished()V
.end method

.method protected abstract onTriggered()V
.end method
