.class public final synthetic Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/-$$Lambda$MimojiEditBottomListAdapter$MimojiFuEditHolder$g4tobPk9sE6K_uztW6dcYC61A7s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$MimojiFuEditHolder;

.field public final synthetic f$1:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$MimojiFuEditHolder;Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/-$$Lambda$MimojiEditBottomListAdapter$MimojiFuEditHolder$g4tobPk9sE6K_uztW6dcYC61A7s;->f$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$MimojiFuEditHolder;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/-$$Lambda$MimojiEditBottomListAdapter$MimojiFuEditHolder$g4tobPk9sE6K_uztW6dcYC61A7s;->f$1:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;

    iput p3, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/-$$Lambda$MimojiEditBottomListAdapter$MimojiFuEditHolder$g4tobPk9sE6K_uztW6dcYC61A7s;->f$2:I

    return-void
.end method


# virtual methods
.method public final OnRecyclerItemClickListener(Ljava/lang/Object;ILandroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/-$$Lambda$MimojiEditBottomListAdapter$MimojiFuEditHolder$g4tobPk9sE6K_uztW6dcYC61A7s;->f$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$MimojiFuEditHolder;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/-$$Lambda$MimojiEditBottomListAdapter$MimojiFuEditHolder$g4tobPk9sE6K_uztW6dcYC61A7s;->f$1:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/-$$Lambda$MimojiEditBottomListAdapter$MimojiFuEditHolder$g4tobPk9sE6K_uztW6dcYC61A7s;->f$2:I

    move-object v3, p1

    check-cast v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$MimojiFuEditHolder;->lambda$setData$1$MimojiEditBottomListAdapter$MimojiFuEditHolder(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;ILandroid/view/View;)V

    return-void
.end method
