.class Lcom/android/camera/fragment/sticker/FragmentSticker$2;
.super Ljava/lang/Object;
.source "FragmentSticker.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/sticker/FragmentSticker;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/sticker/FragmentSticker;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/sticker/FragmentSticker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/sticker/FragmentSticker$2;->this$0:Lcom/android/camera/fragment/sticker/FragmentSticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p0, Lcom/android/camera/fragment/sticker/FragmentSticker$2;->this$0:Lcom/android/camera/fragment/sticker/FragmentSticker;

    invoke-static {p2}, Lcom/android/camera/fragment/sticker/FragmentSticker;->access$100(Lcom/android/camera/fragment/sticker/FragmentSticker;)Lcom/android/camera/ui/NoScrollViewPager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/android/camera/fragment/sticker/FragmentSticker$2;->this$0:Lcom/android/camera/fragment/sticker/FragmentSticker;

    invoke-static {p2}, Lcom/android/camera/fragment/sticker/FragmentSticker;->access$100(Lcom/android/camera/fragment/sticker/FragmentSticker;)Lcom/android/camera/ui/NoScrollViewPager;

    move-result-object p2

    invoke-virtual {p2, p1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/sticker/FragmentSticker$2;->this$0:Lcom/android/camera/fragment/sticker/FragmentSticker;

    invoke-static {p1}, Lcom/android/camera/fragment/sticker/FragmentSticker;->access$200(Lcom/android/camera/fragment/sticker/FragmentSticker;)Lcom/android/camera/fragment/sticker/FragmentSticker$OnRadioButtonChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/sticker/FragmentSticker$2;->this$0:Lcom/android/camera/fragment/sticker/FragmentSticker;

    invoke-static {p0}, Lcom/android/camera/fragment/sticker/FragmentSticker;->access$200(Lcom/android/camera/fragment/sticker/FragmentSticker;)Lcom/android/camera/fragment/sticker/FragmentSticker$OnRadioButtonChangedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/fragment/sticker/FragmentSticker$OnRadioButtonChangedListener;->onChanged()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0318
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
