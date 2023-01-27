.class Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;
.super Ljava/lang/Object;
.source "SearchActionModeView.java"

# interfaces
.implements Lmiuix/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContentViewAnimationProcessor"
.end annotation


# instance fields
.field mDimViewVisible:Z

.field mViewPager:Lmiuix/viewpager/widget/ViewPager;

.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-static {v1, v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1002(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-static {v1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1102(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result p1

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object p1

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I

    move-result-object v1

    aget v1, v1, v0

    invoke-static {p1, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1202(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I

    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-static {p1, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1402(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v1

    neg-int v1, v1

    invoke-static {p1, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1502(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I

    move-result-object v1

    aget v0, v1, v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1702(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v0

    invoke-static {p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1802(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mDimViewVisible:Z

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isBlurEnable()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mDimViewVisible:Z

    if-eqz v0, :cond_4

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v0

    neg-int v0, v0

    :goto_1
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(I)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(I)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {p1, v1, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    :goto_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewPager()Lmiuix/viewpager/widget/ViewPager;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    return-void
.end method

.method public onStop(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(I)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    if-eqz p1, :cond_2

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isBlurEnable()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(I)V

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mViewPager:Lmiuix/viewpager/widget/ViewPager;

    return-void
.end method

.method public onUpdate(ZF)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    sub-float p2, v0, p2

    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mDimViewVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v1

    neg-int v1, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v2

    sub-int/2addr v1, v2

    :goto_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v1

    :cond_2
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_3

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(I)V

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mDimViewVisible:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v2

    sub-int v4, v1, v2

    :goto_2
    if-eqz p1, :cond_5

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result p1

    neg-int v4, p1

    :cond_5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v1

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(I)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    :goto_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p2, p0

    add-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method
