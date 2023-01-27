.class Lcom/android/camera/storage/VideoTagSaveRequest$1;
.super Ljava/lang/Object;
.source "VideoTagSaveRequest.java"

# interfaces
.implements Lorg/jcodec/movtool/MP4Edit;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/storage/VideoTagSaveRequest;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/storage/VideoTagSaveRequest;


# direct methods
.method constructor <init>(Lcom/android/camera/storage/VideoTagSaveRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/storage/VideoTagSaveRequest$1;->this$0:Lcom/android/camera/storage/VideoTagSaveRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/jcodec/containers/mp4/boxes/MovieBox;)V
    .locals 6

    const-class v0, Lorg/jcodec/containers/mp4/boxes/MetaBox;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->fourcc()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirst(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v0

    check-cast v0, Lorg/jcodec/containers/mp4/boxes/MetaBox;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->createMetaBox()Lorg/jcodec/containers/mp4/boxes/MetaBox;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->add(Lorg/jcodec/containers/mp4/boxes/Box;)V

    :cond_0
    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->getKeyedMeta()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_1
    iget-object v2, p0, Lcom/android/camera/storage/VideoTagSaveRequest$1;->this$0:Lcom/android/camera/storage/VideoTagSaveRequest;

    invoke-static {v2}, Lcom/android/camera/storage/VideoTagSaveRequest;->access$000(Lcom/android/camera/storage/VideoTagSaveRequest;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/storage/VideoTagSaveRequest$VideoTag;

    invoke-virtual {v3}, Lcom/android/camera/storage/VideoTagSaveRequest$VideoTag;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->createInt(I)Lorg/jcodec/containers/mp4/boxes/MetaValue;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/android/camera/storage/VideoTagSaveRequest$VideoTag;->getData()[B

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/camera/storage/VideoTagSaveRequest$1;->this$0:Lcom/android/camera/storage/VideoTagSaveRequest;

    invoke-virtual {v3}, Lcom/android/camera/storage/VideoTagSaveRequest$VideoTag;->getBoxType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/camera/storage/VideoTagSaveRequest$VideoTag;->getData()[B

    move-result-object v3

    invoke-static {v4, p1, v5, v3}, Lcom/android/camera/storage/VideoTagSaveRequest;->access$100(Lcom/android/camera/storage/VideoTagSaveRequest;Lorg/jcodec/containers/mp4/boxes/MovieBox;Ljava/lang/String;[B)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->setKeyedMeta(Ljava/util/Map;)V

    return-void
.end method

.method public applyToFragment(Lorg/jcodec/containers/mp4/boxes/MovieBox;[Lorg/jcodec/containers/mp4/boxes/MovieFragmentBox;)V
    .locals 0

    return-void
.end method
