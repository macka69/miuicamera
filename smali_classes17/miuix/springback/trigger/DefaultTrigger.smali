.class public Lmiuix/springback/trigger/DefaultTrigger;
.super Lmiuix/springback/trigger/CustomTrigger;
.source "DefaultTrigger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultCustomTrigger"

.field private static mIndeterminateTop:I


# instance fields
.field private mContext:Landroid/content/Context;

.field public mIndeterminateActionPoint:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mIndeterminateSimpleActionPoint:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mIndeterminateUpActionPoint:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mOnActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

.field private mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

.field private mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

.field private mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

.field private mOnUpActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

.field private mTrackingIndicator:Landroid/view/View;

.field private mTrackingIndicatorBottom:I

.field private mTrackingIndicatorLabel:Landroid/widget/TextView;

.field private mTrackingIndicatorLabelBottom:I

.field private mTrackingIndicatorLabelTop:I

.field private mUpLoadingIndicator:Landroid/widget/ProgressBar;

.field private mUpTrackingContainer:Landroid/view/ViewGroup;

.field private mUpTrackingIndicator:Landroid/view/View;

.field private mUpTrackingIndicatorLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorBottom:I

    iput v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelTop:I

    iput v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelBottom:I

    new-instance v2, Lmiuix/springback/trigger/DefaultTrigger$1;

    invoke-direct {v2, p0}, Lmiuix/springback/trigger/DefaultTrigger$1;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    iput-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    new-instance v2, Lmiuix/springback/trigger/DefaultTrigger$2;

    invoke-direct {v2, p0}, Lmiuix/springback/trigger/DefaultTrigger$2;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    iput-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnUpActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    new-instance v2, Lmiuix/springback/trigger/DefaultTrigger$3;

    invoke-direct {v2, p0}, Lmiuix/springback/trigger/DefaultTrigger$3;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    iput-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    new-instance v2, Lmiuix/springback/trigger/DefaultTrigger$4;

    invoke-direct {v2, p0}, Lmiuix/springback/trigger/DefaultTrigger$4;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    iput-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    new-instance v2, Lmiuix/springback/trigger/DefaultTrigger$5;

    invoke-direct {v2, p0}, Lmiuix/springback/trigger/DefaultTrigger$5;-><init>(Lmiuix/springback/trigger/DefaultTrigger;)V

    iput-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    invoke-virtual {p0, v2}, Lmiuix/springback/trigger/CustomTrigger;->setOnActionDataListener(Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;)V

    iget-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnUpActionDataListener:Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    invoke-virtual {p0, v2}, Lmiuix/springback/trigger/CustomTrigger;->setOnUpActionDataListener(Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lmiuix/springback/R$dimen;->miuix_sbl_tracking_progress_bg_margintop:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lmiuix/springback/trigger/DefaultTrigger;->mIndeterminateTop:I

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lmiuix/springback/R$dimen;->miuix_sbl_action_indeterminate_distance:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance v2, Landroid/util/Pair;

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mIndeterminateActionPoint:Landroid/util/Pair;

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lmiuix/springback/R$dimen;->miuix_sbl_action_upindeterminate_distance:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance v2, Landroid/util/Pair;

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mIndeterminateUpActionPoint:Landroid/util/Pair;

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/springback/R$dimen;->miuix_sbl_action_simple_enter:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mIndeterminateSimpleActionPoint:Landroid/util/Pair;

    return-void
.end method

.method static synthetic access$000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingIndicatorLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpLoadingIndicator:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingIndicator:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/springback/trigger/DefaultTrigger;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->viewShow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private initIndeterminateActionView()V
    .locals 2

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lmiuix/springback/R$id;->tracking_progress:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lmiuix/springback/R$id;->tracking_progress_label:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lmiuix/springback/R$id;->loading_progress:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    return-void
.end method

.method private initIndeterminateUpActionView()V
    .locals 2

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    move-result-object v0

    sget v1, Lmiuix/springback/R$id;->tracking_progress_up_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    move-result-object v0

    sget v1, Lmiuix/springback/R$id;->tracking_progress_up:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingIndicator:Landroid/view/View;

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    move-result-object v0

    sget v1, Lmiuix/springback/R$id;->tracking_progress_up_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingIndicatorLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    move-result-object v0

    sget v1, Lmiuix/springback/R$id;->loading_progress_up:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpLoadingIndicator:Landroid/widget/ProgressBar;

    return-void
.end method

.method private initSimpleActionView()V
    .locals 0

    return-void
.end method

.method private updateTextIdToString(Landroid/content/Context;[I[Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    :goto_0
    array-length v0, p2

    if-ge p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    aget v1, p2, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private viewShow(Landroid/view/View;)V
    .locals 9

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "start"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-array v2, p0, [J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const/16 v2, -0xb4

    new-array v4, p0, [J

    invoke-virtual {v0, v1, v2, v4}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string v2, "show"

    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-array v4, p0, [J

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v5, v4}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const/high16 v4, 0x41c80000    # 25.0f

    new-array v6, p0, [J

    invoke-virtual {v1, v2, v4, v6}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    new-instance v2, Lmiuix/animation/controller/AnimState;

    const-string v4, "hide"

    invoke-direct {v2, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-array v6, p0, [J

    invoke-virtual {v2, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v5, p0, [J

    invoke-virtual {v2, v4, v3, v5}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/view/View;

    aput-object p1, v4, p0

    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    new-instance v5, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v6, 0x3

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    const/4 v8, 0x4

    invoke-static {v8, v7}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v7

    invoke-virtual {v5, v7}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    aput-object v5, v4, p0

    invoke-interface {p1, v0, v1, v4}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v0, v3, [Lmiuix/animation/base/AnimConfig;

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {v8, v3}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, v0, p0

    invoke-interface {p1, v2, v0}, Lmiuix/animation/IStateStyle;->then(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x42f00000    # 120.0f
        0x3f7d70a4
        0x3dcccccd
    .end array-data

    :array_1
    .array-data 4
        0x42200000    # 40.0f
        0x3f7d70a4
        0x3dcccccd
    .end array-data
.end method


# virtual methods
.method public addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiuix/springback/trigger/DefaultTrigger;->initIndeterminateUpActionView()V

    check-cast p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnIndeterminateUpActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;

    invoke-virtual {p0, v0}, Lmiuix/springback/trigger/CustomTrigger;->setOnIndeterminateUpActionViewListener(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTextIDs:[I

    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTexts:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lmiuix/springback/trigger/DefaultTrigger;->updateTextIdToString(Landroid/content/Context;[I[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmiuix/springback/trigger/DefaultTrigger;->initIndeterminateActionView()V

    check-cast p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnIndeterminateActionViewListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;

    invoke-virtual {p0, v0}, Lmiuix/springback/trigger/CustomTrigger;->setOnIndeterminateActionViewListener(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTextIDs:[I

    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lmiuix/springback/trigger/DefaultTrigger;->updateTextIdToString(Landroid/content/Context;[I[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lmiuix/springback/trigger/DefaultTrigger;->initSimpleActionView()V

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mOnSimpleActionViewListener:Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;

    invoke-virtual {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->setOnSimpleActionViewListener(Lmiuix/springback/trigger/BaseTrigger$SimpleAction$OnSimpleActionViewListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public containAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z
    .locals 0

    invoke-super {p0, p1}, Lmiuix/springback/trigger/BaseTrigger;->containAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    move-result p0

    return p0
.end method

.method public isActionRunning()Z
    .locals 0

    invoke-super {p0}, Lmiuix/springback/trigger/CustomTrigger;->isActionRunning()Z

    move-result p0

    return p0
.end method

.method public isActionRunning(Lmiuix/springback/trigger/BaseTrigger$Action;)Z
    .locals 0

    invoke-super {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->isActionRunning(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    move-result p0

    return p0
.end method

.method public onSpringBackLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->isExitIndeterminateAction()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger;->getActions()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger;->getActions()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmiuix/springback/trigger/BaseTrigger$Action;

    instance-of p4, p3, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz p4, :cond_0

    check-cast p3, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    sget p4, Lmiuix/springback/trigger/DefaultTrigger;->mIndeterminateTop:I

    iget-object p5, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p5

    if-lt p4, p5, :cond_0

    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    iget p5, p3, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    sub-int/2addr p5, p1

    invoke-virtual {p4, p5}, Landroid/widget/ProgressBar;->offsetTopAndBottom(I)V

    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    iget p5, p3, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    sub-int/2addr p5, p1

    invoke-virtual {p4, p5}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    iget p3, p3, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    sub-int/2addr p3, p1

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->offsetTopAndBottom(I)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz p1, :cond_6

    iget p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorBottom:I

    if-gtz p1, :cond_2

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorBottom:I

    :cond_2
    iget p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelTop:I

    if-lez p1, :cond_3

    iget p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelBottom:I

    if-gtz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTop()I

    move-result p1

    iput p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelTop:I

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getBottom()I

    move-result p1

    iput p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelBottom:I

    :cond_4
    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_5

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    :cond_5
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentState()Lmiuix/springback/trigger/TriggerState;

    move-result-object p1

    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    if-eq p1, p2, :cond_6

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p2

    iget p2, p2, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    if-le p1, p2, :cond_6

    iget-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    iget p2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorBottom:I

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p4

    iget p4, p4, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    sub-int/2addr p3, p4

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setBottom(I)V

    :cond_6
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->isExitSimpleAction()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    move-result-object p1

    iget p2, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->offsetTopAndBottom(I)V

    :cond_7
    return-void
.end method

.method public onSpringBackScrolled(Lmiuix/springback/view/SpringBackLayout;III)V
    .locals 6

    const/4 p1, 0x0

    if-gez p4, :cond_0

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->isExitIndeterminateUpAction()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p2

    instance-of p2, p2, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    move-result-object p4

    iget p4, p4, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    sub-int/2addr p2, p4

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mUpTrackingContainer:Landroid/view/ViewGroup;

    int-to-float p2, p2

    invoke-virtual {p4, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_0
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->isExitIndeterminateAction()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p2

    instance-of p2, p2, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p2

    check-cast p2, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-nez p4, :cond_8

    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr p4, v0

    iput p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorBottom:I

    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getTop()I

    move-result p4

    iput p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelTop:I

    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getBottom()I

    move-result p4

    iput p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelBottom:I

    iget p4, p2, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float p4, p4

    div-float/2addr v0, p4

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, p4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    div-float/2addr v3, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v5, v4

    if-gez v4, :cond_2

    move p4, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f333333

    mul-float/2addr v5, p4

    sub-float/2addr v4, v5

    const v5, 0x3e99999a

    mul-float/2addr p4, v5

    div-float/2addr v4, p4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result p4

    :goto_1
    invoke-static {v2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    iget-object v4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v1, v0

    mul-float/2addr v4, v1

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    iget v5, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelTop:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTop(I)V

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    iget v5, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabelBottom:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBottom(I)V

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setAlpha(F)V

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setScaleX(F)V

    iget-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setScaleY(F)V

    :cond_3
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget v1, p2, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    if-ge v0, v1, :cond_6

    cmpl-float p4, p4, v2

    if-lez p4, :cond_4

    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    :cond_4
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentState()Lmiuix/springback/trigger/TriggerState;

    move-result-object p4

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    if-ne p4, v0, :cond_5

    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    iget-object p2, p2, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    aget-object p2, p2, p1

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    iget p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorBottom:I

    invoke-virtual {p2, p4}, Landroid/view/View;->setBottom(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getHeight()I

    move-result p4

    iget v0, p2, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    if-lt p4, v0, :cond_8

    iget p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorBottom:I

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget v1, p2, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    sub-int/2addr v0, v1

    add-int/2addr p4, v0

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentState()Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicator:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setBottom(I)V

    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget v1, p2, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_2

    :cond_7
    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    :goto_2
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentState()Lmiuix/springback/trigger/TriggerState;

    move-result-object p4

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    if-ne p4, v0, :cond_8

    iget-object p4, p0, Lmiuix/springback/trigger/DefaultTrigger;->mTrackingIndicatorLabel:Landroid/widget/TextView;

    iget-object p2, p2, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->isExitSimpleAction()Z

    move-result p2

    const/16 p4, 0x8

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p2

    instance-of p2, p2, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    if-ge p2, v0, :cond_9

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->isExitSimpleAction()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p2

    instance-of p2, p2, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getRootContainer()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    if-lt p2, v0, :cond_a

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    if-ne p2, p4, :cond_a

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->viewShow(Landroid/view/View;)V

    :cond_a
    :goto_4
    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->isExitSimpleAction()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getCurrentAction()Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndicatorContainer()Landroid/view/ViewGroup;

    move-result-object p0

    neg-int p1, p3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetTopAndBottom(I)V

    :cond_b
    return-void
.end method
