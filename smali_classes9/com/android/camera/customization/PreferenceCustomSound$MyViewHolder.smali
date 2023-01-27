.class Lcom/android/camera/customization/PreferenceCustomSound$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PreferenceCustomSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/customization/PreferenceCustomSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/customization/PreferenceCustomSound;


# direct methods
.method public constructor <init>(Lcom/android/camera/customization/PreferenceCustomSound;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/android/camera/customization/PreferenceCustomSound;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/camera/customization/PreferenceCustomSound$MyViewHolder;->this$0:Lcom/android/camera/customization/PreferenceCustomSound;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
