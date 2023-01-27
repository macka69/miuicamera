.class Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$1;
.super Ljava/lang/Object;
.source "FragmentMoreModeTabV2.java"

# interfaces
.implements Lmiuix/springback/view/SpringBackLayout$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$1;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lmiuix/springback/view/SpringBackLayout;II)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$1;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    int-to-float p1, p3

    invoke-static {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$016(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;F)F

    invoke-static {}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getInstance()Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->startInnerSpringAnim()V

    return-void
.end method

.method public onStateChanged(IIZ)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$1;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$002(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;F)F

    :cond_0
    return-void
.end method
