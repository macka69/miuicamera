.class Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrollingTabTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->startScrollAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView$2;->this$0:Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p1

    invoke-static {p0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->access$002(Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;I)I

    return-void
.end method
