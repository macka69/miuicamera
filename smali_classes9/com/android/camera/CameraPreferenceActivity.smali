.class public Lcom/android/camera/CameraPreferenceActivity;
.super Lcom/android/camera/BasePreferenceActivity;
.source "CameraPreferenceActivity.java"


# static fields
.field public static final FROM_WHERE:Ljava/lang/String; = "from_where"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mFromWhere:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraPreferenceActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createFragment()Lcom/android/camera/fragment/settings/BasePreferenceFragment;
    .locals 0

    new-instance p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;-><init>()V

    return-object p0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from_where"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/CameraPreferenceActivity;->mFromWhere:I

    const/16 v1, 0xb3

    if-eq p1, v1, :cond_2

    const/16 v1, 0xb9

    if-eq p1, v1, :cond_1

    const/16 v1, 0xbd

    if-eq p1, v1, :cond_0

    const/16 v1, 0xcf

    if-eq p1, v1, :cond_0

    const/16 v1, 0xd0

    if-eq p1, v1, :cond_0

    const/16 v1, 0xd4

    if-eq p1, v1, :cond_0

    const/16 v1, 0xd5

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xd3

    iput p1, p0, Lcom/android/camera/CameraPreferenceActivity;->mFromWhere:I

    goto :goto_0

    :cond_1
    const/16 p1, 0xd2

    iput p1, p0, Lcom/android/camera/CameraPreferenceActivity;->mFromWhere:I

    goto :goto_0

    :cond_2
    const/16 p1, 0xd1

    iput p1, p0, Lcom/android/camera/CameraPreferenceActivity;->mFromWhere:I

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget p0, p0, Lcom/android/camera/CameraPreferenceActivity;->mFromWhere:I

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method
