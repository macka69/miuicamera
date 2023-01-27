.class public Lcom/android/camera/fragment/FragmentMasterFilterDescription;
.super Lcom/android/camera/fragment/FragmentDescription;
.source "FragmentMasterFilterDescription.java"


# instance fields
.field private mFilter:Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentDescription;-><init>()V

    return-void
.end method

.method private getParameterData()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/data/data/AmbilightDescriptionItem;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/camera/data/data/AmbilightDescriptionItem;

    new-instance v1, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110925

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f110924

    const v4, 0x7f080572

    invoke-direct {v1, v3, v4, v2}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1102a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f11029f

    const v5, 0x7f08056f

    invoke-direct {v1, v4, v5, v3}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110296

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110295

    const v5, 0x7f08057b

    invoke-direct {v1, v4, v5, v3}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1102a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1102a1

    const v5, 0x7f080578

    invoke-direct {v1, v4, v5, v3}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110298

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110297

    const v5, 0x7f080573

    invoke-direct {v1, v4, v5, v3}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11029a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110299

    const v5, 0x7f080574

    invoke-direct {v1, v4, v5, v3}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11029c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f11029b

    const v5, 0x7f080576

    invoke-direct {v1, v4, v5, v3}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11029e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f11029d

    const v5, 0x7f080571

    invoke-direct {v1, v4, v5, v3}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110933

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110932

    const v5, 0x7f08057a

    invoke-direct {v1, v4, v5, v3}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110289

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110288

    const v5, 0x7f080570

    invoke-direct {v1, v4, v5, v3}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11092c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f11092b

    const v5, 0x7f080575

    invoke-direct {v1, v4, v5, v3}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;)V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11092e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f11092d

    const v5, 0x7f080577

    invoke-direct {v1, v4, v5, v3}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;)V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110931

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110930

    const v5, 0x7f080579

    invoke-direct {v1, v4, v5, v3}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;)V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMasterFilterDescription;->mFilter:Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;->IsSupportColorRentention()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method


# virtual methods
.method protected initView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/fragment/FragmentDescription;->initView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDescription;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f11045b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMasterFilter()Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMasterFilterDescription;->mFilter:Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/fragment/FragmentDescription$DescriptionItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/FragmentDescription$DescriptionItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance p1, Lcom/android/camera/fragment/manually/adapter/AmbilightDescriptionAdapter;

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentMasterFilterDescription;->getParameterData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/fragment/manually/adapter/AmbilightDescriptionAdapter;-><init>(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMasterFilterDescription;->mFilter:Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMasterFilterDescription;->mFilter:Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/ComponentData;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
