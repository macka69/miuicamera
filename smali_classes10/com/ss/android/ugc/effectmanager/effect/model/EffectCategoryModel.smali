.class public Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;
.super Ljava/lang/Object;
.source "EffectCategoryModel.java"


# instance fields
.field private effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private icon:Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;

.field private icon_selected:Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;

.field private id:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tags_updated_at:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->effects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public checkValued()Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->icon:Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;

    invoke-direct {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->icon:Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;

    :cond_0
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->icon_selected:Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;

    invoke-direct {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->icon_selected:Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;

    :cond_1
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->effects:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->effects:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->tags:Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->tags:Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->icon:Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;->checkValued()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->icon_selected:Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;->checkValued()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getEffects()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->effects:Ljava/util/List;

    return-object p0
.end method

.method public getIcon()Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->icon:Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;

    return-object p0
.end method

.method public getIcon_selected()Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->icon_selected:Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getTags()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->tags:Ljava/util/List;

    return-object p0
.end method

.method public getTagsUpdateTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->tags_updated_at:Ljava/lang/String;

    return-object p0
.end method

.method public setEffects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->effects:Ljava/util/List;

    return-void
.end method

.method public setIcon(Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->icon:Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;

    return-void
.end method

.method public setIcon_selected(Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->icon_selected:Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->id:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->key:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;->tags:Ljava/util/List;

    return-void
.end method
