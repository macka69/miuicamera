.class Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BeautyExtraDoubleCheckAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NormalViewHolder"
.end annotation


# instance fields
.field private itemView:Landroid/view/View;

.field private mAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

.field private mBase:Lcom/android/camera/ui/CircleImageView;

.field private mSelectedOuterIndicator:Landroid/widget/ImageView;

.field private mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;Landroid/view/View;Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->mAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    iput-object p2, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->itemView:Landroid/view/View;

    const p1, 0x7f0a037b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->mText:Landroid/widget/TextView;

    const p1, 0x7f0a037a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/CircleImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->mBase:Lcom/android/camera/ui/CircleImageView;

    const p1, 0x7f0a037c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->mSelectedOuterIndicator:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2}, Lcom/android/camera/animation/FolmeUtils;->handleListItemTouch(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$000(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->mAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->onItemHolderClick(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$000(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$102(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;I)I

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$002(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;I)I

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {p1}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$200(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$100(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$200(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v1}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$000(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v1}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$100(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$300(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v1}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$000(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$300(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;

    iget-object v2, v1, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->mSelectedOuterIndicator:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v1, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->mText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v2}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$500(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v3}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$400(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v4}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$100(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/TypeItem;

    invoke-virtual {v3}, Lcom/android/camera/data/data/TypeItem;->getTextResource()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v1}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$100(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$300(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v1}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$000(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$300(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;I)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;

    iget-object v1, v0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->mSelectedOuterIndicator:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v1}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$500(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v2}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$400(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v3}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$000(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/TypeItem;

    invoke-virtual {v2}, Lcom/android/camera/data/data/TypeItem;->getTextResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->mText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v3}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$500(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1100ad

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v2}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$000(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SkinColorSingleCheckAdapter"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->mAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$100(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->mAdapter:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->onItemHolderClick(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public setDataToView(Lcom/android/camera/data/data/TypeItem;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xa5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f08056b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f08056a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->getTextResource()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {v3}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$000(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)I

    move-result v3

    const/4 v4, 0x0

    if-ne p2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->setAccessible(Landroid/view/View;IZ)V

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->getTextResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->mBase:Lcom/android/camera/ui/CircleImageView;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->getColorResource()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, v4, p1}, Lcom/android/camera/ui/CircleImageView;->updateView(ZI)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->mBase:Lcom/android/camera/ui/CircleImageView;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->getColorResource()I

    move-result p1

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v0, v4, p1}, Lcom/android/camera/ui/CircleImageView;->updateView(ZI)V

    :goto_2
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->mSelectedOuterIndicator:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter$NormalViewHolder;->this$0:Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;

    invoke-static {p0}, Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;->access$000(Lcom/android/camera/fragment/beauty/BeautyExtraDoubleCheckAdapter;)I

    move-result p0

    if-ne p2, p0, :cond_3

    goto :goto_3

    :cond_3
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
