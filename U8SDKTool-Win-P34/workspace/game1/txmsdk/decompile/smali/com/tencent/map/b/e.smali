.class public final Lcom/tencent/map/b/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/map/b/e$c;,
        Lcom/tencent/map/b/e$b;,
        Lcom/tencent/map/b/e$a;
    }
.end annotation


# static fields
.field private static b:Landroid/location/LocationManager;

.field private static d:F


# instance fields
.field private a:Landroid/content/Context;

.field private c:Lcom/tencent/map/b/e$a;

.field private e:Lcom/tencent/map/b/e$c;

.field private f:Lcom/tencent/map/b/e$b;

.field private g:Z

.field private h:[B

.field private i:I

.field private j:J

.field private k:Z

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;

    const/4 v0, 0x0

    sput v0, Lcom/tencent/map/b/e;->d:F

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/b/e;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/map/b/e;->c:Lcom/tencent/map/b/e$a;

    iput-object v0, p0, Lcom/tencent/map/b/e;->e:Lcom/tencent/map/b/e$c;

    iput-object v0, p0, Lcom/tencent/map/b/e;->f:Lcom/tencent/map/b/e$b;

    iput-boolean v2, p0, Lcom/tencent/map/b/e;->g:Z

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/tencent/map/b/e;->h:[B

    const/16 v0, 0x400

    iput v0, p0, Lcom/tencent/map/b/e;->i:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/map/b/e;->j:J

    iput-boolean v2, p0, Lcom/tencent/map/b/e;->k:Z

    iput v2, p0, Lcom/tencent/map/b/e;->l:I

    iput v2, p0, Lcom/tencent/map/b/e;->m:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/map/b/e;I)I
    .registers 3

    iget v0, p0, Lcom/tencent/map/b/e;->i:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/map/b/e;->i:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/map/b/e;J)J
    .registers 4

    iput-wide p1, p0, Lcom/tencent/map/b/e;->j:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/map/b/e;Lcom/tencent/map/b/e$b;)Lcom/tencent/map/b/e$b;
    .registers 2

    iput-object p1, p0, Lcom/tencent/map/b/e;->f:Lcom/tencent/map/b/e$b;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/map/b/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/map/b/e;->b()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/map/b/e;)I
    .registers 2

    iget v0, p0, Lcom/tencent/map/b/e;->l:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/map/b/e;I)I
    .registers 2

    iput p1, p0, Lcom/tencent/map/b/e;->l:I

    return p1
.end method

.method private b()V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/map/b/e;->m:I

    iput v0, p0, Lcom/tencent/map/b/e;->l:I

    sget-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_e
    return-void

    :cond_f
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v1

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    if-eqz v2, :cond_e

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/tencent/map/b/e;->l:I

    if-gt v0, v1, :cond_e

    iget v0, p0, Lcom/tencent/map/b/e;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/map/b/e;->l:I

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/tencent/map/b/e;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/map/b/e;->m:I

    goto :goto_1d
.end method

.method static synthetic c(Lcom/tencent/map/b/e;)I
    .registers 2

    iget v0, p0, Lcom/tencent/map/b/e;->m:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/map/b/e;I)I
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/map/b/e;->m:I

    return v0
.end method

.method static synthetic d(Lcom/tencent/map/b/e;)I
    .registers 2

    iget v0, p0, Lcom/tencent/map/b/e;->i:I

    return v0
.end method

.method static synthetic d(Lcom/tencent/map/b/e;I)I
    .registers 2

    iput p1, p0, Lcom/tencent/map/b/e;->i:I

    return p1
.end method

.method static synthetic e(Lcom/tencent/map/b/e;)J
    .registers 3

    iget-wide v0, p0, Lcom/tencent/map/b/e;->j:J

    return-wide v0
.end method

.method static synthetic f(Lcom/tencent/map/b/e;)Lcom/tencent/map/b/e$c;
    .registers 2

    iget-object v0, p0, Lcom/tencent/map/b/e;->e:Lcom/tencent/map/b/e$c;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/map/b/e;)Lcom/tencent/map/b/e$b;
    .registers 2

    iget-object v0, p0, Lcom/tencent/map/b/e;->f:Lcom/tencent/map/b/e$b;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v1, p0, Lcom/tencent/map/b/e;->h:[B

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/tencent/map/b/e;->g:Z

    if-nez v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    sget-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/tencent/map/b/e;->c:Lcom/tencent/map/b/e$a;

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/tencent/map/b/e;->c:Lcom/tencent/map/b/e$a;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    sget-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/tencent/map/b/e;->c:Lcom/tencent/map/b/e$a;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/map/b/e;->g:Z

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_24

    goto :goto_8

    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/tencent/map/b/e$c;Landroid/content/Context;)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tencent/map/b/e;->h:[B

    monitor-enter v7

    :try_start_5
    iget-boolean v1, p0, Lcom/tencent/map/b/e;->g:Z

    if-eqz v1, :cond_b

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_68

    :goto_a
    return v0

    :cond_b
    if-eqz p2, :cond_f

    if-nez p1, :cond_12

    :cond_f
    monitor-exit v7

    move v0, v6

    goto :goto_a

    :cond_12
    :try_start_12
    iput-object p2, p0, Lcom/tencent/map/b/e;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/tencent/map/b/e;->e:Lcom/tencent/map/b/e$c;
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_68

    :try_start_16
    iget-object v0, p0, Lcom/tencent/map/b/e;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;

    new-instance v0, Lcom/tencent/map/b/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/map/b/e$a;-><init>(Lcom/tencent/map/b/e;B)V

    iput-object v0, p0, Lcom/tencent/map/b/e;->c:Lcom/tencent/map/b/e$a;

    sget-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/tencent/map/b/e;->c:Lcom/tencent/map/b/e$a;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_30} :catch_35
    .catchall {:try_start_16 .. :try_end_30} :catchall_68

    if-nez v0, :cond_39

    :cond_32
    :try_start_32
    monitor-exit v7
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_68

    move v0, v6

    goto :goto_a

    :catch_35
    move-exception v0

    monitor-exit v7

    move v0, v6

    goto :goto_a

    :cond_39
    :try_start_39
    sget-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/map/b/e;->c:Lcom/tencent/map/b/e$a;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    sget-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tencent/map/b/e;->c:Lcom/tencent/map/b/e$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    sget-object v0, Lcom/tencent/map/b/e;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/map/b/e;->i:I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_59} :catch_64
    .catchall {:try_start_39 .. :try_end_59} :catchall_68

    :goto_59
    const/4 v0, 0x1

    :try_start_5a
    iput-boolean v0, p0, Lcom/tencent/map/b/e;->g:Z

    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_68

    iget-boolean v0, p0, Lcom/tencent/map/b/e;->g:Z

    goto :goto_a

    :cond_60
    const/4 v0, 0x0

    :try_start_61
    iput v0, p0, Lcom/tencent/map/b/e;->i:I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_63} :catch_64
    .catchall {:try_start_61 .. :try_end_63} :catchall_68

    goto :goto_59

    :catch_64
    move-exception v0

    :try_start_65
    monitor-exit v7
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_68

    move v0, v6

    goto :goto_a

    :catchall_68
    move-exception v0

    monitor-exit v7

    throw v0
.end method
