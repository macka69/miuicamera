.class Lcom/android/camera/customization/PreferenceCustomSound$MyGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "PreferenceCustomSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/customization/PreferenceCustomSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGridLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/customization/PreferenceCustomSound;


# direct methods
.method public constructor <init>(Lcom/android/camera/customization/PreferenceCustomSound;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/customization/PreferenceCustomSound$MyGridLayoutManager;->this$0:Lcom/android/camera/customization/PreferenceCustomSound;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
