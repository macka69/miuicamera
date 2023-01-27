.class public final synthetic Lcom/android/camera/fragment/settings/-$$Lambda$CameraPreferenceFragment$Aa-A2fKEJ_3UxS162nCclGM-7vw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

.field public final synthetic f$1:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/settings/-$$Lambda$CameraPreferenceFragment$Aa-A2fKEJ_3UxS162nCclGM-7vw;->f$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    iput-object p2, p0, Lcom/android/camera/fragment/settings/-$$Lambda$CameraPreferenceFragment$Aa-A2fKEJ_3UxS162nCclGM-7vw;->f$1:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/settings/-$$Lambda$CameraPreferenceFragment$Aa-A2fKEJ_3UxS162nCclGM-7vw;->f$0:Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    iget-object p0, p0, Lcom/android/camera/fragment/settings/-$$Lambda$CameraPreferenceFragment$Aa-A2fKEJ_3UxS162nCclGM-7vw;->f$1:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->lambda$showCTADialog$3$CameraPreferenceFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
