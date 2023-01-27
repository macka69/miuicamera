.class final Lmiuix/appcompat/widget/DialogAnimHelper$1;
.super Ljava/lang/Object;
.source "DialogAnimHelper.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/DialogAnimHelper;->executeShowAnim(Landroid/view/View;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isLandscape:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/widget/DialogAnimHelper$1;->val$isLandscape:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    sub-int/2addr p5, p2

    invoke-static {p1, p5}, Lmiuix/appcompat/widget/DialogAnimHelper;->access$000(Landroid/view/View;I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-boolean p0, p0, Lmiuix/appcompat/widget/DialogAnimHelper$1;->val$isLandscape:Z

    invoke-static {p1, p5, p2, p0}, Lmiuix/appcompat/widget/DialogAnimHelper;->access$100(Landroid/view/View;IIZ)V

    return-void
.end method
