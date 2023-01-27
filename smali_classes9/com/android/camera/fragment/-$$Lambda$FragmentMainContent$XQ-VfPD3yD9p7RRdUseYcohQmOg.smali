.class public final synthetic Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$XQ-VfPD3yD9p7RRdUseYcohQmOg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/FragmentMainContent;

.field public final synthetic f$1:Lcom/android/camera/aiwatermark/data/WatermarkItem;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentMainContent;Lcom/android/camera/aiwatermark/data/WatermarkItem;ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$XQ-VfPD3yD9p7RRdUseYcohQmOg;->f$0:Lcom/android/camera/fragment/FragmentMainContent;

    iput-object p2, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$XQ-VfPD3yD9p7RRdUseYcohQmOg;->f$1:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    iput-boolean p3, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$XQ-VfPD3yD9p7RRdUseYcohQmOg;->f$2:Z

    iput-object p4, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$XQ-VfPD3yD9p7RRdUseYcohQmOg;->f$3:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$XQ-VfPD3yD9p7RRdUseYcohQmOg;->f$0:Lcom/android/camera/fragment/FragmentMainContent;

    iget-object v1, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$XQ-VfPD3yD9p7RRdUseYcohQmOg;->f$1:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    iget-boolean v2, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$XQ-VfPD3yD9p7RRdUseYcohQmOg;->f$2:Z

    iget-object p0, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$XQ-VfPD3yD9p7RRdUseYcohQmOg;->f$3:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/fragment/FragmentMainContent;->lambda$updateTextBitmap$5$FragmentMainContent(Lcom/android/camera/aiwatermark/data/WatermarkItem;ZLandroid/view/View;)V

    return-void
.end method
