.class Lcom/facebook/rebound/ui/SpringConfiguratorView$OnNubTouchListener;
.super Ljava/lang/Object;
.source "SpringConfiguratorView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/ui/SpringConfiguratorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnNubTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;


# direct methods
.method private constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$OnNubTouchListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/rebound/ui/SpringConfiguratorView$OnNubTouchListener;-><init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$OnNubTouchListener;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-static {p0}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$1200(Lcom/facebook/rebound/ui/SpringConfiguratorView;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
