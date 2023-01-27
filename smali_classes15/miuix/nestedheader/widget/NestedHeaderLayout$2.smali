.class Lmiuix/nestedheader/widget/NestedHeaderLayout$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "NestedHeaderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/nestedheader/widget/NestedHeaderLayout;->autoAdsorption(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    iput-object p2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->val$tag:Ljava/lang/String;

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->val$tag:Ljava/lang/String;

    invoke-static {p2, v0}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$400(Lmiuix/nestedheader/widget/NestedHeaderLayout;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedHeaderLayout$2;->this$0:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result p1

    invoke-static {p0, p1}, Lmiuix/nestedheader/widget/NestedHeaderLayout;->access$500(Lmiuix/nestedheader/widget/NestedHeaderLayout;I)V

    :cond_0
    return-void
.end method
