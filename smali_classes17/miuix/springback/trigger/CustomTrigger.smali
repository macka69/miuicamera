.class public abstract Lmiuix/springback/trigger/CustomTrigger;
.super Lmiuix/springback/trigger/BaseTrigger;
.source "CustomTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;,
        Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;,
        Lmiuix/springback/trigger/CustomTrigger$ActionComplete;,
        Lmiuix/springback/trigger/CustomTrigger$ActionStart;,
        Lmiuix/springback/trigger/CustomTrigger$ActionTriggered;,
        Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;,
        Lmiuix/springback/trigger/CustomTrigger$Tracking;,
        Lmiuix/springback/trigger/CustomTrigger$Idle;
    }
.end annotation


# static fields
.field private static final ACTION_COMPLETE_HAPTIC_THRESHOLD:I = 0x1f4

.field private static final OFFSET_RESET_STATE:F = 0.25f

.field private static final OFFSET_SIMPLE_VELOCITY_Y:F = 1000.0f

.field private static final TAG:Ljava/lang/String; = "CustomTrigger"


# instance fields
.field private isExitISimpleAction:Z

.field private isExitIndeterminateAction:Z

.field private isExitIndeterminateUpAction:Z

.field protected final mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

.field private mActionIndex:I

.field protected final mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

.field protected final mActionTriggered:Lmiuix/springback/trigger/CustomTrigger$ActionTriggered;

.field private mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

.field private mContainer:Landroid/widget/RelativeLayout;

.field protected mContext:Landroid/content/Context;

.field private mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

.field private mCurrentState:Lmiuix/springback/trigger/TriggerState;

.field private mEnterTime:J

.field protected final mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

.field private mIndicatorContainer:Landroid/widget/FrameLayout;

.field protected mLastScrollDistance:I

.field public mLayout:Lmiuix/springback/view/SpringBackLayout;

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLoadingContainer:Landroid/view/View;

.field private mOnActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

.field private mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

.field private mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

.field private mOnScrollListener:Lmiuix/springback/view/SpringBackLayout$OnScrollListener;

.field private mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

.field private mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

.field private mOnUpActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

.field protected mScrollDistance:I

.field private mScrollState:I

.field private mScrollerFinished:Z

.field private mSimpleActionView:Landroid/view/View;

.field protected final mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

.field private mUpActionBegin:Z

.field private mUpActionDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

.field private mUpContainer:Landroid/view/View;

.field private mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

.field private mVelocityY:F

.field protected final mWaitForIndeterminate:Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/BaseTrigger;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mVelocityY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollerFinished:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpActionBegin:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mEnterTime:J

    const/4 v1, -0x1

    iput v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionIndex:I

    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->isExitIndeterminateAction:Z

    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->isExitIndeterminateUpAction:Z

    iput-boolean v0, p0, Lmiuix/springback/trigger/CustomTrigger;->isExitISimpleAction:Z

    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$1;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/CustomTrigger$1;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$2;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/CustomTrigger$2;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$3;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/CustomTrigger$3;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnScrollListener:Lmiuix/springback/view/SpringBackLayout$OnScrollListener;

    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$4;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/CustomTrigger$4;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpActionDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$5;

    invoke-direct {v0, p0}, Lmiuix/springback/trigger/CustomTrigger$5;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$Idle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/springback/trigger/CustomTrigger$Idle;-><init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V

    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$Tracking;

    invoke-direct {v0, p0, v1}, Lmiuix/springback/trigger/CustomTrigger$Tracking;-><init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V

    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    invoke-direct {v0, p0, v1}, Lmiuix/springback/trigger/CustomTrigger$ActionStart;-><init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V

    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    invoke-direct {v0, p0, v1}, Lmiuix/springback/trigger/CustomTrigger$ActionComplete;-><init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V

    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;

    invoke-direct {v0, p0, v1}, Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;-><init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V

    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mWaitForIndeterminate:Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;

    new-instance v0, Lmiuix/springback/trigger/CustomTrigger$ActionTriggered;

    invoke-direct {v0, p0, v1}, Lmiuix/springback/trigger/CustomTrigger$ActionTriggered;-><init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V

    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionTriggered:Lmiuix/springback/trigger/CustomTrigger$ActionTriggered;

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    iput-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentState:Lmiuix/springback/trigger/TriggerState;

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/springback/trigger/CustomTrigger;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentState:Lmiuix/springback/trigger/TriggerState;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/springback/trigger/CustomTrigger;)J
    .locals 2

    invoke-direct {p0}, Lmiuix/springback/trigger/CustomTrigger;->getActionIntervalTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1100(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyViewsStart(Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    return-void
.end method

.method static synthetic access$1200(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyViewsExit(Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    return-void
.end method

.method static synthetic access$1300(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyViewsTriggered(Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    return-void
.end method

.method static synthetic access$1400(Lmiuix/springback/trigger/CustomTrigger;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpActionBegin:Z

    return p0
.end method

.method static synthetic access$1402(Lmiuix/springback/trigger/CustomTrigger;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpActionBegin:Z

    return p1
.end method

.method static synthetic access$1502(Lmiuix/springback/trigger/CustomTrigger;J)J
    .locals 0

    iput-wide p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mEnterTime:J

    return-wide p1
.end method

.method static synthetic access$1600(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyViewsEntered(Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    return-void
.end method

.method static synthetic access$1700(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyViewsActivated(Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    return-void
.end method

.method static synthetic access$1800(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyViewsAnimator(Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    return-void
.end method

.method static synthetic access$1900(Lmiuix/springback/trigger/CustomTrigger;)I
    .locals 0

    iget p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionIndex:I

    return p0
.end method

.method static synthetic access$1902(Lmiuix/springback/trigger/CustomTrigger;I)I
    .locals 0

    iput p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionIndex:I

    return p1
.end method

.method static synthetic access$200(Lmiuix/springback/trigger/CustomTrigger;)I
    .locals 0

    iget p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollState:I

    return p0
.end method

.method static synthetic access$202(Lmiuix/springback/trigger/CustomTrigger;I)I
    .locals 0

    iput p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollState:I

    return p1
.end method

.method static synthetic access$302(Lmiuix/springback/trigger/CustomTrigger;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollerFinished:Z

    return p1
.end method

.method static synthetic access$400(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/animation/utils/VelocityMonitor;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/springback/trigger/CustomTrigger;)F
    .locals 0

    iget p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mVelocityY:F

    return p0
.end method

.method static synthetic access$502(Lmiuix/springback/trigger/CustomTrigger;F)F
    .locals 0

    iput p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mVelocityY:F

    return p1
.end method

.method static synthetic access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    return-object p0
.end method

.method static synthetic access$602(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;)Lmiuix/springback/trigger/BaseTrigger$Action;
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    return-object p1
.end method

.method static synthetic access$700(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;)F
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->actionRestartOffsetPoint(Lmiuix/springback/trigger/BaseTrigger$Action;)F

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnUpActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    return-object p0
.end method

.method private actionRestartOffsetPoint(Lmiuix/springback/trigger/BaseTrigger$Action;)F
    .locals 3

    if-eqz p1, :cond_0

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateViewRestartOffsetPoint()F

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpViewRestartOffsetPoint()F

    move-result v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lmiuix/springback/trigger/CustomTrigger;->getSimpleViewRestartOffsetPoint()F

    move-result v0

    goto :goto_0

    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    const/high16 v2, 0x3e800000    # 0.25f

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    move-result-object v0

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    move-result-object p1

    iget p1, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    move-result-object v0

    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr p1, v2

    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    move-result-object p0

    iget p0, p0, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    :goto_1
    int-to-float p0, p0

    add-float/2addr p1, p0

    return p1

    :cond_3
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    if-eqz p0, :cond_4

    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz p1, :cond_4

    iget p1, p0, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    iget p0, p0, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    sub-int/2addr p1, p0

    int-to-float p1, p1

    mul-float/2addr p1, v2

    goto :goto_1

    :cond_4
    return v1
.end method

.method private getActionIntervalTime()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mEnterTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getIndeterminateUpViewRestartOffsetPoint()F
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->getViewRestartOffsetPoint()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getIndeterminateViewRestartOffsetPoint()F
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->getViewRestartOffsetPoint()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getSimpleViewRestartOffsetPoint()F
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->getViewRestartOffsetPoint()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance p1, Lmiuix/animation/utils/VelocityMonitor;

    invoke-direct {p1}, Lmiuix/animation/utils/VelocityMonitor;-><init>()V

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lmiuix/springback/R$layout;->miuix_sbl_trigger_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    sget v0, Lmiuix/springback/R$id;->indicator_container:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method private notifyIndeterminateUpViewActivated(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewActivated(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateUpViewActivating(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewActivating(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateUpViewEntered(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewEntered(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateUpViewEntering(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewEntering(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateUpViewExit(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewExit(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateUpViewFinished(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewFinished(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateUpViewStart(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewStart(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateUpViewStarting(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewStarting(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateUpViewTriggered(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;->onViewTriggered(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateViewActivated(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewActivated(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateViewActivating(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewActivating(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateViewEntered(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewEntered(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateViewEntering(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewEntering(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateViewExit(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewExit(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateViewFinished(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewFinished(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateViewStart(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewStart(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateViewStarting(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewStarting(I)V

    :cond_0
    return-void
.end method

.method private notifyIndeterminateViewTriggered(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;->onViewTriggered(I)V

    :cond_0
    return-void
.end method

.method private notifySimpleViewActivated(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewActivated(I)V

    :cond_0
    return-void
.end method

.method private notifySimpleViewActivating(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewActivating(I)V

    :cond_0
    return-void
.end method

.method private notifySimpleViewEntered(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewEntered(I)V

    :cond_0
    return-void
.end method

.method private notifySimpleViewEntering(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewEntering(I)V

    :cond_0
    return-void
.end method

.method private notifySimpleViewExit(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewExit(I)V

    :cond_0
    return-void
.end method

.method private notifySimpleViewFinished(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewFinished(I)V

    :cond_0
    return-void
.end method

.method private notifySimpleViewStart(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewStart(I)V

    :cond_0
    return-void
.end method

.method private notifySimpleViewStarting(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewStarting(I)V

    :cond_0
    return-void
.end method

.method private notifySimpleViewTriggered(I)V
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;->onViewTriggered(I)V

    :cond_0
    return-void
.end method

.method private notifyViewsActivated(Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewActivated(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewActivated(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewActivated(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private notifyViewsAnimator(Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 1

    if-eqz p1, :cond_2

    instance-of p2, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz p2, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    if-ge p2, v0, :cond_0

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewStarting(I)V

    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    if-lt p2, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    if-ge p2, v0, :cond_1

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewEntering(I)V

    :cond_1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget p1, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    if-lt p2, p1, :cond_8

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewActivating(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_5

    instance-of p2, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz p2, :cond_5

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    if-ge p2, v0, :cond_3

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewStarting(I)V

    :cond_3
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    if-lt p2, v0, :cond_4

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    if-ge p2, v0, :cond_4

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewEntering(I)V

    :cond_4
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget p1, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    if-lt p2, p1, :cond_8

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewActivating(I)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_8

    instance-of p2, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz p2, :cond_8

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    if-ge p2, v0, :cond_6

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewStarting(I)V

    :cond_6
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    if-lt p2, v0, :cond_7

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    if-ge p2, v0, :cond_7

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewEntering(I)V

    :cond_7
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget p1, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    if-lt p2, p1, :cond_8

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewActivating(I)V

    :cond_8
    :goto_0
    return-void
.end method

.method private notifyViewsEntered(Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewEntered(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewEntered(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewEntered(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private notifyViewsExit(Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewExit(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewExit(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewExit(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private notifyViewsStart(Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_0

    if-eq p2, p1, :cond_0

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewStart(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz v0, :cond_1

    if-eq p2, p1, :cond_1

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewStart(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz v0, :cond_2

    if-eq p2, p1, :cond_2

    invoke-direct {p0, p3}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewStart(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private notifyViewsTriggered(Lmiuix/springback/trigger/BaseTrigger$Action;I)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewTriggered(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewTriggered(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewTriggered(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V
    .locals 4

    invoke-super {p0, p1}, Lmiuix/springback/trigger/BaseTrigger;->addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lmiuix/springback/trigger/CustomTrigger;->isExitIndeterminateUpAction:Z

    check-cast p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpActionDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

    iput-object v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mUpDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v0, v1}, Lmiuix/springback/trigger/BaseTrigger$Action;->onCreateIndicator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lmiuix/springback/R$layout;->miuix_sbl_trigger_up_layout:I

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    if-eqz p0, :cond_5

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lmiuix/springback/trigger/CustomTrigger;->isExitIndeterminateAction:Z

    check-cast p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    iput-object v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLoadingContainer:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0, v1}, Lmiuix/springback/trigger/BaseTrigger$Action;->onCreateIndicator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLoadingContainer:Landroid/view/View;

    if-nez p1, :cond_2

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lmiuix/springback/R$layout;->miuix_sbl_trigger_loading_progress:I

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lmiuix/springback/R$layout;->miuix_sbl_trigger_tracking_progress:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lmiuix/springback/R$layout;->miuix_sbl_trigger_tracking_progress_label:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLoadingContainer:Landroid/view/View;

    if-eqz p0, :cond_5

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lmiuix/springback/trigger/CustomTrigger;->isExitISimpleAction:Z

    check-cast p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0, v1}, Lmiuix/springback/trigger/BaseTrigger$Action;->onCreateIndicator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    if-nez p1, :cond_4

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lmiuix/springback/R$layout;->miuix_sbl_simple_indicator:I

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    :cond_4
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    if-eqz p0, :cond_5

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public attach(Lmiuix/springback/view/SpringBackLayout;)V
    .locals 6

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->springBackEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lmiuix/springback/view/SpringBackLayout;->setSpringBackEnable(Z)V

    :cond_0
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v0, v2

    move v3, v0

    :goto_0
    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    if-ne v4, v5, :cond_1

    move v3, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v3, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    if-eqz v0, :cond_6

    move v0, v2

    :goto_1
    iget-object v3, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    if-ne v3, v4, :cond_4

    move v0, v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSpringListener:Lmiuix/springback/view/SpringBackLayout$OnSpringListener;

    invoke-virtual {p1, v0}, Lmiuix/springback/view/SpringBackLayout;->setOnSpringListener(Lmiuix/springback/view/SpringBackLayout$OnSpringListener;)V

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnScrollListener:Lmiuix/springback/view/SpringBackLayout$OnScrollListener;

    invoke-virtual {p1, p0}, Lmiuix/springback/view/SpringBackLayout;->addOnScrollListener(Lmiuix/springback/view/SpringBackLayout$OnScrollListener;)V

    return-void
.end method

.method public getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    return-object p0
.end method

.method public getCurrentState()Lmiuix/springback/trigger/TriggerState;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentState:Lmiuix/springback/trigger/TriggerState;

    return-object p0
.end method

.method public getIndeterminateUpView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    return-object p0
.end method

.method public getIndeterminateView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLoadingContainer:Landroid/view/View;

    return-object p0
.end method

.method public getIndicatorContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getRootContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public getSimpleActionView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    return-object p0
.end method

.method public isActionRunning()Z
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentState:Lmiuix/springback/trigger/TriggerState;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isActionRunning(Lmiuix/springback/trigger/BaseTrigger$Action;)Z
    .locals 2

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentState:Lmiuix/springback/trigger/TriggerState;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isExitIndeterminateAction()Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/springback/trigger/CustomTrigger;->isExitIndeterminateAction:Z

    return p0
.end method

.method public isExitIndeterminateUpAction()Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/springback/trigger/CustomTrigger;->isExitIndeterminateUpAction:Z

    return p0
.end method

.method public isExitSimpleAction()Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/springback/trigger/CustomTrigger;->isExitISimpleAction:Z

    return p0
.end method

.method public abstract onSpringBackLayoutChange(Landroid/view/View;IIIIIIII)V
.end method

.method public abstract onSpringBackScrolled(Lmiuix/springback/view/SpringBackLayout;III)V
.end method

.method public removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z
    .locals 4

    invoke-super {p0, p1}, Lmiuix/springback/trigger/BaseTrigger;->removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    instance-of v3, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lmiuix/springback/trigger/CustomTrigger;->isExitIndeterminateUpAction:Z

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mUpContainer:Landroid/view/View;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    instance-of v3, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v3, :cond_1

    iput-boolean v2, p0, Lmiuix/springback/trigger/CustomTrigger;->isExitIndeterminateAction:Z

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLoadingContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mLoadingContainer:Landroid/view/View;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lmiuix/springback/trigger/CustomTrigger;->isExitISimpleAction:Z

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger;->mIndicatorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mSimpleActionView:Landroid/view/View;

    :cond_2
    :goto_0
    return v0
.end method

.method public setOnActionDataListener(Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    return-void
.end method

.method public setOnIndeterminateActionViewListener(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    return-void
.end method

.method public setOnIndeterminateUpActionViewListener(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    return-void
.end method

.method public setOnSimpleActionViewListener(Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    return-void
.end method

.method public setOnUpActionDataListener(Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mOnUpActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    return-void
.end method

.method protected transition(Lmiuix/springback/trigger/TriggerState;)V
    .locals 1

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentState:Lmiuix/springback/trigger/TriggerState;

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollerFinished:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmiuix/springback/trigger/BaseTrigger$Action;->notifyFinished()V

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_0

    iget p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateViewFinished(I)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz v0, :cond_1

    iget p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->notifyIndeterminateUpViewFinished(I)V

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz p1, :cond_2

    iget p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->notifySimpleViewFinished(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mCurrentAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    const/4 p1, -0x1

    iput p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionIndex:I

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    invoke-virtual {p0}, Lmiuix/animation/utils/VelocityMonitor;->clear()V

    :cond_3
    return-void
.end method
