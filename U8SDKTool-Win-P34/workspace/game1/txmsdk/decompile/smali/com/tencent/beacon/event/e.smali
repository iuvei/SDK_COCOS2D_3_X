.class public final Lcom/tencent/beacon/event/e;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/tencent/beacon/event/e;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/beacon/event/e;->a:Lcom/tencent/beacon/event/e;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/e;->b:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/e;->c:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/e;->d:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/e;->e:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/event/e;->f:Ljava/lang/String;

    .line 90
    if-nez p1, :cond_21

    .line 91
    const-string v0, " DetailUserInfo context == null? pls check!"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :cond_21
    const-string v0, " start to create DetailUserInfo"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 95
    invoke-static {p1}, Lcom/tencent/beacon/a/g;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/g;

    .line 96
    invoke-static {}, Lcom/tencent/beacon/a/e;->m()Lcom/tencent/beacon/a/e;

    move-result-object v2

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/tencent/beacon/a/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/beacon/event/e;->b:Ljava/lang/String;

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " imei:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/beacon/event/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    const-string v3, ""

    iget-object v4, p0, Lcom/tencent/beacon/event/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8e

    .line 101
    :try_start_66
    const-string v3, "IMEI_DENGTA"

    const-string v4, ""

    invoke-static {p1, v3, v4}, Lcom/tencent/beacon/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 103
    const-string v3, "IMEI_DENGTA"

    iget-object v4, p0, Lcom/tencent/beacon/event/e;->b:Ljava/lang/String;

    invoke-static {p1, v3, v4}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_7d} :catch_107

    .line 107
    :cond_7d
    :goto_7d
    const-string v3, ""

    invoke-virtual {v2}, Lcom/tencent/beacon/a/e;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 108
    iget-object v3, p0, Lcom/tencent/beacon/event/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/beacon/a/e;->c(Ljava/lang/String;)V

    .line 111
    :cond_8e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/tencent/beacon/a/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/beacon/event/e;->c:Ljava/lang/String;

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/tencent/beacon/a/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/beacon/event/e;->d:Ljava/lang/String;

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/tencent/beacon/a/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/beacon/event/e;->e:Ljava/lang/String;

    .line 115
    invoke-virtual {v2}, Lcom/tencent/beacon/a/e;->k()Ljava/lang/String;

    move-result-object v3

    .line 116
    if-eqz v3, :cond_f7

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f7

    .line 117
    invoke-static {v3}, Lcom/tencent/beacon/applog/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/beacon/event/e;->f:Ljava/lang/String;

    .line 123
    :goto_db
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 124
    const-string v2, " detail create cost: %d  values:\n %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    return-void

    .line 119
    :cond_f7
    invoke-static {p1}, Lcom/tencent/beacon/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/beacon/applog/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/beacon/event/e;->f:Ljava/lang/String;

    .line 120
    iget-object v3, p0, Lcom/tencent/beacon/event/e;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/beacon/a/e;->d(Ljava/lang/String;)V

    goto :goto_db

    .line 105
    :catch_107
    move-exception v3

    goto/16 :goto_7d
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/beacon/event/e;
    .registers 3

    .prologue
    .line 24
    const-class v1, Lcom/tencent/beacon/event/e;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/beacon/event/e;->a:Lcom/tencent/beacon/event/e;

    if-nez v0, :cond_e

    .line 25
    new-instance v0, Lcom/tencent/beacon/event/e;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/event/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/beacon/event/e;->a:Lcom/tencent/beacon/event/e;

    .line 27
    :cond_e
    sget-object v0, Lcom/tencent/beacon/event/e;->a:Lcom/tencent/beacon/event/e;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/e;->b:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/e;->c:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/e;->d:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/e;->e:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/event/e;->f:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
