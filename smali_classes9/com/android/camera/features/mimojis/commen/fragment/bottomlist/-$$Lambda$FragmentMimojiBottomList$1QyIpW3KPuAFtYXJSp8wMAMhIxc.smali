.class public final synthetic Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$1QyIpW3KPuAFtYXJSp8wMAMhIxc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$1QyIpW3KPuAFtYXJSp8wMAMhIxc;->f$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    return-void
.end method


# virtual methods
.method public final OnRecyclerItemClickListener(Ljava/lang/Object;ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/-$$Lambda$FragmentMimojiBottomList$1QyIpW3KPuAFtYXJSp8wMAMhIxc;->f$0:Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;

    check-cast p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/FragmentMimojiBottomList;->lambda$initTimbreList$4$FragmentMimojiBottomList(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;ILandroid/view/View;)V

    return-void
.end method
