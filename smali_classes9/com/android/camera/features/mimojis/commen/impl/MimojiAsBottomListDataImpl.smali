.class public Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;
.super Ljava/lang/Object;
.source "MimojiAsBottomListDataImpl.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;


# static fields
.field private static final HUMAN_DESC:[I

.field private static final TAG:Ljava/lang/String; = "MimojiAsBottomListDataImpl"

.field private static final human:[I


# instance fields
.field private mimojiVersion:I

.field private final resourceBg:[I

.field private final resourceBgDesc:[I

.field private final resourceTimbre:[I

.field private final resourceTimbreDesc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->human:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->HUMAN_DESC:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x2
        0x3
        0x0
        0x1
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x7f1104b2
        0x7f1104b9
        0x7f1104ba
        0x7f1104b3
        0x7f1104b8
        0x7f1104b7
        0x7f1104b6
        0x7f1104b4
        0x7f1104b5
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->mimojiVersion:I

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceBg:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceBgDesc:[I

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceTimbre:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceTimbreDesc:[I

    iput p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->mimojiVersion:I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080307
        0x7f080306
        0x7f080303
        0x7f080308
        0x7f080305
        0x7f080301
    .end array-data

    :array_1
    .array-data 4
        0x7f110465
        0x7f110462
        0x7f110463
        0x7f110464
        0x7f110461
        0x7f110460
    .end array-data

    :array_2
    .array-data 4
        0x7f08030e
        0x7f080310
        0x7f08030f
        0x7f08030d
        0x7f080312
    .end array-data

    :array_3
    .array-data 4
        0x7f1108c6
        0x7f1108c8
        0x7f1108c7
        0x7f1108c5
        0x7f1108ca
    .end array-data
.end method


# virtual methods
.method public initAvatarData(ILjava/util/List;)I
    .locals 12

    const-string v0, "/"

    if-nez p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget p0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->mimojiVersion:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->getMimoji1List()Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_1
    const/16 p0, 0x64

    const v2, 0x7f110406

    const-string v3, "close_state"

    const-wide v4, 0x7fffffffffffffffL

    if-ne p1, p0, :cond_9

    :try_start_0
    new-instance p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    iput-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDirectoryName:J

    iput v2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    const-string p1, "add_state"

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDirectoryName:J

    const p1, 0x7f11001e

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Ljava/io/File;

    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v2, p1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, p1, v4

    new-instance v6, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {v6}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    sget-object v7, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "config.dat"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "pic.png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v9}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    iput-object v5, v6, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mPackPath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDirectoryName:J

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->CONFIG_PATH_PRE_HUMAN:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    :goto_2
    sget-object v2, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->human:[I

    array-length v2, v2

    if-ge v0, v2, :cond_7

    new-instance v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preconfig"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->CONFIG_PATH_PRE_HUMAN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->CONFIG_PATH_PRE_HUMAN:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v4}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iput-object v5, v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    iput-object v5, v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mPackPath:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl:Ljava/lang/String;

    sget-object v4, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->HUMAN_DESC:[I

    aget v4, v4, v0

    iput v4, v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    invoke-virtual {v2, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->setIsPreHuman(Z)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_8
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_a

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    new-instance p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    iput-object v3, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mDirectoryName:J

    iput v2, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_CAT:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string p1, "cat"

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cat.png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cat1.png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl2:Ljava/lang/String;

    const p1, 0x7f110469

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    const p1, 0x7f11046a

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName2:I

    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->setDefaultFrame(I)V

    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->setFrame(I)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_FROG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string p1, "frog"

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "frog.png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "frog1.png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl2:Ljava/lang/String;

    const p1, 0x7f11046c

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    const p1, 0x7f11046d

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName2:I

    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->setDefaultFrame(I)V

    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->setFrame(I)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_RABBIT2:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string p1, "rabbit2"

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "rabbit.png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "rabbit1.png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl2:Ljava/lang/String;

    const p1, 0x7f110473

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    const p1, 0x7f110474

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName2:I

    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->setDefaultFrame(I)V

    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->setFrame(I)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;-><init>()V

    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_BEAR:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string p1, "bear"

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mConfigPath:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bear.png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mThumbnailUrl:Ljava/lang/String;

    const p1, 0x7f110468

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;->mName:I

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x2

    return p0
.end method

.method public initBgData(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;Ljava/util/List;)I
    .locals 9

    if-nez p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getBackgroundInfos()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceBg:[I

    array-length v2, v2

    if-eq v1, v2, :cond_1

    sget-object p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->TAG:Ljava/lang/String;

    const-string p1, "mimoji bg resource size error"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    :cond_1
    const/4 v1, -0x3

    new-instance v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    invoke-direct {v2, v5}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;-><init>(Z)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    new-instance v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/arcsoft/avatar2/BackgroundInfo;

    iget-object v6, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceBg:[I

    aget v6, v6, v3

    iget-object v7, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceBgDesc:[I

    aget v7, v7, v3

    add-int/lit8 v8, v3, 0x1

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;-><init>(Lcom/arcsoft/avatar2/BackgroundInfo;III)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/BackgroundInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/BackgroundInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v4}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgInfo;->setSelected(Z)V

    move v1, v3

    :cond_3
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v8

    goto :goto_1

    :cond_4
    return v1
.end method

.method public initTimbreData(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;Ljava/util/List;)I
    .locals 7

    if-nez p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceTimbre:[I

    array-length v0, v0

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->timbreTypes:[I

    array-length v1, v1

    if-eq v0, v1, :cond_1

    sget-object p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->TAG:Ljava/lang/String;

    const-string p1, "mimoji timbre resource size error"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    :cond_1
    const/4 v0, -0x3

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    invoke-direct {v1, v4}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;-><init>(Z)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceTimbre:[I

    array-length v1, v1

    if-ge v2, v1, :cond_4

    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->timbreTypes:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceTimbre:[I

    aget v5, v5, v2

    iget-object v6, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceTimbreDesc:[I

    aget v6, v6, v2

    invoke-direct {v1, v4, v5, v6}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;-><init>(III)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->getTimbreId()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->getTimbreId()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {v1, v3}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreInfo;->setSelected(Z)V

    add-int/lit8 v0, v2, 0x1

    :cond_3
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method
