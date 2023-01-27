.class public Lcom/android/camera/fragment/sticker/FragmentSticker;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentSticker.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/sticker/FragmentSticker$OnRadioButtonChangedListener;,
        Lcom/android/camera/fragment/sticker/FragmentSticker$StickerPagerAdapter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FRAGMENT_INFO:I = 0xff


# instance fields
.field private mBackButton:Landroid/widget/ImageView;

.field private mOnRadioButtonChangedListener:Lcom/android/camera/fragment/sticker/FragmentSticker$OnRadioButtonChangedListener;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mViewPager:Lcom/android/camera/ui/NoScrollViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/sticker/FragmentSticker;)Landroid/widget/RadioGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/sticker/FragmentSticker;->mRadioGroup:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/sticker/FragmentSticker;)Lcom/android/camera/ui/NoScrollViewPager;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/sticker/FragmentSticker;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/sticker/FragmentSticker;)Lcom/android/camera/fragment/sticker/FragmentSticker$OnRadioButtonChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/sticker/FragmentSticker;->mOnRadioButtonChangedListener:Lcom/android/camera/fragment/sticker/FragmentSticker$OnRadioButtonChangedListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/sticker/FragmentSticker;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    return p0
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d009f

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v2, 0x3f400000    # 0.75f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v0, 0x7f0a044d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/NoScrollViewPager;

    iput-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentSticker;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-direct {v1}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-direct {v1}, Lcom/android/camera/fragment/sticker/FragmentStickerPager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/fragment/sticker/FragmentSticker$StickerPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/camera/fragment/sticker/FragmentSticker$StickerPagerAdapter;-><init>(Lcom/android/camera/fragment/sticker/FragmentSticker;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentSticker;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentSticker;->mViewPager:Lcom/android/camera/ui/NoScrollViewPager;

    new-instance v1, Lcom/android/camera/fragment/sticker/FragmentSticker$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/sticker/FragmentSticker$1;-><init>(Lcom/android/camera/fragment/sticker/FragmentSticker;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const v0, 0x7f0a031a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentSticker;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/android/camera/fragment/sticker/FragmentSticker$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/sticker/FragmentSticker$2;-><init>(Lcom/android/camera/fragment/sticker/FragmentSticker;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/sticker/FragmentSticker;->mRadioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f0a0318

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    const v0, 0x7f0a0135

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/sticker/FragmentSticker;->mBackButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/camera/fragment/sticker/FragmentSticker$3;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/sticker/FragmentSticker$3;-><init>(Lcom/android/camera/fragment/sticker/FragmentSticker;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/android/camera/fragment/CtaNoticeFragment;->checkCta(Landroidx/fragment/app/FragmentManager;I)Z

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa0

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const v0, 0x7f0a0088

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result p0

    const/16 v0, 0xff

    if-eq p0, v0, :cond_1

    return p1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0xa7
        0xa1
    .end array-data
.end method

.method protected provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    invoke-static {p0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0xa8
        0xa2
    .end array-data
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public setOnRadioButtonChangedListener(Lcom/android/camera/fragment/sticker/FragmentSticker$OnRadioButtonChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/sticker/FragmentSticker;->mOnRadioButtonChangedListener:Lcom/android/camera/fragment/sticker/FragmentSticker$OnRadioButtonChangedListener;

    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method
