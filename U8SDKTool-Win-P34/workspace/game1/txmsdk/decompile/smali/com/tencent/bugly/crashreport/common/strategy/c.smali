.class public final Lcom/tencent/bugly/crashreport/common/strategy/c;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/crashreport/common/strategy/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/bugly/crashreport/common/strategy/c;


# instance fields
.field private final b:Lcom/tencent/bugly/proguard/n;

.field private final c:Lcom/tencent/bugly/crashreport/common/strategy/b;

.field private final d:Lcom/tencent/bugly/proguard/l;

.field private final e:Lcom/tencent/bugly/proguard/r;

.field private final f:Lcom/tencent/bugly/proguard/t;

.field private g:Lcom/tencent/bugly/crashreport/common/strategy/b;

.field private h:Ljava/lang/Boolean;

.field private i:J

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/crashreport/common/strategy/c;->a:Lcom/tencent/bugly/crashreport/common/strategy/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/crashreport/common/strategy/b;Lcom/tencent/bugly/proguard/l;Lcom/tencent/bugly/proguard/r;Lcom/tencent/bugly/proguard/t;)V
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->g:Lcom/tencent/bugly/crashreport/common/strategy/b;

    .line 66
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->h:Ljava/lang/Boolean;

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->i:J

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->j:I

    .line 73
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->b:Lcom/tencent/bugly/proguard/n;

    .line 75
    iput-object p3, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->c:Lcom/tencent/bugly/crashreport/common/strategy/b;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iput-object p4, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->d:Lcom/tencent/bugly/proguard/l;

    .line 78
    iput-object p5, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->e:Lcom/tencent/bugly/proguard/r;

    .line 79
    iput-object p6, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->f:Lcom/tencent/bugly/proguard/t;

    .line 82
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->n()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->i:J

    .line 83
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->f:Lcom/tencent/bugly/proguard/t;

    new-instance v1, Lcom/tencent/bugly/crashreport/common/strategy/c$a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/tencent/bugly/crashreport/common/strategy/c$a;-><init>(Lcom/tencent/bugly/crashreport/common/strategy/c;I)V

    iget-wide v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->i:J

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/Runnable;J)Z

    .line 85
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/crashreport/common/strategy/c;
    .registers 2

    .prologue
    .line 107
    const-class v0, Lcom/tencent/bugly/crashreport/common/strategy/c;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/bugly/crashreport/common/strategy/c;->a:Lcom/tencent/bugly/crashreport/common/strategy/c;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/crashreport/common/strategy/b;Lcom/tencent/bugly/proguard/l;Lcom/tencent/bugly/proguard/r;Lcom/tencent/bugly/proguard/t;)Lcom/tencent/bugly/crashreport/common/strategy/c;
    .registers 14

    .prologue
    .line 99
    const-class v7, Lcom/tencent/bugly/crashreport/common/strategy/c;

    monitor-enter v7

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/crashreport/common/strategy/c;->a:Lcom/tencent/bugly/crashreport/common/strategy/c;

    if-nez v0, :cond_14

    .line 100
    new-instance v0, Lcom/tencent/bugly/crashreport/common/strategy/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/bugly/crashreport/common/strategy/c;-><init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/n;Lcom/tencent/bugly/crashreport/common/strategy/b;Lcom/tencent/bugly/proguard/l;Lcom/tencent/bugly/proguard/r;Lcom/tencent/bugly/proguard/t;)V

    sput-object v0, Lcom/tencent/bugly/crashreport/common/strategy/c;->a:Lcom/tencent/bugly/crashreport/common/strategy/c;

    .line 101
    :cond_14
    sget-object v0, Lcom/tencent/bugly/crashreport/common/strategy/c;->a:Lcom/tencent/bugly/crashreport/common/strategy/c;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v7

    return-object v0

    .line 99
    :catchall_18
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/common/strategy/c;)Lcom/tencent/bugly/proguard/l;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->d:Lcom/tencent/bugly/proguard/l;

    return-object v0
.end method

.method private a(ILjava/lang/String;Z)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 707
    new-instance v0, Lcom/tencent/bugly/crashreport/common/strategy/d;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/common/strategy/d;-><init>()V

    .line 708
    iput p1, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->b:I

    .line 709
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->b:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->B()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->c:Ljava/lang/String;

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->b:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->d:Ljava/lang/String;

    .line 711
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->e:J

    .line 712
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->f:J

    .line 714
    if-eqz p3, :cond_5f

    .line 716
    const-string v1, "to delay record!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 717
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->f:Lcom/tencent/bugly/proguard/t;

    new-instance v2, Lcom/tencent/bugly/crashreport/common/strategy/c$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/tencent/bugly/crashreport/common/strategy/c$2;-><init>(Lcom/tencent/bugly/crashreport/common/strategy/c;ILcom/tencent/bugly/crashreport/common/strategy/d;)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/Runnable;J)Z

    .line 734
    :goto_5e
    return-void

    .line 731
    :cond_5f
    const-string v1, "to record! %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 732
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->d:Lcom/tencent/bugly/proguard/l;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/l;->a(Lcom/tencent/bugly/crashreport/common/strategy/d;)V

    goto :goto_5e
.end method

.method private declared-synchronized a(Ljava/lang/Boolean;)V
    .registers 3

    .prologue
    .line 324
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->h:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 325
    monitor-exit p0

    return-void

    .line 324
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(I)V
    .registers 3

    .prologue
    .line 537
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->j:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 538
    monitor-exit p0

    return-void

    .line 537
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lcom/tencent/bugly/crashreport/common/strategy/b;)V
    .registers 3

    .prologue
    .line 127
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->g:Lcom/tencent/bugly/crashreport/common/strategy/b;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 128
    monitor-exit p0

    return-void

    .line 127
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Lcom/tencent/bugly/crashreport/common/strategy/b;)V
    .registers 3

    .prologue
    .line 199
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b(Lcom/tencent/bugly/crashreport/common/strategy/b;)V

    .line 200
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->d:Lcom/tencent/bugly/proguard/l;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/l;->b()V

    .line 201
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->d:Lcom/tencent/bugly/proguard/l;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/l;->a(Lcom/tencent/bugly/crashreport/common/strategy/b;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 203
    monitor-exit p0

    return-void

    .line 199
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(Lcom/tencent/bugly/crashreport/common/strategy/b;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/bugly/crashreport/common/strategy/b;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/crashreport/common/strategy/d;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v12, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 369
    if-eqz p1, :cond_b

    iget-boolean v1, p1, Lcom/tencent/bugly/crashreport/common/strategy/b;->e:Z

    if-nez v1, :cond_13

    .line 371
    :cond_b
    const-string v1, "userinfo close!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 443
    :cond_12
    :goto_12
    return-object v0

    .line 375
    :cond_13
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->b:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->B()Ljava/lang/String;

    move-result-object v1

    .line 376
    iget-object v4, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->b:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/n;->k()Ljava/lang/String;

    move-result-object v5

    .line 377
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->n()J

    move-result-wide v6

    .line 381
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 383
    iget-boolean v4, p1, Lcom/tencent/bugly/crashreport/common/strategy/b;->e:Z

    if-eqz v4, :cond_12

    .line 386
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->d:Lcom/tencent/bugly/proguard/l;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 388
    if-eqz v4, :cond_63

    .line 392
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v2

    .line 393
    :goto_39
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 395
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/common/strategy/d;

    .line 396
    iget-wide v10, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->f:J

    cmp-long v10, v10, v12

    if-eqz v10, :cond_d1

    .line 399
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 402
    iget-wide v10, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->e:J

    cmp-long v10, v10, v6

    if-gez v10, :cond_58

    .line 403
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 404
    :cond_58
    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->d:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    move v0, v3

    :goto_61
    move v1, v0

    .line 407
    goto :goto_39

    :cond_63
    move v1, v2

    .line 410
    :cond_64
    if-eqz v1, :cond_a2

    .line 413
    invoke-virtual {p0, v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(I)Lcom/tencent/bugly/crashreport/common/strategy/d;

    move-result-object v1

    .line 415
    if-nez v4, :cond_cf

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 418
    :goto_71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    :goto_74
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 438
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->d:Lcom/tencent/bugly/proguard/l;

    invoke-static {v8}, Lcom/tencent/bugly/proguard/l;->f(Ljava/util/List;)V

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "dropOldUI count:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb

    invoke-direct {p0, v4, v1, v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(ILjava/lang/String;Z)V

    const-string v4, "inner record %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v4, v2}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_12

    .line 422
    :cond_a2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 423
    :cond_a6
    :goto_a6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 425
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/common/strategy/d;

    .line 426
    iget-object v9, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->d:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a6

    iget-wide v10, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->f:J

    cmp-long v9, v10, v12

    if-nez v9, :cond_a6

    iget-wide v10, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->e:J

    cmp-long v9, v10, v6

    if-ltz v9, :cond_a6

    .line 429
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 430
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    :cond_cd
    move-object v0, v4

    goto :goto_74

    :cond_cf
    move-object v0, v4

    goto :goto_71

    :cond_d1
    move v0, v1

    goto :goto_61
.end method

.method private declared-synchronized k()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 319
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->h:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized l()I
    .registers 2

    .prologue
    .line 532
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->j:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected final a(I)Lcom/tencent/bugly/crashreport/common/strategy/d;
    .registers 6

    .prologue
    .line 240
    new-instance v0, Lcom/tencent/bugly/crashreport/common/strategy/d;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/common/strategy/d;-><init>()V

    .line 241
    iput p1, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->b:I

    .line 242
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->b:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->B()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->c:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->b:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/n;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->d:Ljava/lang/String;

    .line 244
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->e:J

    .line 245
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/common/strategy/d;->f:J

    .line 246
    return-object v0
.end method

.method protected final a(Lcom/tencent/bugly/crashreport/common/strategy/b;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/bugly/crashreport/common/strategy/b;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/proguard/x;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    if-nez p1, :cond_c

    .line 456
    const-string v0, "have not synced remote!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 457
    const/4 v0, 0x0

    .line 522
    :goto_b
    return-object v0

    .line 460
    :cond_c
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/common/strategy/b;->d:Z

    if-nez v0, :cond_1a

    .line 462
    const-string v0, "crashreport remote closed!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 463
    const/4 v0, 0x0

    goto :goto_b

    .line 466
    :cond_1a
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 467
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->n()J

    move-result-wide v4

    .line 469
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->d:Lcom/tencent/bugly/proguard/l;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/l;->c()Ljava/util/List;

    move-result-object v1

    .line 471
    if-eqz v1, :cond_c4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c4

    .line 473
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 476
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 477
    :cond_3e
    :goto_3e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 479
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/w;

    .line 480
    iget-wide v8, v0, Lcom/tencent/bugly/proguard/w;->b:J

    const-wide/32 v10, 0x240c8400

    sub-long v10, v4, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_5c

    .line 483
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 484
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 488
    :cond_5c
    iget-boolean v8, v0, Lcom/tencent/bugly/proguard/w;->d:Z

    if-eqz v8, :cond_7a

    .line 491
    iget-wide v8, v0, Lcom/tencent/bugly/proguard/w;->b:J

    const-wide/32 v10, 0x5265c00

    sub-long v10, v2, v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_6f

    .line 494
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_3e

    .line 497
    :cond_6f
    iget-boolean v8, v0, Lcom/tencent/bugly/proguard/w;->e:Z

    if-nez v8, :cond_3e

    .line 500
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 501
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 506
    :cond_7a
    iget v8, v0, Lcom/tencent/bugly/proguard/w;->f:I

    int-to-long v8, v8

    const-wide/16 v10, 0x3

    cmp-long v8, v8, v10

    if-ltz v8, :cond_3e

    iget-wide v8, v0, Lcom/tencent/bugly/proguard/w;->b:J

    const-wide/32 v10, 0x5265c00

    sub-long v10, v2, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_3e

    .line 509
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 510
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 514
    :cond_95
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c4

    .line 516
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->d:Lcom/tencent/bugly/proguard/l;

    invoke-static {v6}, Lcom/tencent/bugly/proguard/l;->c(Ljava/util/List;)V

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dropOldCrash count:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-direct {p0, v3, v0, v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(ILjava/lang/String;Z)V

    const-string v2, "inner record %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 521
    :cond_c4
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->d:Lcom/tencent/bugly/proguard/l;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/l;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_b
.end method

.method public final a(J)V
    .registers 6

    .prologue
    .line 270
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->f:Lcom/tencent/bugly/proguard/t;

    new-instance v1, Lcom/tencent/bugly/crashreport/common/strategy/c$a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/tencent/bugly/crashreport/common/strategy/c$a;-><init>(Lcom/tencent/bugly/crashreport/common/strategy/c;IJ)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/Runnable;)Z

    .line 272
    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/R;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 212
    if-nez p1, :cond_5

    .line 231
    :goto_4
    return-void

    .line 215
    :cond_5
    new-instance v3, Lcom/tencent/bugly/crashreport/common/strategy/b;

    invoke-direct {v3}, Lcom/tencent/bugly/crashreport/common/strategy/b;-><init>()V

    .line 216
    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/R;->a:Z

    iput-boolean v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/b;->d:Z

    .line 217
    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/R;->c:Z

    iput-boolean v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/b;->f:Z

    .line 218
    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/R;->b:Z

    iput-boolean v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/b;->e:Z

    .line 219
    iget-object v0, p1, Lcom/tencent/bugly/proguard/R;->d:Ljava/lang/String;

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6f

    move v0, v1

    :goto_25
    if-nez v0, :cond_2b

    .line 220
    iget-object v0, p1, Lcom/tencent/bugly/proguard/R;->d:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/b;->g:Ljava/lang/String;

    .line 221
    :cond_2b
    iget-object v0, p1, Lcom/tencent/bugly/proguard/R;->e:Ljava/lang/String;

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_71

    move v0, v1

    :goto_3a
    if-nez v0, :cond_40

    .line 222
    iget-object v0, p1, Lcom/tencent/bugly/proguard/R;->e:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/b;->h:Ljava/lang/String;

    .line 223
    :cond_40
    iget-object v0, p1, Lcom/tencent/bugly/proguard/R;->f:Lcom/tencent/bugly/proguard/Q;

    if-eqz v0, :cond_5d

    .line 225
    iget-object v0, p1, Lcom/tencent/bugly/proguard/R;->f:Lcom/tencent/bugly/proguard/Q;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/Q;->a:Ljava/lang/String;

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_73

    move v0, v1

    :goto_55
    if-nez v0, :cond_5d

    .line 226
    iget-object v0, p1, Lcom/tencent/bugly/proguard/R;->f:Lcom/tencent/bugly/proguard/Q;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/Q;->a:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/bugly/crashreport/common/strategy/b;->i:Ljava/lang/String;

    .line 229
    :cond_5d
    invoke-direct {p0, v3}, Lcom/tencent/bugly/crashreport/common/strategy/c;->c(Lcom/tencent/bugly/crashreport/common/strategy/b;)V

    .line 230
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, v3, Lcom/tencent/bugly/crashreport/common/strategy/b;->i:Ljava/lang/String;

    aput-object v4, v0, v1

    iget-object v1, v3, Lcom/tencent/bugly/crashreport/common/strategy/b;->a:Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    goto :goto_4

    :cond_6f
    move v0, v2

    .line 219
    goto :goto_25

    :cond_71
    move v0, v2

    .line 221
    goto :goto_3a

    :cond_73
    move v0, v2

    .line 225
    goto :goto_55
.end method

.method public final a(Lcom/tencent/bugly/proguard/x;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 304
    iget v0, p1, Lcom/tencent/bugly/proguard/x;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 315
    :goto_6
    return-void

    .line 306
    :cond_7
    new-instance v0, Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;-><init>()V

    .line 307
    iput v4, v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->b:I

    .line 308
    iget-object v1, p1, Lcom/tencent/bugly/proguard/x;->y:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->c:Ljava/lang/String;

    .line 309
    iget-object v1, p1, Lcom/tencent/bugly/proguard/x;->z:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->d:Ljava/lang/String;

    .line 310
    iget-wide v2, p1, Lcom/tencent/bugly/proguard/x;->r:J

    iput-wide v2, v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->e:J

    .line 313
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->d:Lcom/tencent/bugly/proguard/l;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/l;->b(I)V

    .line 314
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->d:Lcom/tencent/bugly/proguard/l;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/l;->a(Lcom/tencent/bugly/crashreport/common/strategy/a;)V

    goto :goto_6
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 743
    const-string v0, "on db access fail delay record "

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 744
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(ILjava/lang/String;Z)V

    .line 745
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 765
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(ILjava/lang/String;Z)V

    .line 766
    const-string v0, "inner record %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 768
    return-void
.end method

.method protected final b(J)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 660
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->c()Lcom/tencent/bugly/crashreport/common/strategy/b;

    move-result-object v0

    .line 662
    if-nez v0, :cond_13

    .line 664
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->d:Lcom/tencent/bugly/proguard/l;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/l;->a()Lcom/tencent/bugly/crashreport/common/strategy/b;

    move-result-object v0

    .line 666
    if-eqz v0, :cond_13

    .line 667
    invoke-direct {p0, v0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b(Lcom/tencent/bugly/crashreport/common/strategy/b;)V

    .line 670
    :cond_13
    if-eqz v0, :cond_38

    .line 673
    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/b;->e:Z

    if-eqz v0, :cond_22

    .line 674
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->d:Lcom/tencent/bugly/proguard/l;

    invoke-virtual {p0, v3}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(I)Lcom/tencent/bugly/crashreport/common/strategy/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Lcom/tencent/bugly/crashreport/common/strategy/d;)V

    .line 676
    :cond_22
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 677
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->f:Lcom/tencent/bugly/proguard/t;

    new-instance v1, Lcom/tencent/bugly/crashreport/common/strategy/c$a;

    invoke-direct {v1, p0, v2}, Lcom/tencent/bugly/crashreport/common/strategy/c$a;-><init>(Lcom/tencent/bugly/crashreport/common/strategy/c;I)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/Runnable;J)Z

    .line 684
    :goto_37
    return-void

    .line 681
    :cond_38
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 682
    new-instance v0, Lcom/tencent/bugly/crashreport/common/strategy/c$a;

    invoke-direct {v0, p0, v2}, Lcom/tencent/bugly/crashreport/common/strategy/c$a;-><init>(Lcom/tencent/bugly/crashreport/common/strategy/c;I)V

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/c$a;->run()V

    goto :goto_37
.end method

.method public final b(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 754
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1, v2}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(ILjava/lang/String;Z)V

    .line 755
    const-string v0, "inner record %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 756
    return-void
.end method

.method public final declared-synchronized b()Z
    .registers 2

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->g:Lcom/tencent/bugly/crashreport/common/strategy/b;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized c()Lcom/tencent/bugly/crashreport/common/strategy/b;
    .registers 2

    .prologue
    .line 122
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->g:Lcom/tencent/bugly/crashreport/common/strategy/b;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Lcom/tencent/bugly/crashreport/common/strategy/b;
    .registers 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->c()Lcom/tencent/bugly/crashreport/common/strategy/b;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_7

    .line 142
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->c:Lcom/tencent/bugly/crashreport/common/strategy/b;

    goto :goto_6
.end method

.method public final e()V
    .registers 6

    .prologue
    .line 262
    const-wide/16 v0, 0x2710

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->f:Lcom/tencent/bugly/proguard/t;

    new-instance v3, Lcom/tencent/bugly/crashreport/common/strategy/c$a;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4, v0, v1}, Lcom/tencent/bugly/crashreport/common/strategy/c$a;-><init>(Lcom/tencent/bugly/crashreport/common/strategy/c;IJ)V

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->f:Lcom/tencent/bugly/proguard/t;

    new-instance v1, Lcom/tencent/bugly/crashreport/common/strategy/c$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/crashreport/common/strategy/c$1;-><init>(Lcom/tencent/bugly/crashreport/common/strategy/c;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/Runnable;)Z

    .line 295
    return-void
.end method

.method public final g()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 334
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->k()Ljava/lang/Boolean;

    move-result-object v2

    .line 335
    if-eqz v2, :cond_d

    .line 336
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 358
    :goto_c
    return v0

    .line 338
    :cond_d
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->b:Lcom/tencent/bugly/proguard/n;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/n;->B()Ljava/lang/String;

    move-result-object v2

    .line 339
    iget-object v3, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->d:Lcom/tencent/bugly/proguard/l;

    invoke-virtual {v3, v1}, Lcom/tencent/bugly/proguard/l;->a(I)Ljava/util/List;

    move-result-object v3

    .line 340
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 341
    if-eqz v3, :cond_56

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_56

    .line 343
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 345
    iget-object v5, v0, Lcom/tencent/bugly/crashreport/common/strategy/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 347
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Ljava/lang/Boolean;)V

    .line 348
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 352
    :cond_49
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_54

    .line 353
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->d:Lcom/tencent/bugly/proguard/l;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/l;->g(Ljava/util/List;)V

    :cond_54
    move v0, v1

    .line 354
    goto :goto_c

    .line 357
    :cond_56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Ljava/lang/Boolean;)V

    goto :goto_c
.end method

.method protected final h()V
    .registers 13

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 545
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->b(I)V

    .line 546
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->l()I

    move-result v3

    .line 547
    if-ne v3, v1, :cond_59

    move v0, v1

    .line 548
    :goto_13
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 551
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->g()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 553
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 557
    :cond_27
    iget-object v3, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->d:Lcom/tencent/bugly/proguard/l;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/l;->a()Lcom/tencent/bugly/crashreport/common/strategy/b;

    move-result-object v3

    .line 558
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->c()Lcom/tencent/bugly/crashreport/common/strategy/b;

    move-result-object v5

    .line 560
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->n()J

    move-result-wide v6

    .line 562
    if-eqz v3, :cond_45

    if-eqz v5, :cond_41

    iget-wide v8, v5, Lcom/tencent/bugly/crashreport/common/strategy/b;->c:J

    iget-wide v10, v3, Lcom/tencent/bugly/crashreport/common/strategy/b;->c:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_45

    .line 565
    :cond_41
    invoke-direct {p0, v3}, Lcom/tencent/bugly/crashreport/common/strategy/c;->c(Lcom/tencent/bugly/crashreport/common/strategy/b;)V

    move-object v5, v3

    .line 575
    :cond_45
    if-nez v5, :cond_5b

    .line 578
    invoke-virtual {p0, v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(I)Lcom/tencent/bugly/crashreport/common/strategy/d;

    move-result-object v1

    .line 580
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 581
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->e:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v1, v2, p0, v0}, Lcom/tencent/bugly/proguard/r;->a(Ljava/util/List;Lcom/tencent/bugly/crashreport/common/strategy/c;I)V

    .line 631
    :goto_58
    return-void

    :cond_59
    move v0, v2

    .line 547
    goto :goto_13

    .line 589
    :cond_5b
    iget-wide v8, v5, Lcom/tencent/bugly/crashreport/common/strategy/b;->c:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x240c8400

    cmp-long v3, v6, v8

    if-ltz v3, :cond_f4

    .line 591
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "step req by ovtime && "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v5, Lcom/tencent/bugly/crashreport/common/strategy/b;->f:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 592
    iget-boolean v3, v5, Lcom/tencent/bugly/crashreport/common/strategy/b;->f:Z

    .line 596
    :goto_7a
    invoke-direct {p0, v5}, Lcom/tencent/bugly/crashreport/common/strategy/c;->d(Lcom/tencent/bugly/crashreport/common/strategy/b;)Ljava/util/List;

    move-result-object v6

    .line 599
    invoke-virtual {p0, v5}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Lcom/tencent/bugly/crashreport/common/strategy/b;)Ljava/util/List;

    move-result-object v5

    .line 601
    if-eqz v3, :cond_cb

    if-eqz v6, :cond_cb

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_cb

    .line 604
    iget-object v7, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->e:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v7, v6, p0, v0}, Lcom/tencent/bugly/proguard/r;->a(Ljava/util/List;Lcom/tencent/bugly/crashreport/common/strategy/c;I)V

    .line 618
    :cond_91
    :goto_91
    if-eqz v5, :cond_9e

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9e

    .line 620
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->e:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v0, v5, p0}, Lcom/tencent/bugly/proguard/r;->a(Ljava/util/List;Lcom/tencent/bugly/crashreport/common/strategy/c;)V

    .line 623
    :cond_9e
    new-array v2, v2, [Ljava/lang/Object;

    if-eqz v6, :cond_e1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    :goto_a6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    if-eqz v5, :cond_e3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    :goto_b2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Z

    .line 627
    if-eqz v3, :cond_e5

    .line 628
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->f:Lcom/tencent/bugly/proguard/t;

    new-instance v1, Lcom/tencent/bugly/crashreport/common/strategy/c$a;

    invoke-direct {v1, p0, v4}, Lcom/tencent/bugly/crashreport/common/strategy/c$a;-><init>(Lcom/tencent/bugly/crashreport/common/strategy/c;I)V

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/Runnable;J)Z

    goto :goto_58

    .line 606
    :cond_cb
    if-eqz v3, :cond_d3

    .line 609
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->e:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/crashreport/common/strategy/c;)V

    goto :goto_91

    .line 611
    :cond_d3
    if-eqz v6, :cond_91

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_91

    .line 614
    iget-object v7, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->e:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v7, v6, p0, v0}, Lcom/tencent/bugly/proguard/r;->b(Ljava/util/List;Lcom/tencent/bugly/crashreport/common/strategy/c;I)V

    goto :goto_91

    :cond_e1
    move v0, v4

    .line 623
    goto :goto_a6

    :cond_e3
    move v0, v4

    goto :goto_b2

    .line 630
    :cond_e5
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->f:Lcom/tencent/bugly/proguard/t;

    new-instance v1, Lcom/tencent/bugly/crashreport/common/strategy/c$a;

    invoke-direct {v1, p0, v4}, Lcom/tencent/bugly/crashreport/common/strategy/c$a;-><init>(Lcom/tencent/bugly/crashreport/common/strategy/c;I)V

    const-wide/32 v2, 0x1499700

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/Runnable;J)Z

    goto/16 :goto_58

    :cond_f4
    move v3, v4

    goto :goto_7a
.end method

.method protected final declared-synchronized i()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x1388

    .line 638
    monitor-enter p0

    :try_start_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 639
    iget-wide v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->i:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_24

    .line 642
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->f:Lcom/tencent/bugly/proguard/t;

    new-instance v3, Lcom/tencent/bugly/crashreport/common/strategy/c$a;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/tencent/bugly/crashreport/common/strategy/c$a;-><init>(Lcom/tencent/bugly/crashreport/common/strategy/c;I)V

    iget-wide v4, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->i:J

    sub-long v0, v4, v0

    add-long/2addr v0, v6

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/Runnable;J)Z
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_49

    .line 651
    :goto_22
    monitor-exit p0

    return-void

    .line 647
    :cond_24
    :try_start_24
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->n()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->i:J

    .line 648
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->d:Lcom/tencent/bugly/proguard/l;

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(I)Lcom/tencent/bugly/crashreport/common/strategy/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/proguard/l;->a(Lcom/tencent/bugly/crashreport/common/strategy/d;)V

    .line 649
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->f:Lcom/tencent/bugly/proguard/t;

    new-instance v3, Lcom/tencent/bugly/crashreport/common/strategy/c$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/tencent/bugly/crashreport/common/strategy/c$a;-><init>(Lcom/tencent/bugly/crashreport/common/strategy/c;I)V

    iget-wide v4, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->i:J

    sub-long v0, v4, v0

    add-long/2addr v0, v6

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/bugly/proguard/t;->a(Ljava/lang/Runnable;J)Z
    :try_end_48
    .catchall {:try_start_24 .. :try_end_48} :catchall_49

    goto :goto_22

    .line 638
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final j()V
    .registers 3

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/common/strategy/c;->c()Lcom/tencent/bugly/crashreport/common/strategy/b;

    move-result-object v0

    .line 693
    if-eqz v0, :cond_14

    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/b;->e:Z

    if-eqz v0, :cond_14

    .line 695
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/strategy/c;->d:Lcom/tencent/bugly/proguard/l;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(I)Lcom/tencent/bugly/crashreport/common/strategy/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Lcom/tencent/bugly/crashreport/common/strategy/d;)V

    .line 697
    :cond_14
    return-void
.end method