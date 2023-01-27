.class public Lcom/android/camera/provider/SplashProvider;
.super Landroid/content/ContentProvider;
.source "SplashProvider.java"


# static fields
.field private static final COEFFICIENT_NORMAL_BUTTON_TOP:F = 0.7f

.field private static final COEFFICIENT_THIN_BUTTON_TOP:F = 0.88355f

.field private static final FILE_FAT_NAME:Ljava/lang/String; = "splashVertical"

.field private static final FILE_FORMAT:Ljava/lang/String; = ".jpg"

.field private static final FILE_NORMAL_NAME:Ljava/lang/String; = "splash"

.field private static final METHOD_GET_SPLASH:Ljava/lang/String; = "getCameraSplash"

.field private static final TAG:Ljava/lang/String; = "SplashProvider"

.field private static final TIME_OUT:J = 0xbb8L


# instance fields
.field private final mConditionVariable:Landroid/os/ConditionVariable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/provider/SplashProvider;->mConditionVariable:Landroid/os/ConditionVariable;

    return-void
.end method

.method private getDiffScreenDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {}, Lcom/android/camera/Display;->isFoldDisplayType()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->getDisplayFoldState()Z

    move-result p0

    if-nez p0, :cond_0

    const p0, 0x7f080129

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->isFoldDisplayType()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayFoldState()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f080128

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const p0, 0x7f080127

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getFileName()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/android/camera/Display;->isFoldDisplayType()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/Display;->getDisplayFoldState()Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "splashVertical.jpg"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "splash.jpg"

    :goto_0
    return-object p0
.end method

.method private getSplashFile(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/provider/SplashProvider;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/Display;->isFoldDisplayType()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isSupportMultiScreenDevices()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Display;->init(Landroid/content/Context;)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/provider/SplashProvider;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    new-instance v2, Lcom/android/camera/provider/-$$Lambda$SplashProvider$bWAV7sq4bPaTsOikGxsXO3cJWbY;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/camera/provider/-$$Lambda$SplashProvider$bWAV7sq4bPaTsOikGxsXO3cJWbY;-><init>(Lcom/android/camera/provider/SplashProvider;Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    const-string p1, "SplashProvider"

    const-string v1, "getSplashFile: block E..."

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/provider/SplashProvider;->mConditionVariable:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    const-string p0, "getSplashFile: block X..."

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private synthetic lambda$getSplashFile$0(Landroid/content/Context;Ljava/io/File;)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/camera/provider/SplashProvider;->getDiffScreenDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "SplashProvider"

    if-nez p1, :cond_0

    const-string p0, "getSplashFile: bottom drawable is null!"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v1

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v2

    invoke-static {}, Lcom/android/camera/Display;->getBottomMargin()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-static {}, Lcom/android/camera/Display;->isFoldDisplayType()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/camera/Display;->getDisplayFoldState()Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x3f623055

    goto :goto_0

    :cond_1
    const v6, 0x3f333333

    :goto_0
    sub-int v3, v2, v3

    invoke-static {}, Lcom/android/camera/Display;->getBottomBarHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0706f3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int v7, v1, v7

    invoke-static {}, Lcom/android/camera/Display;->isFoldDisplayType()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/camera/Display;->getDisplayFoldState()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p1, v7, v9, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v9, v6, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_1
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x64

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v4, p1, p2, v1}, Lcom/android/camera/Util;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "getSplashFile: save splash bitmap failed!"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object p0, p0, Lcom/android/camera/provider/SplashProvider;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    const-string v0, "getCameraSplash"

    const v1, 0x2913bc62

    if-eq p3, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_3

    return-object p2

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/provider/SplashProvider;->getSplashFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v1, "com.android.camera.fileProvider"

    invoke-static {p3, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSplashFile: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", uri = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SplashProvider"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p1, p0, p3, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_2
    return-object p2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic lambda$getSplashFile$0$SplashProvider(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/provider/SplashProvider;->lambda$getSplashFile$0(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method public onCreate()Z
    .locals 1

    const-string p0, "SplashProvider"

    const-string v0, "onCreate: "

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method
