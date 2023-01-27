.class public Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;
.super Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;
.source "H.java"


# instance fields
.field private final mHomeScreenMain:Landroid/view/View;

.field private final mHomeScreenPerm:Landroid/view/View;

.field private final mHomeScreenWhat:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardFragment;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getContentView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01a7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->mHomeScreenMain:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getContentView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01a9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->mHomeScreenWhat:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getContentView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01a8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->mHomeScreenPerm:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->mHomeScreenMain:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->mHomeScreenWhat:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->mHomeScreenPerm:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->mAlertDialogTitle:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->gotoAppSettings()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->mAlertDialogTitle:I

    return p0
.end method

.method private gotoAppSettings()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getActivity()Lcom/android/camera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getSetupWizard()Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getActivity()Lcom/android/camera/ActivityBase;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->mHomeScreenMain:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->mHomeScreenWhat:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->mHomeScreenPerm:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getAlertDialogButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$3;

    invoke-direct {v2, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$3;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getAlertDialogButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$4;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setupViews()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$1;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$1;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$2;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$2;-><init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
