.class public Lcom/android/camera/fragment/vv/VVGalleryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VVGalleryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VVGalleryAdapter"


# instance fields
.field private mEffectItemPadding:Lcom/android/camera/fragment/vv/FragmentVVGallery$EffectItemPadding;

.field private mGlideOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mParentClickListener:Landroid/view/View$OnClickListener;

.field private mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

.field private mSelectedIndex:I

.field private mVVList:Lcom/android/camera/fragment/vv/VVList;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/VVList;Landroidx/recyclerview/widget/LinearLayoutManager;ILandroid/view/View$OnClickListener;Lcom/android/camera/fragment/vv/ResourceSelectedListener;Lcom/android/camera/fragment/vv/FragmentVVGallery$EffectItemPadding;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    iput-object p2, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-ltz p3, :cond_0

    iput p3, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mSelectedIndex:I

    :cond_0
    iput-object p4, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mParentClickListener:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

    iput-object p6, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mEffectItemPadding:Lcom/android/camera/fragment/vv/FragmentVVGallery$EffectItemPadding;

    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mGlideOptions:Lcom/bumptech/glide/request/RequestOptions;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mGlideOptions:Lcom/bumptech/glide/request/RequestOptions;

    sget-object p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    return-void
.end method

.method private configItemState(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move/from16 v1, p2

    iget-object v2, v6, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v2, v1}, Lcom/android/camera/resource/BaseResourceList;->getItem(I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/camera/fragment/vv/VVItem;

    const v2, 0x7f0a046d

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    const v2, 0x7f0a0470

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a046e

    invoke-virtual {v0, v3}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a0473

    invoke-virtual {v0, v4}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a046c

    invoke-virtual {v0, v5}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v9, 0x7f0a0472

    invoke-virtual {v0, v9}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/LottieAnimationView;

    const v10, 0x7f0a046f

    invoke-virtual {v0, v10}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    iget-object v11, v7, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setSelected(Z)V

    iget v4, v6, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mSelectedIndex:I

    const/4 v12, 0x7

    const/4 v13, 0x0

    if-ne v4, v1, :cond_0

    invoke-virtual {v7}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v1

    if-ne v1, v12, :cond_0

    goto :goto_0

    :cond_0
    move v11, v13

    :goto_0
    invoke-static {v8, v11}, Lcom/android/camera/Util;->correctionSelectView(Landroid/view/View;Z)V

    if-eqz v11, :cond_1

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v7}, Lcom/android/camera/fragment/vv/VVItem;->getTotalDuration()J

    move-result-wide v14

    invoke-direct {v6, v14, v15}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->getDurationString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v7, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/camera/fragment/vv/VVItem;->getTotalDuration()J

    move-result-wide v4

    move-object/from16 v0, p0

    move v2, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->setAccessible(Landroid/view/View;ZLjava/lang/String;J)V

    iget-object v0, v7, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    invoke-static {v8, v0}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    invoke-static {v9}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    invoke-virtual {v7}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v0

    const v1, 0x7f0803e8

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    if-eq v0, v12, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v7}, Lcom/android/camera/fragment/vv/VVItem;->isCloudItem()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x3f59999a

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    const v0, 0x3eae147b

    invoke-virtual {v9, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    const v0, 0x7f10003d

    invoke-virtual {v9, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-virtual {v9, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    invoke-virtual {v9}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    new-instance v0, Lcom/android/camera/fragment/vv/VVGalleryAdapter$1;

    invoke-direct {v0, v6, v7}, Lcom/android/camera/fragment/vv/VVGalleryAdapter$1;-><init>(Lcom/android/camera/fragment/vv/VVGalleryAdapter;Lcom/android/camera/fragment/vv/VVItem;)V

    invoke-static {v9, v0}, Lcom/android/camera/animation/FolmeUtils;->animateShrink(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unknown state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v9, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v10, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    :cond_6
    const/16 v0, 0x8

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v9, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    invoke-virtual {v10, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method private getDurationString(J)Ljava/lang/String;
    .locals 1

    long-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const-string p0, "00:%02d"

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setAccessible$0(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private notifyItemChanged(II)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    if-le p2, v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private scrollIfNeed(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mEffectItemPadding:Lcom/android/camera/fragment/vv/FragmentVVGallery$EffectItemPadding;

    iget v0, v0, Lcom/android/camera/fragment/vv/FragmentVVGallery$EffectItemPadding;->mHorizontalPadding:I

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-lez p1, :cond_3

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mEffectItemPadding:Lcom/android/camera/fragment/vv/FragmentVVGallery$EffectItemPadding;

    iget v0, v0, Lcom/android/camera/fragment/vv/FragmentVVGallery$EffectItemPadding;->mHorizontalPadding:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method private setAccessible(Landroid/view/View;ZLjava/lang/String;J)V
    .locals 3

    if-eqz p2, :cond_0

    long-to-float p0, p4

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p0, p2

    float-to-double p4, p0

    invoke-static {p4, p5}, Ljava/lang/Math;->floor(D)D

    move-result-wide p4

    double-to-int p0, p4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f0f000c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p4, p5, p0, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p3, 0x7f1100ad

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/camera/fragment/vv/-$$Lambda$VVGalleryAdapter$_7wCGzZfsq3grjbYD2EBSY5O0pQ;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/-$$Lambda$VVGalleryAdapter$_7wCGzZfsq3grjbYD2EBSY5O0pQ;-><init>(Landroid/view/View;)V

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getItemAt(I)Lcom/android/camera/fragment/vv/VVItem;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {p0, p1}, Lcom/android/camera/resource/BaseResourceList;->getItem(I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/vv/VVItem;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/resource/BaseResourceList;->getSize()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 5
    .param p1    # Lcom/android/camera/fragment/CommonRecyclerViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0471

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchItemScale(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v0, p2}, Lcom/android/camera/resource/BaseResourceList;->getItem(I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/VVItem;

    const v1, 0x7f0a046d

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVItem;->isCloudItem()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v2

    const/4 v4, 0x7

    if-eq v2, v4, :cond_0

    iget-object v2, v0, Lcom/android/camera/fragment/vv/VVItem;->placeholder:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v2, v0, Lcom/android/camera/fragment/vv/VVItem;->iconUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v0, v0, Lcom/android/camera/fragment/vv/VVItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mGlideOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v0, v0, Lcom/android/camera/fragment/vv/VVItem;->coverPath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mGlideOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->configItemState(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;ILjava/util/List;)V
    .locals 1
    .param p1    # Lcom/android/camera/fragment/CommonRecyclerViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Ljava/lang/Boolean;

    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->configItemState(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v1, v0}, Lcom/android/camera/resource/BaseResourceList;->getItem(I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {v1}, Lcom/android/camera/resource/BaseResourceItem;->getCurrentState()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v3, 0x7

    if-eq v1, v3, :cond_0

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mParentClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->onSelected(ILandroid/view/View;Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d00b1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onSelected(ILandroid/view/View;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v0, p1}, Lcom/android/camera/resource/BaseResourceList;->getItem(I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/VVItem;

    iget-object v0, v0, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mSelectedIndex:I

    if-eq v1, p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelected newIndex="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "VVGalleryAdapter"

    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mSelectedIndex:I

    iput p1, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mSelectedIndex:I

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

    iget-object v2, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v2, p1}, Lcom/android/camera/resource/BaseResourceList;->getItem(I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/vv/VVItem;

    invoke-interface {v1, v2}, Lcom/android/camera/fragment/vv/ResourceSelectedListener;->onResourceSelected(Lcom/android/camera/fragment/vv/VVItem;)V

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->scrollIfNeed(I)V

    iget p1, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mSelectedIndex:I

    invoke-direct {p0, p2, p1}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->notifyItemChanged(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVTemplateThumbnailClick(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mParentClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    if-nez p1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "value_vv_click_play_template: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVTemplateThumbnailClick(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
