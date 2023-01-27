.class Lcom/android/camera/fragment/vv/FragmentVVFeature$3;
.super Ljava/lang/Object;
.source "FragmentVVFeature.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVFeature;->showDownloadCancelDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVFeature;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVFeature;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature$3;->this$0:Lcom/android/camera/fragment/vv/FragmentVVFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVFeature$3;->this$0:Lcom/android/camera/fragment/vv/FragmentVVFeature;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->access$202(Lcom/android/camera/fragment/vv/FragmentVVFeature;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
