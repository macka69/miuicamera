.class Lcom/android/camera/ModeEditorActivity$MyOrientationListener;
.super Landroid/view/OrientationEventListener;
.source "ModeEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ModeEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ModeEditorActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/ModeEditorActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ModeEditorActivity$MyOrientationListener;->this$0:Lcom/android/camera/ModeEditorActivity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ModeEditorActivity$MyOrientationListener;->this$0:Lcom/android/camera/ModeEditorActivity;

    invoke-static {v0}, Lcom/android/camera/ModeEditorActivity;->access$000(Lcom/android/camera/ModeEditorActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ModeEditorActivity$MyOrientationListener;->this$0:Lcom/android/camera/ModeEditorActivity;

    invoke-static {v0}, Lcom/android/camera/ModeEditorActivity;->access$100(Lcom/android/camera/ModeEditorActivity;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/camera/ModeEditorActivity;->access$102(Lcom/android/camera/ModeEditorActivity;I)I

    iget-object p1, p0, Lcom/android/camera/ModeEditorActivity$MyOrientationListener;->this$0:Lcom/android/camera/ModeEditorActivity;

    invoke-static {p1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ModeEditorActivity$MyOrientationListener;->this$0:Lcom/android/camera/ModeEditorActivity;

    invoke-static {v0}, Lcom/android/camera/ModeEditorActivity;->access$200(Lcom/android/camera/ModeEditorActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ModeEditorActivity$MyOrientationListener;->this$0:Lcom/android/camera/ModeEditorActivity;

    invoke-static {v0, p1}, Lcom/android/camera/ModeEditorActivity;->access$202(Lcom/android/camera/ModeEditorActivity;I)I

    :cond_1
    iget-object p1, p0, Lcom/android/camera/ModeEditorActivity$MyOrientationListener;->this$0:Lcom/android/camera/ModeEditorActivity;

    invoke-static {p1}, Lcom/android/camera/ModeEditorActivity;->access$300(Lcom/android/camera/ModeEditorActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ModeEditorActivity$MyOrientationListener;->this$0:Lcom/android/camera/ModeEditorActivity;

    invoke-static {v0}, Lcom/android/camera/ModeEditorActivity;->access$100(Lcom/android/camera/ModeEditorActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ModeEditorActivity$MyOrientationListener;->this$0:Lcom/android/camera/ModeEditorActivity;

    invoke-static {v2}, Lcom/android/camera/ModeEditorActivity;->access$200(Lcom/android/camera/ModeEditorActivity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0x168

    invoke-static {v0, v1}, Lcom/android/camera/ModeEditorActivity;->access$302(Lcom/android/camera/ModeEditorActivity;I)I

    iget-object v0, p0, Lcom/android/camera/ModeEditorActivity$MyOrientationListener;->this$0:Lcom/android/camera/ModeEditorActivity;

    invoke-static {v0}, Lcom/android/camera/ModeEditorActivity;->access$300(Lcom/android/camera/ModeEditorActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Display;->updateOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/ModeEditorActivity$MyOrientationListener;->this$0:Lcom/android/camera/ModeEditorActivity;

    invoke-static {v0}, Lcom/android/camera/ModeEditorActivity;->access$000(Lcom/android/camera/ModeEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ModeEditorActivity$MyOrientationListener;->this$0:Lcom/android/camera/ModeEditorActivity;

    invoke-static {v0}, Lcom/android/camera/ModeEditorActivity;->access$400(Lcom/android/camera/ModeEditorActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ModeEditorActivity$MyOrientationListener;->this$0:Lcom/android/camera/ModeEditorActivity;

    invoke-static {v0}, Lcom/android/camera/ModeEditorActivity;->access$400(Lcom/android/camera/ModeEditorActivity;)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/ModeEditorActivity$MyOrientationListener;->this$0:Lcom/android/camera/ModeEditorActivity;

    invoke-static {p0}, Lcom/android/camera/ModeEditorActivity;->access$300(Lcom/android/camera/ModeEditorActivity;)I

    move-result p0

    invoke-static {v0, p1, p0}, Lcom/android/camera/Util;->updateOrientationLayoutRotation(Landroid/view/View;II)V

    :cond_2
    :goto_0
    return-void
.end method
