.class Lcom/android/camera/module/impl/component/DisplayGuideImp$2;
.super Ljava/lang/Object;
.source "DisplayGuideImp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/DisplayGuideImp;->showUltraPixelSelfDisplayUnfoldTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/DisplayGuideImp;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/DisplayGuideImp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp$2;->this$0:Lcom/android/camera/module/impl/component/DisplayGuideImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setUltraPixelSelf(Z)V

    return-void
.end method
