.class Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$1;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"

# interfaces
.implements Landroidx/appcompat/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V
    .locals 2

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;->getTabAt(I)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;

    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarViewPagerController;)Lmiuix/viewpager/widget/ViewPager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onTabUnselected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method
