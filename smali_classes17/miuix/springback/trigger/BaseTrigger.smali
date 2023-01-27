.class public abstract Lmiuix/springback/trigger/BaseTrigger;
.super Ljava/lang/Object;
.source "BaseTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;,
        Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;,
        Lmiuix/springback/trigger/BaseTrigger$SimpleAction;,
        Lmiuix/springback/trigger/BaseTrigger$Action;
    }
.end annotation


# static fields
.field private static mDefaultIndeterminateDistance:I

.field private static mDefaultSimpleEnter:I

.field private static mDefaultSimpleTrigger:I

.field private static mDefaultUpIndeterminateDistance:I


# instance fields
.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/springback/trigger/BaseTrigger$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mUpAction:Lmiuix/springback/trigger/BaseTrigger$Action;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmiuix/springback/R$dimen;->miuix_sbl_action_indeterminate_distance:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultIndeterminateDistance:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmiuix/springback/R$dimen;->miuix_sbl_action_upindeterminate_distance:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultUpIndeterminateDistance:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lmiuix/springback/R$dimen;->miuix_sbl_action_simple_enter:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultSimpleEnter:I

    sput p0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultSimpleTrigger:I

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultSimpleEnter:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultSimpleTrigger:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultIndeterminateDistance:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultUpIndeterminateDistance:I

    return v0
.end method


# virtual methods
.method public addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V
    .locals 2

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lmiuix/springback/trigger/BaseTrigger;->mUpAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    sget-object v1, Lmiuix/springback/trigger/BaseTrigger$Action;->DISTANCE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object p0, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "action conflict."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public containAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z
    .locals 3

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lmiuix/springback/trigger/BaseTrigger;->mUpAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    iget-object p0, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public getActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiuix/springback/trigger/BaseTrigger$Action;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    return-object p0
.end method

.method public getIndeterminateAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/springback/trigger/BaseTrigger$Action;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v2, :cond_0

    check-cast v1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/BaseTrigger;->mUpAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    check-cast p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    return-object p0
.end method

.method public getSimpleAction()Lmiuix/springback/trigger/BaseTrigger$SimpleAction;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/springback/trigger/BaseTrigger$Action;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz v2, :cond_0

    check-cast v1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract isActionRunning()Z
.end method

.method public abstract isActionRunning(Lmiuix/springback/trigger/BaseTrigger$Action;)Z
.end method

.method public removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z
    .locals 3

    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger;->isActionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    iput-object v2, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mUpDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

    iput-object v2, p0, Lmiuix/springback/trigger/BaseTrigger;->mUpAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    return v1

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    iput-object v2, v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    :cond_2
    iget-object p0, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    return v1
.end method
