.class public Lcom/tencent/stat/StatServiceImpl;
.super Ljava/lang/Object;


# static fields
.field static volatile a:I

.field static volatile b:J

.field static volatile c:J

.field private static d:Lcom/tencent/stat/common/e;

.field private static volatile e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/tencent/stat/a/c;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile h:J

.field private static volatile i:J

.field private static volatile j:J

.field private static k:Ljava/lang/String;

.field private static volatile l:I

.field private static volatile m:Ljava/lang/String;

.field private static volatile n:Ljava/lang/String;

.field private static o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static q:Lcom/tencent/stat/common/StatLogger;

.field private static r:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static volatile s:Z

.field private static t:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/stat/StatServiceImpl;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/stat/StatServiceImpl;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/tencent/stat/StatServiceImpl;->g:Ljava/util/Map;

    sput-wide v2, Lcom/tencent/stat/StatServiceImpl;->h:J

    sput-wide v2, Lcom/tencent/stat/StatServiceImpl;->i:J

    sput-wide v2, Lcom/tencent/stat/StatServiceImpl;->j:J

    const-string v0, ""

    sput-object v0, Lcom/tencent/stat/StatServiceImpl;->k:Ljava/lang/String;

    sput v4, Lcom/tencent/stat/StatServiceImpl;->l:I

    const-string v0, ""

    sput-object v0, Lcom/tencent/stat/StatServiceImpl;->m:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/stat/StatServiceImpl;->n:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/stat/StatServiceImpl;->o:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/stat/StatServiceImpl;->p:Ljava/util/Map;

    invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    sput-object v5, Lcom/tencent/stat/StatServiceImpl;->r:Ljava/lang/Thread$UncaughtExceptionHandler;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/stat/StatServiceImpl;->s:Z

    sput v4, Lcom/tencent/stat/StatServiceImpl;->a:I

    sput-wide v2, Lcom/tencent/stat/StatServiceImpl;->b:J

    sput-object v5, Lcom/tencent/stat/StatServiceImpl;->t:Landroid/content/Context;

    sput-wide v2, Lcom/tencent/stat/StatServiceImpl;->c:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;ZLcom/tencent/stat/StatSpecifyReportedInfo;)I
    .registers 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz p1, :cond_bf

    sget-wide v6, Lcom/tencent/stat/StatServiceImpl;->i:J

    sub-long v6, v4, v6

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getSessionTimoutMillis()I

    move-result v0

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_bf

    move v0, v1

    :goto_16
    sput-wide v4, Lcom/tencent/stat/StatServiceImpl;->i:J

    sget-wide v6, Lcom/tencent/stat/StatServiceImpl;->j:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_26

    invoke-static {}, Lcom/tencent/stat/common/k;->c()J

    move-result-wide v6

    sput-wide v6, Lcom/tencent/stat/StatServiceImpl;->j:J

    :cond_26
    sget-wide v6, Lcom/tencent/stat/StatServiceImpl;->j:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_57

    invoke-static {}, Lcom/tencent/stat/common/k;->c()J

    move-result-wide v4

    sput-wide v4, Lcom/tencent/stat/StatServiceImpl;->j:J

    invoke-static {p0}, Lcom/tencent/stat/au;->a(Landroid/content/Context;)Lcom/tencent/stat/au;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/stat/au;->b(Landroid/content/Context;)Lcom/tencent/stat/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/stat/common/a;->d()I

    move-result v0

    if-eq v0, v1, :cond_4b

    invoke-static {p0}, Lcom/tencent/stat/au;->a(Landroid/content/Context;)Lcom/tencent/stat/au;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/stat/au;->b(Landroid/content/Context;)Lcom/tencent/stat/common/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/a;->a(I)V

    :cond_4b
    invoke-static {v2}, Lcom/tencent/stat/StatConfig;->b(I)V

    sput v2, Lcom/tencent/stat/StatServiceImpl;->a:I

    invoke-static {v2}, Lcom/tencent/stat/common/k;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/StatServiceImpl;->k:Ljava/lang/String;

    move v0, v1

    :cond_57
    sget-object v3, Lcom/tencent/stat/StatServiceImpl;->k:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/stat/common/k;->a(Lcom/tencent/stat/StatSpecifyReportedInfo;)Z

    move-result v4

    if-eqz v4, :cond_76

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/stat/StatSpecifyReportedInfo;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/stat/StatServiceImpl;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_76
    sget-object v4, Lcom/tencent/stat/StatServiceImpl;->p:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bd

    :goto_7e
    if-eqz v1, :cond_a2

    invoke-static {p2}, Lcom/tencent/stat/common/k;->a(Lcom/tencent/stat/StatSpecifyReportedInfo;)Z

    move-result v0

    if-nez v0, :cond_b9

    invoke-static {}, Lcom/tencent/stat/StatConfig;->c()I

    move-result v0

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxDaySessionNumbers()I

    move-result v1

    if-ge v0, v1, :cond_b1

    invoke-static {p0}, Lcom/tencent/stat/common/k;->x(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/stat/StatServiceImpl;->a(Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    :goto_97
    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->p:Ljava/util/Map;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a2
    sget-boolean v0, Lcom/tencent/stat/StatServiceImpl;->s:Z

    if-eqz v0, :cond_ae

    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->testSpeed(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->d(Landroid/content/Context;)V

    sput-boolean v2, Lcom/tencent/stat/StatServiceImpl;->s:Z

    :cond_ae
    sget v0, Lcom/tencent/stat/StatServiceImpl;->l:I

    return v0

    :cond_b1
    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "Exceed StatConfig.getMaxDaySessionNumbers()."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_97

    :cond_b9
    invoke-static {p0, p2}, Lcom/tencent/stat/StatServiceImpl;->a(Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    goto :goto_97

    :cond_bd
    move v1, v0

    goto :goto_7e

    :cond_bf
    move v0, v2

    goto/16 :goto_16
.end method

.method static synthetic a(J)J
    .registers 2

    sput-wide p0, Lcom/tencent/stat/StatServiceImpl;->h:J

    return-wide p0
.end method

.method static synthetic a(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    sput-object p0, Lcom/tencent/stat/StatServiceImpl;->r:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method static declared-synchronized a(Landroid/content/Context;)V
    .registers 7

    const-class v1, Lcom/tencent/stat/StatServiceImpl;

    monitor-enter v1

    if-nez p0, :cond_7

    :cond_5
    :goto_5
    monitor-exit v1

    return-void

    :cond_7
    :try_start_7
    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    if-nez v0, :cond_5

    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/StatServiceImpl;->t:Landroid/content/Context;

    new-instance v2, Lcom/tencent/stat/common/e;

    invoke-direct {v2}, Lcom/tencent/stat/common/e;-><init>()V

    sput-object v2, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tencent/stat/common/k;->a(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/stat/StatServiceImpl;->k:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/tencent/stat/StatConfig;->i:J

    add-long/2addr v2, v4

    sput-wide v2, Lcom/tencent/stat/StatServiceImpl;->h:J

    sget-object v2, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v3, Lcom/tencent/stat/j;

    invoke-direct {v3, v0}, Lcom/tencent/stat/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_39

    goto :goto_5

    :catchall_39
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/tencent/stat/StatAccount;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/tencent/stat/StatServiceImpl;->b(Landroid/content/Context;Lcom/tencent/stat/StatAccount;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 6

    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "start new session."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_13
    if-eqz p1, :cond_19

    sget v0, Lcom/tencent/stat/StatServiceImpl;->l:I

    if-nez v0, :cond_1f

    :cond_19
    invoke-static {}, Lcom/tencent/stat/common/k;->a()I

    move-result v0

    sput v0, Lcom/tencent/stat/StatServiceImpl;->l:I

    :cond_1f
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/stat/StatConfig;->a(I)V

    invoke-static {}, Lcom/tencent/stat/StatConfig;->b()V

    new-instance v0, Lcom/tencent/stat/aq;

    new-instance v1, Lcom/tencent/stat/a/l;

    sget v2, Lcom/tencent/stat/StatServiceImpl;->l:I

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/tencent/stat/a/l;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    invoke-direct {v0, v1}, Lcom/tencent/stat/aq;-><init>(Lcom/tencent/stat/a/e;)V

    invoke-virtual {v0}, Lcom/tencent/stat/aq;->a()V

    :cond_39
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 5

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context of StatService.reportSdkSelfException() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v2, Lcom/tencent/stat/o;

    invoke-direct {v2, v0, p1}, Lcom/tencent/stat/o;-><init>(Landroid/content/Context;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method static a()Z
    .registers 2

    sget v0, Lcom/tencent/stat/StatServiceImpl;->a:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/stat/StatServiceImpl;->b:J

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static a(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/tencent/stat/StatServiceImpl;->m:Ljava/lang/String;

    return-object p0
.end method

.method static b()Lorg/json/JSONObject;
    .registers 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/tencent/stat/StatConfig;->b:Lcom/tencent/stat/f;

    iget v2, v2, Lcom/tencent/stat/f;->d:I

    if-eqz v2, :cond_19

    const-string v2, "v"

    sget-object v3, Lcom/tencent/stat/StatConfig;->b:Lcom/tencent/stat/f;

    iget v3, v3, Lcom/tencent/stat/f;->d:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_19
    sget-object v2, Lcom/tencent/stat/StatConfig;->b:Lcom/tencent/stat/f;

    iget v2, v2, Lcom/tencent/stat/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/tencent/stat/StatConfig;->a:Lcom/tencent/stat/f;

    iget v2, v2, Lcom/tencent/stat/f;->d:I

    if-eqz v2, :cond_38

    const-string v2, "v"

    sget-object v3, Lcom/tencent/stat/StatConfig;->a:Lcom/tencent/stat/f;

    iget v3, v3, Lcom/tencent/stat/f;->d:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_38
    sget-object v2, Lcom/tencent/stat/StatConfig;->a:Lcom/tencent/stat/f;

    iget v2, v2, Lcom/tencent/stat/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_43} :catch_44

    :goto_43
    return-object v1

    :catch_44
    move-exception v0

    sget-object v2, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_43
.end method

.method private static b(Landroid/content/Context;Lcom/tencent/stat/StatAccount;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/tencent/stat/a/a;

    const/4 v1, 0x0

    invoke-static {p0, v1, p2}, Lcom/tencent/stat/StatServiceImpl;->a(Landroid/content/Context;ZLcom/tencent/stat/StatSpecifyReportedInfo;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/tencent/stat/a/a;-><init>(Landroid/content/Context;ILcom/tencent/stat/StatAccount;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    new-instance v1, Lcom/tencent/stat/aq;

    invoke-direct {v1, v0}, Lcom/tencent/stat/aq;-><init>(Lcom/tencent/stat/a/e;)V

    invoke-virtual {v1}, Lcom/tencent/stat/aq;->a()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    sget-object v1, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    invoke-static {p0, v0}, Lcom/tencent/stat/StatServiceImpl;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method static b(Landroid/content/Context;)Z
    .registers 11

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/stat/StatConfig;->c:Ljava/lang/String;

    invoke-static {p0, v0, v8, v9}, Lcom/tencent/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "2.0.0"

    invoke-static {v0}, Lcom/tencent/stat/common/k;->b(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v0, 0x1

    cmp-long v6, v4, v2

    if-gtz v6, :cond_37

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MTA is disable for current version:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",wakeup version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    move v0, v1

    :cond_37
    sget-object v2, Lcom/tencent/stat/StatConfig;->d:Ljava/lang/String;

    invoke-static {p0, v2, v8, v9}, Lcom/tencent/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_6f

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MTA is disable for current time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",wakeup time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_6b
    invoke-static {v1}, Lcom/tencent/stat/StatConfig;->setEnableStatService(Z)V

    return v1

    :cond_6f
    move v1, v0

    goto :goto_6b
.end method

.method static c(Landroid/content/Context;)Lcom/tencent/stat/common/e;
    .registers 4

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    if-nez v0, :cond_f

    const-class v1, Lcom/tencent/stat/StatServiceImpl;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_1d

    if-nez v0, :cond_e

    :try_start_b
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->a(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_12
    .catchall {:try_start_b .. :try_end_e} :catchall_1d

    :cond_e
    :goto_e
    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_1d

    :cond_f
    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    return-object v0

    :catch_12
    move-exception v0

    :try_start_13
    sget-object v2, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/stat/StatConfig;->setEnableStatService(Z)V

    goto :goto_e

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/tencent/stat/StatServiceImpl;->n:Ljava/lang/String;

    return-object p0
.end method

.method static c()V
    .registers 2

    const/4 v0, 0x0

    sput v0, Lcom/tencent/stat/StatServiceImpl;->a:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/stat/StatServiceImpl;->b:J

    return-void
.end method

.method public static commitEvents(Landroid/content/Context;I)V
    .registers 5

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitEvents, maxNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_25
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_33

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context of StatService.commitEvents() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_33
    const/4 v1, -0x1

    if-lt p1, v1, :cond_38

    if-nez p1, :cond_40

    :cond_38
    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The maxNumber of StatService.commitEvents() should be -1 or bigger than 0."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_40
    sget-object v1, Lcom/tencent/stat/StatServiceImpl;->t:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/stat/a;->a(Landroid/content/Context;)Lcom/tencent/stat/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/stat/a;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v2, Lcom/tencent/stat/ac;

    invoke-direct {v2, v0, p1}, Lcom/tencent/stat/ac;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method static d()V
    .registers 2

    sget v0, Lcom/tencent/stat/StatServiceImpl;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/stat/StatServiceImpl;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/stat/StatServiceImpl;->b:J

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->flushDataToDB(Landroid/content/Context;)V

    return-void
.end method

.method static d(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v1, Lcom/tencent/stat/q;

    invoke-direct {v1, p0}, Lcom/tencent/stat/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method static synthetic e()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->t:Landroid/content/Context;

    return-object v0
.end method

.method static e(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context of StatService.sendNetworkDetector() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    :try_start_15
    new-instance v1, Lcom/tencent/stat/a/i;

    invoke-direct {v1, v0}, Lcom/tencent/stat/a/i;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/tencent/stat/g;->b(Landroid/content/Context;)Lcom/tencent/stat/g;

    move-result-object v0

    new-instance v2, Lcom/tencent/stat/s;

    invoke-direct {v2}, Lcom/tencent/stat/s;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/stat/g;->a(Lcom/tencent/stat/a/e;Lcom/tencent/stat/StatDispatchCallback;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_26} :catch_27

    goto :goto_6

    :catch_27
    move-exception v0

    sget-object v1, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method static synthetic f()Lcom/tencent/stat/common/StatLogger;
    .registers 1

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    return-object v0
.end method

.method static f(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v2, 0xea60

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getSendPeriodMinutes()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    sput-wide v0, Lcom/tencent/stat/StatServiceImpl;->c:J

    const-string v0, "last_period_ts"

    sget-wide v2, Lcom/tencent/stat/StatServiceImpl;->c:J

    invoke-static {p0, v0, v2, v3}, Lcom/tencent/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/tencent/stat/StatServiceImpl;->commitEvents(Landroid/content/Context;I)V

    return-void
.end method

.method public static flushDataToDB(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget v0, Lcom/tencent/stat/StatConfig;->m:I

    if-lez v0, :cond_6

    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context of StatService.testSpeed() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_19
    invoke-static {v0}, Lcom/tencent/stat/au;->a(Landroid/content/Context;)Lcom/tencent/stat/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/stat/au;->c()V

    goto :goto_6
.end method

.method static synthetic g()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->r:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static getCommonKeyValueForKVEvent(Ljava/lang/String;)Ljava/util/Properties;
    .registers 2

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    return-object v0
.end method

.method public static getContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    if-eqz p0, :cond_3

    :goto_2
    return-object p0

    :cond_3
    sget-object p0, Lcom/tencent/stat/StatServiceImpl;->t:Landroid/content/Context;

    goto :goto_2
.end method

.method static synthetic h()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->o:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic l()J
    .registers 2

    sget-wide v0, Lcom/tencent/stat/StatServiceImpl;->h:J

    return-wide v0
.end method

.method static synthetic m()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->g:Ljava/util/Map;

    return-object v0
.end method

.method public static onLowMemory(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v1, Lcom/tencent/stat/m;

    invoke-direct {v1, p0}, Lcom/tencent/stat/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static onPause(Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 4

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v1, Lcom/tencent/stat/k;

    invoke-direct {v1, p0, p1}, Lcom/tencent/stat/k;-><init>(Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static onResume(Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 4

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v1, Lcom/tencent/stat/ai;

    invoke-direct {v1, p0, p1}, Lcom/tencent/stat/ai;-><init>(Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static onStop(Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 5

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v2, Lcom/tencent/stat/l;

    invoke-direct {v2, v0}, Lcom/tencent/stat/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static reportAccount(Landroid/content/Context;Lcom/tencent/stat/StatAccount;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 6

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "context is null in reportAccount."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v2, Lcom/tencent/stat/ak;

    invoke-direct {v2, p1, v0, p2}, Lcom/tencent/stat/ak;-><init>(Lcom/tencent/stat/StatAccount;Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v1, v2}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static reportAppMonitorStat(Landroid/content/Context;Lcom/tencent/stat/StatAppMonitor;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 7

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context of StatService.reportAppMonitorStat() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    if-nez p1, :cond_1f

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The StatAppMonitor of StatService.reportAppMonitorStat() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_1f
    invoke-virtual {p1}, Lcom/tencent/stat/StatAppMonitor;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The interfaceName of StatAppMonitor on StatService.reportAppMonitorStat() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_2d
    invoke-virtual {p1}, Lcom/tencent/stat/StatAppMonitor;->clone()Lcom/tencent/stat/StatAppMonitor;

    move-result-object v1

    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v3, Lcom/tencent/stat/z;

    invoke-direct {v3, v0, p2, v1}, Lcom/tencent/stat/z;-><init>(Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;Lcom/tencent/stat/StatAppMonitor;)V

    invoke-virtual {v2, v3}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 6

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context of StatService.reportError() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v2, Lcom/tencent/stat/n;

    invoke-direct {v2, p1, v0, p2}, Lcom/tencent/stat/n;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v1, v2}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static reportException(Landroid/content/Context;Ljava/lang/Throwable;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 6

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context of StatService.reportException() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v2, Lcom/tencent/stat/p;

    invoke-direct {v2, p1, v0, p2}, Lcom/tencent/stat/p;-><init>(Ljava/lang/Throwable;Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v1, v2}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static reportGameUser(Landroid/content/Context;Lcom/tencent/stat/StatGameUser;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 6

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context of StatService.reportGameUser() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v2, Lcom/tencent/stat/al;

    invoke-direct {v2, p1, v0, p2}, Lcom/tencent/stat/al;-><init>(Lcom/tencent/stat/StatGameUser;Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v1, v2}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static reportQQ(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 6

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "context is null in reportQQ()"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v2, Lcom/tencent/stat/aj;

    invoke-direct {v2, p1, v0, p2}, Lcom/tencent/stat/aj;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v1, v2}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static setCommonKeyValueForKVEvent(Ljava/lang/String;Ljava/util/Properties;)V
    .registers 4

    invoke-static {p0}, Lcom/tencent/stat/common/k;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/util/Properties;->size()I

    move-result v0

    if-lez v0, :cond_1a

    sget-object v1, Lcom/tencent/stat/StatServiceImpl;->f:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_19
    return-void

    :cond_1a
    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_20
    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "event_id or commonProp for setCommonKeyValueForKVEvent is invalid."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_19
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/StatServiceImpl;->t:Landroid/content/Context;

    :cond_8
    return-void
.end method

.method public static setEnvAttributes(Landroid/content/Context;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x200

    if-le v0, v1, :cond_12

    :cond_a
    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The map in setEnvAttributes can\'t be null or its size can\'t exceed 512."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_11
    return-void

    :cond_12
    :try_start_12
    invoke-static {p0, p1}, Lcom/tencent/stat/common/b;->a(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_11

    :catch_16
    move-exception v0

    sget-object v1, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public static startNewSession(Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 5

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context of StatService.startNewSession() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v2, Lcom/tencent/stat/ah;

    invoke-direct {v2, v0, p1}, Lcom/tencent/stat/ah;-><init>(Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v1, v2}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static startStatService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/stat/StatSpecifyReportedInfo;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/stat/MtaSDkException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v2, "MTA StatService is disable."

    invoke-virtual {v1, v2}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_e
    return v0

    :cond_f
    const-string v1, "2.0.0"

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_39

    sget-object v2, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTA SDK version, current: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,required: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_39
    const-string v2, ""

    if-eqz p0, :cond_3f

    if-nez p2, :cond_52

    :cond_3f
    const-string v1, "Context or mtaSdkVersion in StatService.startStatService() is null, please check it!"

    sget-object v2, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/stat/StatConfig;->setEnableStatService(Z)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4a} :catch_4b

    goto :goto_e

    :catch_4b
    move-exception v1

    sget-object v2, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_52
    :try_start_52
    invoke-static {v1}, Lcom/tencent/stat/common/k;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/tencent/stat/common/k;->b(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_99

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTA SDK version conflicted, current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". please delete the current SDK and download the latest one. official website: http://mta.qq.com/ or http://mta.oa.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/stat/StatConfig;->setEnableStatService(Z)V

    goto/16 :goto_e

    :cond_99
    invoke-static {p0}, Lcom/tencent/stat/StatConfig;->getInstallChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_aa

    :cond_a5
    const-string v1, "-"

    invoke-static {v1}, Lcom/tencent/stat/StatConfig;->setInstallChannel(Ljava/lang/String;)V

    :cond_aa
    if-eqz p1, :cond_af

    invoke-static {p0, p1}, Lcom/tencent/stat/StatConfig;->setAppKey(Landroid/content/Context;Ljava/lang/String;)V

    :cond_af
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v1

    if-eqz v1, :cond_bf

    sget-object v1, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v2, Lcom/tencent/stat/am;

    invoke-direct {v2, p0, p3}, Lcom/tencent/stat/am;-><init>(Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v1, v2}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_bf} :catch_4b

    :cond_bf
    const/4 v0, 0x1

    goto/16 :goto_e
.end method

.method public static stopSession()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/stat/StatServiceImpl;->i:J

    return-void
.end method

.method public static testSpeed(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context of StatService.testSpeed() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v2, Lcom/tencent/stat/ad;

    invoke-direct {v2, v0}, Lcom/tencent/stat/ad;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static testSpeed(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/tencent/stat/StatSpecifyReportedInfo;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context of StatService.testSpeed() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    if-eqz p1, :cond_1d

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_25

    :cond_1d
    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The domainMap of StatService.testSpeed() can not be null or empty!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_25
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v3, Lcom/tencent/stat/ae;

    invoke-direct {v3, v0, v1, p2}, Lcom/tencent/stat/ae;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v2, v3}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static trackBeginPage(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 7

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1d

    :cond_15
    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context or pageName of StatService.trackBeginPage() can not be null or empty!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_1d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v3, Lcom/tencent/stat/u;

    invoke-direct {v3, v1, v0, p2}, Lcom/tencent/stat/u;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v2, v3}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static varargs trackCustomBeginEvent(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/stat/StatSpecifyReportedInfo;[Ljava/lang/String;)V
    .registers 8

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context of StatService.trackCustomBeginEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    new-instance v1, Lcom/tencent/stat/a/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p3, v2}, Lcom/tencent/stat/a/c;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v3, Lcom/tencent/stat/v;

    invoke-direct {v3, p1, v1, v0}, Lcom/tencent/stat/v;-><init>(Ljava/lang/String;Lcom/tencent/stat/a/c;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static trackCustomBeginKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 8

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context of StatService.trackCustomBeginEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    new-instance v1, Lcom/tencent/stat/a/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/tencent/stat/a/c;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v3, Lcom/tencent/stat/x;

    invoke-direct {v3, p1, v1, v0}, Lcom/tencent/stat/x;-><init>(Ljava/lang/String;Lcom/tencent/stat/a/c;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static varargs trackCustomEndEvent(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/stat/StatSpecifyReportedInfo;[Ljava/lang/String;)V
    .registers 8

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context of StatService.trackCustomEndEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    new-instance v1, Lcom/tencent/stat/a/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p3, v2}, Lcom/tencent/stat/a/c;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v3, Lcom/tencent/stat/w;

    invoke-direct {v3, p1, v1, v0, p2}, Lcom/tencent/stat/w;-><init>(Ljava/lang/String;Lcom/tencent/stat/a/c;Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v2, v3}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static trackCustomEndKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 8

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context of StatService.trackCustomEndEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    new-instance v1, Lcom/tencent/stat/a/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/tencent/stat/a/c;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v3, Lcom/tencent/stat/y;

    invoke-direct {v3, p1, v1, v0, p3}, Lcom/tencent/stat/y;-><init>(Ljava/lang/String;Lcom/tencent/stat/a/c;Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v2, v3}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static varargs trackCustomEvent(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/stat/StatSpecifyReportedInfo;[Ljava/lang/String;)V
    .registers 8

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context of StatService.trackCustomEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    invoke-static {p1}, Lcom/tencent/stat/StatServiceImpl;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The event_id of StatService.trackCustomEvent() can not be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_23
    new-instance v1, Lcom/tencent/stat/a/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p3, v2}, Lcom/tencent/stat/a/c;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v3, Lcom/tencent/stat/r;

    invoke-direct {v3, v0, p2, v1}, Lcom/tencent/stat/r;-><init>(Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;Lcom/tencent/stat/a/c;)V

    invoke-virtual {v2, v3}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 8

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context of StatService.trackCustomEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    invoke-static {p1}, Lcom/tencent/stat/StatServiceImpl;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The event_id of StatService.trackCustomEvent() can not be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_23
    new-instance v1, Lcom/tencent/stat/a/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/tencent/stat/a/c;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v3, Lcom/tencent/stat/t;

    invoke-direct {v3, v0, p3, v1}, Lcom/tencent/stat/t;-><init>(Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;Lcom/tencent/stat/a/c;)V

    invoke-virtual {v2, v3}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static trackCustomKVTimeIntervalEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;ILcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 9

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context of StatService.trackCustomEndEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_15
    invoke-static {p1}, Lcom/tencent/stat/StatServiceImpl;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The event_id of StatService.trackCustomEndEvent() can not be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_23
    new-instance v1, Lcom/tencent/stat/a/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/tencent/stat/a/c;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v3, Lcom/tencent/stat/ab;

    invoke-direct {v3, v0, p4, v1, p3}, Lcom/tencent/stat/ab;-><init>(Landroid/content/Context;Lcom/tencent/stat/StatSpecifyReportedInfo;Lcom/tencent/stat/a/c;I)V

    invoke-virtual {v2, v3}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static varargs trackCustomTimeIntervalEvent(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    if-gtz p1, :cond_11

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The intervalSecond of StatService.trackCustomTimeIntervalEvent() can must bigger than 0!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_11
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context of StatService.trackCustomTimeIntervalEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_1f
    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v1, Lcom/tencent/stat/aa;

    invoke-direct {v1}, Lcom/tencent/stat/aa;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static trackEndPage(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 7

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/tencent/stat/StatServiceImpl;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1d

    :cond_15
    sget-object v0, Lcom/tencent/stat/StatServiceImpl;->q:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "The Context or pageName of StatService.trackEndPage() can not be null or empty!"

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_6

    :cond_1d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/stat/StatServiceImpl;->c(Landroid/content/Context;)Lcom/tencent/stat/common/e;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/tencent/stat/StatServiceImpl;->d:Lcom/tencent/stat/common/e;

    new-instance v3, Lcom/tencent/stat/af;

    invoke-direct {v3, v0, v1, p2}, Lcom/tencent/stat/af;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/stat/StatSpecifyReportedInfo;)V

    invoke-virtual {v2, v3}, Lcom/tencent/stat/common/e;->a(Ljava/lang/Runnable;)V

    goto :goto_6
.end method
