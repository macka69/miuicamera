.class Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;
.super Ljava/lang/Object;
.source "SplitInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstallResult"
.end annotation


# instance fields
.field final addedDexPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final apkFile:Ljava/io/File;

.field final firstInstalled:Z

.field final splitName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;->splitName:Ljava/lang/String;

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;->apkFile:Ljava/io/File;

    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;->addedDexPaths:Ljava/util/List;

    iput-boolean p4, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;->firstInstalled:Z

    return-void
.end method
