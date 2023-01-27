.class public Lcom/xiaomi/camera/videocast/VideoCastTileService;
.super Landroid/service/quicksettings/TileService;
.source "VideoCastTileService.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sListeningInstance:Lcom/xiaomi/camera/videocast/VideoCastTileService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->createTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/camera/videocast/VideoCastTileService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->showDiagnoseActivity()V

    return-void
.end method

.method private showDiagnoseActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/xiaomi/camera/videocast/DiagnoseActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "ShowCameraWhenLocked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "StartActivityWhenLocked"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/TileService;->startActivityAndCollapse(Landroid/content/Intent;)V

    return-void
.end method

.method private showDiagnoseDialog()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f120005

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f11091e

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f11053c

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/xiaomi/camera/videocast/VideoCastTileService$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/videocast/VideoCastTileService$2;-><init>(Lcom/xiaomi/camera/videocast/VideoCastTileService;)V

    const v2, 0x7f1102fb

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/xiaomi/camera/videocast/VideoCastTileService$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/videocast/VideoCastTileService$3;-><init>(Lcom/xiaomi/camera/videocast/VideoCastTileService;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7f6

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/TileService;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private update()V
    .locals 4

    invoke-static {p0}, Lcom/xiaomi/camera/videocast/VideoCastService;->isServiceRunning(Landroid/content/Context;)Z

    move-result v0

    sget-object v1, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update: isRunning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11091e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    const v2, 0x7f0803a2

    invoke-static {p0, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method public static updateTile()V
    .locals 1

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->sListeningInstance:Lcom/xiaomi/camera/videocast/VideoCastTileService;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->update()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: isSecure() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->isSecure()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: isLocked() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->isLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->isRemoteOnlineSupported()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v0, "onClick: video cast not supported"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/camera/videocast/VideoCastService;->getServiceState(Landroid/content/Context;)Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->STARTING:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    if-ne v0, v1, :cond_1

    sget-object p0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v0, "onClick: click is disallowed while service is starting"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v1, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->STOPPING:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    if-ne v0, v1, :cond_2

    sget-object p0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v0, "onClick: click is disallowed while service is stopping"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v1, Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;->ADVERTISING:Lcom/xiaomi/camera/videocast/VideoCastService$ServiceState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v1, "onClick: switch off"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/xiaomi/camera/videocast/VideoCastService;->stopAdvertising(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void

    :cond_3
    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/NetworkDiagnostics;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/xiaomi/camera/rcs/network/NetworkDiagnostics;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v1, "onClick: switch on"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/xiaomi/camera/videocast/VideoCastService;->startAdvertising(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->isLocked()Z

    move-result v0

    const-string v1, "onClick: showDiagnoseDialog"

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v1, "onClick: showDiagnoseActivity"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->showDiagnoseActivity()V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/camera/videocast/VideoCastTileService$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/videocast/VideoCastTileService$1;-><init>(Lcom/xiaomi/camera/videocast/VideoCastTileService;)V

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/TileService;->unlockAndRun(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->showDiagnoseDialog()V

    :goto_1
    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    sget-object p0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    sget-object p0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartListening()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v1, "onStartListening"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->sListeningInstance:Lcom/xiaomi/camera/videocast/VideoCastTileService;

    invoke-direct {p0}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->update()V

    return-void
.end method

.method public onStopListening()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v1, "onStopListening"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->sListeningInstance:Lcom/xiaomi/camera/videocast/VideoCastTileService;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    sput-object p0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->sListeningInstance:Lcom/xiaomi/camera/videocast/VideoCastTileService;

    :cond_0
    return-void
.end method

.method public onTileAdded()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    sget-object v0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v1, "onTileAdded"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/camera/videocast/VideoCastTileService;->update()V

    return-void
.end method

.method public onTileRemoved()V
    .locals 1

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    sget-object p0, Lcom/xiaomi/camera/videocast/VideoCastTileService;->TAG:Ljava/lang/String;

    const-string v0, "onTileRemoved"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
