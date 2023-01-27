.class public final synthetic Lcom/android/camera/dualvideo/remote/setupwizard/-$$Lambda$SetupWizardFragment$nHgNAT0mkmfLz162XKeiit_LBqk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

.field public final synthetic f$1:Lcom/android/camera/dualvideo/remote/RemoteDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/-$$Lambda$SetupWizardFragment$nHgNAT0mkmfLz162XKeiit_LBqk;->f$0:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    iput-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/-$$Lambda$SetupWizardFragment$nHgNAT0mkmfLz162XKeiit_LBqk;->f$1:Lcom/android/camera/dualvideo/remote/RemoteDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/-$$Lambda$SetupWizardFragment$nHgNAT0mkmfLz162XKeiit_LBqk;->f$0:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/-$$Lambda$SetupWizardFragment$nHgNAT0mkmfLz162XKeiit_LBqk;->f$1:Lcom/android/camera/dualvideo/remote/RemoteDevice;

    invoke-virtual {v0, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->lambda$onAvailabilityStateChanged$0$SetupWizardFragment(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    return-void
.end method
