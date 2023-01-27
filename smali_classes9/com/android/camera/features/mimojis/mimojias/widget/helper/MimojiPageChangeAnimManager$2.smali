.class Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager$2;
.super Ljava/lang/Object;
.source "MimojiPageChangeAnimManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;->translateYTextureView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager$2;->this$0:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager$2;->this$0:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

    iget-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;->mLocationTextureView:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;->access$000(Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager$2;->this$0:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;->mLocationTextureView:[I

    aget v1, v1, v2

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;->access$100(Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager$2;->this$0:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;->access$000(Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
