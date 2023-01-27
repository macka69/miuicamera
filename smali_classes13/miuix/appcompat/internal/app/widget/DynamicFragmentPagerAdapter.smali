.class Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ActionBarViewPagerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

.field private mFragmentInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mInitialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method private removeAllFragmentFromManager()V
    .locals 5

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3, v2}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method private removeFragmentFromManager(Landroidx/fragment/app/Fragment;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method


# virtual methods
.method addFragment(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/ActionBar$Tab;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroidx/appcompat/app/ActionBar$Tab;",
            "Z)I"
        }
    .end annotation

    new-instance v7, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;-><init>(Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/ActionBar$Tab;Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return p2
.end method

.method addFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/ActionBar$Tab;Z)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroidx/appcompat/app/ActionBar$Tab;",
            "Z)I"
        }
    .end annotation

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v9, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;-><init>(Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/ActionBar$Tab;Z)V

    invoke-virtual {v0, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    new-instance v8, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;-><init>(Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/ActionBar$Tab;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    check-cast p3, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p3}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method

.method findPositionByTag(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object v2, v2, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mInitialized:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mInitialized:Z

    instance-of v0, p1, Lmiuix/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    check-cast p1, Lmiuix/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/OriginalViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(I)V

    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method getFragment(IZ)Landroidx/fragment/app/Fragment;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getFragment(IZZ)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method getFragment(IZZ)Landroidx/fragment/app/Fragment;
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result p1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object p3, p1, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-nez p3, :cond_2

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v0, p1, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    iput-object p3, p1, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p1, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p1, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->args:Landroid/os/Bundle;

    invoke-static {p0, p2, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    iput-object p0, p1, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    iput-object v1, p1, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->clazz:Ljava/lang/Class;

    iput-object v1, p1, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->args:Landroid/os/Bundle;

    :cond_2
    iget-object p0, p1, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object v2, v2, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x2

    return p0
.end method

.method getTabAt(I)Landroidx/appcompat/app/ActionBar$Tab;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->tab:Landroidx/appcompat/app/ActionBar$Tab;

    return-object p0
.end method

.method public hasActionMenu(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->hasActionMenu:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getFragment(IZZ)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object p2, p2, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    invoke-virtual {v2, p1, v0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    :goto_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-eq v0, p0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_2
    return-object v0
.end method

.method isRTL()Z
    .locals 1

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method removeAllFragment()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->removeAllFragmentFromManager()V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method removeFragment(Landroidx/appcompat/app/ActionBar$Tab;)I
    .locals 4

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-object v3, v2, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->tab:Landroidx/appcompat/app/ActionBar$Tab;

    if-ne v3, p1, :cond_1

    iget-object p1, v2, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->removeFragmentFromManager(Landroidx/fragment/app/Fragment;)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    iget-object v0, v2, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method removeFragment(Landroidx/fragment/app/Fragment;)I
    .locals 4

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2, v1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-ne v3, p1, :cond_1

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->removeFragmentFromManager(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method removeFragmentAt(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getFragment(IZ)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->removeFragmentFromManager(Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setFragmentActionMenuAt(IZ)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->toIndexForRTL(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;

    iget-boolean v0, p1, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->hasActionMenu:Z

    if-eq v0, p2, :cond_0

    iput-boolean p2, p1, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->hasActionMenu:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p3, Landroidx/fragment/app/Fragment;

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-eq p3, p1, :cond_3

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mInitialized:Z

    if-eqz p1, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_2
    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    :cond_3
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method toIndexForRTL(I)I
    .locals 1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->isRTL()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->mFragmentInfos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-le p0, p1, :cond_1

    sub-int/2addr p0, p1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
