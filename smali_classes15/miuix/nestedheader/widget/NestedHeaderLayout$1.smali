.class Lmiuix/nestedheader/widget/NestedHeaderLayout$1;
.super Ljava/lang/Object;
.source "NestedHeaderLayout.java"

# interfaces
.implements Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/nestedheader/widget/NestedHeaderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;


# direct methods
.method constructor <init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V
    .locals 0

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartNestedScroll(I)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$000(Lmiuix/nestedheader/widget/NestedHeaderLayout;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$100(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V

    :goto_0
    return-void
.end method

.method public onStopNestedScroll(I)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$000(Lmiuix/nestedheader/widget/NestedHeaderLayout;Z)V

    :cond_0
    return-void
.end method

.method public onStopNestedScrollAccepted(I)V
    .locals 0

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$200(Lmiuix/nestedheader/widget/NestedHeaderLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$1;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-static {p0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$300(Lmiuix/nestedheader/widget/NestedHeaderLayout;)V

    return-void
.end method
