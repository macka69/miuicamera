.class public final synthetic Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$AxtgRyYT2hNO03sFpwf8FFja-ww;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/ModeProtocol$TopAlert;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$AxtgRyYT2hNO03sFpwf8FFja-ww;->f$0:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iput p2, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$AxtgRyYT2hNO03sFpwf8FFja-ww;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$AxtgRyYT2hNO03sFpwf8FFja-ww;->f$0:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iget p0, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$AxtgRyYT2hNO03sFpwf8FFja-ww;->f$1:I

    invoke-static {v0, p0}, Lcom/android/camera/fragment/FragmentMainContent;->lambda$updateTopAlert$4(Lcom/android/camera/protocol/ModeProtocol$TopAlert;I)V

    return-void
.end method
