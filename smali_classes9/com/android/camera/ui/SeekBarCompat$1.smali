.class Lcom/android/camera/ui/SeekBarCompat$1;
.super Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;
.source "SeekBarCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/SeekBarCompat;->startScroll(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SeekBarCompat;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SeekBarCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat$1;->this$0:Lcom/android/camera/ui/SeekBarCompat;

    invoke-direct {p0}, Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/camera/animation/FolmeUtils$CustomTransitionListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V

    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat$1;->this$0:Lcom/android/camera/ui/SeekBarCompat;

    invoke-static {p1, p3}, Lcom/android/camera/ui/SeekBarCompat;->access$002(Lcom/android/camera/ui/SeekBarCompat;F)F

    iget-object p0, p0, Lcom/android/camera/ui/SeekBarCompat$1;->this$0:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    return-void
.end method
