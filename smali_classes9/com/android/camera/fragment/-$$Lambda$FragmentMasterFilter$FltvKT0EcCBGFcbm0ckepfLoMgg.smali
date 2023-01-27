.class public final synthetic Lcom/android/camera/fragment/-$$Lambda$FragmentMasterFilter$FltvKT0EcCBGFcbm0ckepfLoMgg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/FragmentMasterFilter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentMasterFilter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMasterFilter$FltvKT0EcCBGFcbm0ckepfLoMgg;->f$0:Lcom/android/camera/fragment/FragmentMasterFilter;

    iput p2, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMasterFilter$FltvKT0EcCBGFcbm0ckepfLoMgg;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMasterFilter$FltvKT0EcCBGFcbm0ckepfLoMgg;->f$0:Lcom/android/camera/fragment/FragmentMasterFilter;

    iget p0, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMasterFilter$FltvKT0EcCBGFcbm0ckepfLoMgg;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/FragmentMasterFilter;->lambda$dismiss$0$FragmentMasterFilter(I)V

    return-void
.end method
