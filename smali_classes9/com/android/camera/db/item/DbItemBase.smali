.class public abstract Lcom/android/camera/db/item/DbItemBase;
.super Ljava/lang/Object;
.source "DbItemBase.java"

# interfaces
.implements Lcom/android/camera/db/provider/DbProvider$providerDb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/db/provider/DbProvider$providerDb<",
        "TT;TK;>;"
    }
.end annotation


# instance fields
.field protected final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/db/item/DbItemBase;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract createItem(J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation
.end method

.method protected abstract endItem(Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)TT;"
        }
    .end annotation
.end method

.method public endItemAndInsert(Ljava/lang/Object;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/db/item/DbItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/db/item/DbItemBase;->endItem(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/db/item/DbItemBase;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public generateItem(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/db/item/DbItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/db/item/DbItemBase;->createItem(J)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAllItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/db/item/DbItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/db/item/DbItemBase;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCount()J
    .locals 3

    iget-object v0, p0, Lcom/android/camera/db/item/DbItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/db/item/DbItemBase;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildCount()Lorg/greenrobot/greendao/query/CountQuery;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/CountQuery;->count()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected abstract getDao()Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;TK;>;"
        }
    .end annotation
.end method

.method protected final getDaoMaser()Lcom/android/camera/db/greendao/DaoMaster;
    .locals 0

    invoke-static {}, Lcom/android/camera/db/DbContainer;->getInstance()Lcom/android/camera/db/DbContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/db/DbContainer;->getDaoMaster()Lcom/android/camera/db/greendao/DaoMaster;

    move-result-object p0

    return-object p0
.end method

.method protected final getDaoSession()Lcom/android/camera/db/greendao/DaoSession;
    .locals 0

    invoke-static {}, Lcom/android/camera/db/DbContainer;->getInstance()Lcom/android/camera/db/DbContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/db/DbContainer;->getDaoSession()Lcom/android/camera/db/greendao/DaoSession;

    move-result-object p0

    return-object p0
.end method

.method public getItemByMediaId(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "todo"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getItemByPath(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "todo"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getItemWithExistedQuery(Lorg/greenrobot/greendao/query/Query;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "todo"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLastItem()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/db/item/DbItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/db/item/DbItemBase;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    new-array v2, v2, [Lorg/greenrobot/greendao/Property;

    invoke-virtual {p0}, Lcom/android/camera/db/item/DbItemBase;->getOrderProperty()Lorg/greenrobot/greendao/Property;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected abstract getOrderProperty()Lorg/greenrobot/greendao/Property;
.end method

.method protected final insertOrReplace(Ljava/lang/Object;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/db/item/DbItemBase;->getDaoSession()Lcom/android/camera/db/greendao/DaoSession;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method protected abstract provideTableName()Ljava/lang/String;
.end method

.method public removeItem(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/db/item/DbItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/db/item/DbItemBase;->getDaoSession()Lcom/android/camera/db/greendao/DaoSession;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->delete(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateItem(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/db/item/DbItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/camera/db/item/DbItemBase;->updateItemThroughDb(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected final updateItemThroughDb(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/db/item/DbItemBase;->getDaoSession()Lcom/android/camera/db/greendao/DaoSession;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;->update(Ljava/lang/Object;)V

    return-void
.end method
