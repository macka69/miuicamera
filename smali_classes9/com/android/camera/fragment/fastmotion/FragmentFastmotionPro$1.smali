.class Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro$1;
.super Ljava/lang/Object;
.source "FragmentFastmotionPro.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro$1;->this$0:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro$1;->this$0:Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;

    invoke-static {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->access$000(Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
