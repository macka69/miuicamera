.class public Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;
.super Ljava/lang/Object;
.source "FragmentMoreModeTabV1.java"

# interfaces
.implements Lcom/android/camera/fragment/mode/IMoreMode;


# static fields
.field private static final TAG:Ljava/lang/String; = "MoreModeTabV1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createLayoutManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;->getCountPerLine()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-object v0
.end method

.method public createModeItemDecoration(Landroid/content/Context;Lcom/android/camera/fragment/mode/IMoreMode;)Lcom/android/camera/fragment/mode/ModeItemDecoration;
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/mode/ModeItemDecoration;

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;->getType()I

    move-result p0

    invoke-direct {v0, p1, p2, p0}, Lcom/android/camera/fragment/mode/ModeItemDecoration;-><init>(Landroid/content/Context;Lcom/android/camera/fragment/mode/IMoreMode;I)V

    return-object v0
.end method

.method public getCountPerLine()I
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/Display;->getMoreModeTabCol(ZZ)I

    move-result p0

    return p0
.end method

.method public getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    const p0, 0x7f0a029b

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public modeShouldDownload(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
