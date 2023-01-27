.class public final synthetic Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$B0r3x1RnDKA9EQ_LYGdeGfZ1rao;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$B0r3x1RnDKA9EQ_LYGdeGfZ1rao;->f$0:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$B0r3x1RnDKA9EQ_LYGdeGfZ1rao;->f$0:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->lambda$updateTextViewTitle$2(Landroid/widget/TextView;)V

    return-void
.end method
