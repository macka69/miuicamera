.class public final synthetic Lcom/android/camera/fragment/aiwatermark/adapter/-$$Lambda$WatermarkAdapter$DFc8CVd-MIFsLMONO0oQ_VusXl8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/camera/aiwatermark/data/WatermarkItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/-$$Lambda$WatermarkAdapter$DFc8CVd-MIFsLMONO0oQ_VusXl8;->f$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    iput-object p2, p0, Lcom/android/camera/fragment/aiwatermark/adapter/-$$Lambda$WatermarkAdapter$DFc8CVd-MIFsLMONO0oQ_VusXl8;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/camera/fragment/aiwatermark/adapter/-$$Lambda$WatermarkAdapter$DFc8CVd-MIFsLMONO0oQ_VusXl8;->f$2:I

    iput-object p4, p0, Lcom/android/camera/fragment/aiwatermark/adapter/-$$Lambda$WatermarkAdapter$DFc8CVd-MIFsLMONO0oQ_VusXl8;->f$3:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/-$$Lambda$WatermarkAdapter$DFc8CVd-MIFsLMONO0oQ_VusXl8;->f$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/-$$Lambda$WatermarkAdapter$DFc8CVd-MIFsLMONO0oQ_VusXl8;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/fragment/aiwatermark/adapter/-$$Lambda$WatermarkAdapter$DFc8CVd-MIFsLMONO0oQ_VusXl8;->f$2:I

    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/-$$Lambda$WatermarkAdapter$DFc8CVd-MIFsLMONO0oQ_VusXl8;->f$3:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->lambda$showCTADialog$1$WatermarkAdapter(Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V

    return-void
.end method
