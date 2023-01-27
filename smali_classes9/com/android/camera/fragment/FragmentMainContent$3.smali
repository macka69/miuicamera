.class Lcom/android/camera/fragment/FragmentMainContent$3;
.super Ljava/lang/Object;
.source "FragmentMainContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentMainContent;->consumeResult(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentMainContent;

.field final synthetic val$topAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentMainContent;Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent$3;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    iput-object p2, p0, Lcom/android/camera/fragment/FragmentMainContent$3;->val$topAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent$3;->val$topAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentMainContent$3;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentMainContent;->access$500(Lcom/android/camera/fragment/FragmentMainContent;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertLightingTip(I)V

    :cond_0
    return-void
.end method
