.class public final synthetic Lcom/android/camera/dualvideo/util/-$$Lambda$RenderSourceType$d--oXH1lQ1htp8nT0WwvUnvE_ak;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/dualvideo/util/-$$Lambda$RenderSourceType$d--oXH1lQ1htp8nT0WwvUnvE_ak;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/camera/dualvideo/util/-$$Lambda$RenderSourceType$d--oXH1lQ1htp8nT0WwvUnvE_ak;->f$0:I

    check-cast p1, Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/util/RenderSourceType;->lambda$getTagByIndex$0(ILcom/android/camera/dualvideo/util/RenderSourceType;)Z

    move-result p0

    return p0
.end method
