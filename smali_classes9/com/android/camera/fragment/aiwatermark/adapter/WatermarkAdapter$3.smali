.class Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;
.super Ljava/lang/Object;
.source "WatermarkAdapter.java"

# interfaces
.implements Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->getListener(Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

.field final synthetic val$index:I

.field final synthetic val$item:Lcom/android/camera/aiwatermark/data/WatermarkItem;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;->this$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    iput-object p2, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;->val$key:Ljava/lang/String;

    iput p3, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;->val$index:I

    iput-object p4, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;->val$item:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPermissionResult$0()V
    .locals 2

    invoke-static {}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick startActivity Settings.ACTION_APPLICATION_DETAILS_SETTINGS negative"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onPermissionResult(Z)V
    .locals 9

    invoke-static {}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPermissionResult result ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;->this$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    iget-object v0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;->val$key:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;->val$index:I

    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;->val$item:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    invoke-static {p1, v0, v1, p0}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->access$200(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;->this$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    invoke-static {p1}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->access$300(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;->this$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    invoke-static {p1}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->access$400(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;->this$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    const/4 v1, 0x0

    const v2, 0x7f11043a

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f11043b

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3$1;

    invoke-direct {v4, p0, v0}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3$1;-><init>(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;Landroidx/fragment/app/FragmentActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x1040000

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/camera/fragment/aiwatermark/adapter/-$$Lambda$WatermarkAdapter$3$jKVEZ288JCdsMuRsEDhn8LrqThc;->INSTANCE:Lcom/android/camera/fragment/aiwatermark/adapter/-$$Lambda$WatermarkAdapter$3$jKVEZ288JCdsMuRsEDhn8LrqThc;

    invoke-static/range {v0 .. v8}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->access$402(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    iget-object p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;->this$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    invoke-static {p1}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->access$400(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    new-instance v0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3$2;-><init>(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    :goto_0
    return-void
.end method
