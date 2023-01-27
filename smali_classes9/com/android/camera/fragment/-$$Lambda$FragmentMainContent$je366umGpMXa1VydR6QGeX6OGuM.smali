.class public final synthetic Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$je366umGpMXa1VydR6QGeX6OGuM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/FragmentMainContent;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentMainContent;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$je366umGpMXa1VydR6QGeX6OGuM;->f$0:Lcom/android/camera/fragment/FragmentMainContent;

    iput-boolean p2, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$je366umGpMXa1VydR6QGeX6OGuM;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$je366umGpMXa1VydR6QGeX6OGuM;->f$0:Lcom/android/camera/fragment/FragmentMainContent;

    iget-boolean p0, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$je366umGpMXa1VydR6QGeX6OGuM;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/FragmentMainContent;->lambda$setIdPhotoBoxVisible$6$FragmentMainContent(Z)V

    return-void
.end method
