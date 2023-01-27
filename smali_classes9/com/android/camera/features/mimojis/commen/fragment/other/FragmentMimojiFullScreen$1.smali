.class Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen$1;
.super Ljava/lang/Object;
.source "FragmentMimojiFullScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->showExitConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen$1;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen$1;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->access$002(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
