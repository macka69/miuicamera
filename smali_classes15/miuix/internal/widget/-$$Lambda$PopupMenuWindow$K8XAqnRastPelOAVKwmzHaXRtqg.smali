.class public final synthetic Lmiuix/internal/widget/-$$Lambda$PopupMenuWindow$K8XAqnRastPelOAVKwmzHaXRtqg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lmiuix/internal/widget/PopupMenuWindow;

.field public final synthetic f$1:Landroid/view/SubMenu;


# direct methods
.method public synthetic constructor <init>(Lmiuix/internal/widget/PopupMenuWindow;Landroid/view/SubMenu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/internal/widget/-$$Lambda$PopupMenuWindow$K8XAqnRastPelOAVKwmzHaXRtqg;->f$0:Lmiuix/internal/widget/PopupMenuWindow;

    iput-object p2, p0, Lmiuix/internal/widget/-$$Lambda$PopupMenuWindow$K8XAqnRastPelOAVKwmzHaXRtqg;->f$1:Landroid/view/SubMenu;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Lmiuix/internal/widget/-$$Lambda$PopupMenuWindow$K8XAqnRastPelOAVKwmzHaXRtqg;->f$0:Lmiuix/internal/widget/PopupMenuWindow;

    iget-object p0, p0, Lmiuix/internal/widget/-$$Lambda$PopupMenuWindow$K8XAqnRastPelOAVKwmzHaXRtqg;->f$1:Landroid/view/SubMenu;

    invoke-virtual {v0, p0}, Lmiuix/internal/widget/PopupMenuWindow;->lambda$null$0$PopupMenuWindow(Landroid/view/SubMenu;)V

    return-void
.end method
