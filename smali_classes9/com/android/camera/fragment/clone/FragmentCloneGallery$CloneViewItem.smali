.class Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneViewItem;
.super Ljava/lang/Object;
.source "FragmentCloneGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/clone/FragmentCloneGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CloneViewItem"
.end annotation


# instance fields
.field public bgDrawable:I

.field public selected:Z

.field public type:I

.field public videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneViewItem;->selected:Z

    iput p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneViewItem;->bgDrawable:I

    iput-object p2, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneViewItem;->videoPath:Ljava/lang/String;

    iput p3, p0, Lcom/android/camera/fragment/clone/FragmentCloneGallery$CloneViewItem;->type:I

    return-void
.end method
