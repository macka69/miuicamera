.class public final synthetic Lcom/android/camera/module/-$$Lambda$VideoModule$jdObNEyTcdE2BSW23mUIJDnnvgQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/module/VideoBase$OnTagsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/VideoModule;

.field public final synthetic f$1:Lcom/android/camera/module/VideoBase$OnTagsListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoBase$OnTagsListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$jdObNEyTcdE2BSW23mUIJDnnvgQ;->f$0:Lcom/android/camera/module/VideoModule;

    iput-object p2, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$jdObNEyTcdE2BSW23mUIJDnnvgQ;->f$1:Lcom/android/camera/module/VideoBase$OnTagsListener;

    return-void
.end method


# virtual methods
.method public final onTagsReady(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$jdObNEyTcdE2BSW23mUIJDnnvgQ;->f$0:Lcom/android/camera/module/VideoModule;

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$jdObNEyTcdE2BSW23mUIJDnnvgQ;->f$1:Lcom/android/camera/module/VideoBase$OnTagsListener;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$applyTags$5$VideoModule(Lcom/android/camera/module/VideoBase$OnTagsListener;Ljava/util/List;)V

    return-void
.end method
