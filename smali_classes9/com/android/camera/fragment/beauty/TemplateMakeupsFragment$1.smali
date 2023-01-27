.class Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$1;
.super Ljava/lang/Object;
.source "TemplateMakeupsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;

    const/4 p2, 0x1

    invoke-static {p1, p3, p2}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->access$000(Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;IZ)V

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mItemList:Ljava/util/List;

    iget p0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/TypeItem;

    iget-object p0, p0, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    const-string p1, "18"

    invoke-static {p1, p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautyClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
