.class Lcom/ss/android/ttve/utils/CameraInstance$1;
.super Ljava/lang/Object;
.source "CameraInstance.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/utils/CameraInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttve/utils/CameraInstance;


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/utils/CameraInstance;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ttve/utils/CameraInstance$1;->this$0:Lcom/ss/android/ttve/utils/CameraInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 1

    iget p0, p2, Landroid/hardware/Camera$Size;->width:I

    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr p0, v0

    if-nez p0, :cond_0

    iget p0, p2, Landroid/hardware/Camera$Size;->height:I

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/utils/CameraInstance$1;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result p0

    return p0
.end method
