.class public Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SetupWizardFragment.java"

# interfaces
.implements Lcom/android/camera/dualvideo/remote/AvailabilityCallback;
.implements Lcom/android/camera/dualvideo/remote/ConnectivityCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlertDialogTitle:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private mCurrScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

.field private mHomeScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

.field private mListScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

.field private mScanScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

.field private mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->createTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAvailabilityStateChanged$0(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mCurrScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->onAvailabilityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onConnectivityStateChanged$1(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mCurrScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->onConnectivityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    :cond_0
    return-void
.end method

.method private setupScreens(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    const v1, 0x7f0a0350

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mHomeScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setVisibility(I)V

    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;

    const v2, 0x7f0a0355

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/S;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mScanScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setVisibility(I)V

    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    const v2, 0x7f0a0353

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mListScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getAlertDialog()Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public getAlertDialogTitle()I
    .locals 0
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    iget p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mAlertDialogTitle:I

    return p0
.end method

.method public getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    return-object p0
.end method

.method public synthetic lambda$onAvailabilityStateChanged$0$SetupWizardFragment(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->lambda$onAvailabilityStateChanged$0(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    return-void
.end method

.method public synthetic lambda$onConnectivityStateChanged$1$SetupWizardFragment(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->lambda$onConnectivityStateChanged$1(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    return-void
.end method

.method public onAvailabilityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 2
    .param p1    # Lcom/android/camera/dualvideo/remote/RemoteDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAvailabilityStateChanged"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getActivity()Lcom/android/camera/ActivityBase;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/remote/setupwizard/-$$Lambda$SetupWizardFragment$nHgNAT0mkmfLz162XKeiit_LBqk;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/-$$Lambda$SetupWizardFragment$nHgNAT0mkmfLz162XKeiit_LBqk;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConnectivityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 2
    .param p1    # Lcom/android/camera/dualvideo/remote/RemoteDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->TAG:Ljava/lang/String;

    const-string v1, "onConnectivityStateChanged"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getActivity()Lcom/android/camera/ActivityBase;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/remote/setupwizard/-$$Lambda$SetupWizardFragment$mzckccKA-8wnDzQyvVhnCE7d484;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/-$$Lambda$SetupWizardFragment$mzckccKA-8wnDzQyvVhnCE7d484;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    sget-object p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->TAG:Ljava/lang/String;

    const-string p1, "onCreate"

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreateDialog"

    invoke-static {p1, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getActivity()Lcom/android/camera/ActivityBase;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mAlertDialogTitle:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1102f6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1102f7

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0160

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->setupScreens(Landroid/view/View;)V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, v3}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mCurrScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->onPause()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mCurrScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mHomeScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mCurrScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mCurrScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setupViews()V

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mCurrScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/RotateDialogController;->addDialogFSFlag(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method public onTimeReached(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V
    .locals 2
    .param p1    # Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->TAG:Ljava/lang/String;

    const-string v1, "onTimeReached"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mCurrScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->onTimeReached(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Timer;)V

    :cond_0
    return-void
.end method

.method public setAlertDialogTitle(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mAlertDialogTitle:I

    return-void
.end method

.method public setSetupWizard(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    return-void
.end method

.method public showListView()V
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showListView"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mCurrScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mListScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mCurrScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mCurrScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setupViews()V

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mCurrScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->onResume()V

    return-void
.end method

.method public showScanView()V
    .locals 2

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showScanView"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mCurrScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mScanScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mCurrScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mCurrScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->setupViews()V

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;->mCurrScreen:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->onResume()V

    return-void
.end method
