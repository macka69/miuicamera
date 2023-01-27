.class public Lcom/android/camera/fragment/manually/FragmentAmbilightDescription;
.super Lcom/android/camera/fragment/FragmentDescription;
.source "FragmentAmbilightDescription.java"


# instance fields
.field private mDescriptionAdapter:Lcom/android/camera/fragment/manually/adapter/AmbilightDescriptionAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentDescription;-><init>()V

    return-void
.end method

.method private getParameterData()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/data/data/AmbilightDescriptionItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/camera/data/data/AmbilightDescriptionItem;

    new-instance v7, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11013f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v2, 0x7f110148

    const v3, 0x7f08009e

    const v5, 0x7f08009f

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v2, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110147

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v9, 0x7f11014d

    const v10, 0x7f0800a5

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110143

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110144

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v5, 0x7f11014b

    const v6, 0x7f0800a2

    const v8, 0x7f0800a3

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x2

    aput-object v2, v0, v4

    new-instance v2, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110140

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v6, 0x7f110149

    const v7, 0x7f0800a0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-instance v2, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-boolean v5, Lcom/android/camera/module/AmbilightModule;->mSupportAutoAe:Z

    if-eqz v5, :cond_0

    const v5, 0x7f110142

    goto :goto_0

    :cond_0
    const v5, 0x7f110141

    :goto_0
    new-array v6, v3, [Ljava/lang/Object;

    sget v7, Lcom/android/camera/constant/DurationConstant;->DURATION_AMBILIGHT_MAGIC_STAR_CAPTURE:I

    div-int/lit16 v7, v7, 0x3e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    const v6, 0x7f11014a

    const v7, 0x7f0800a1

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x4

    aput-object v2, v0, v4

    const/4 v2, 0x5

    new-instance v10, Lcom/android/camera/data/data/AmbilightDescriptionItem;

    const v5, 0x7f11014c

    const v6, 0x7f0800a4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f110146

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v1

    invoke-virtual {p0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/data/data/AmbilightDescriptionItem;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    aput-object v10, v0, v2

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method


# virtual methods
.method protected initView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/fragment/FragmentDescription;->initView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDescription;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f11013d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/fragment/FragmentDescription$DescriptionItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/FragmentDescription$DescriptionItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance p1, Lcom/android/camera/fragment/manually/adapter/AmbilightDescriptionAdapter;

    invoke-direct {p0}, Lcom/android/camera/fragment/manually/FragmentAmbilightDescription;->getParameterData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/camera/fragment/manually/adapter/AmbilightDescriptionAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentAmbilightDescription;->mDescriptionAdapter:Lcom/android/camera/fragment/manually/adapter/AmbilightDescriptionAdapter;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDescription;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
