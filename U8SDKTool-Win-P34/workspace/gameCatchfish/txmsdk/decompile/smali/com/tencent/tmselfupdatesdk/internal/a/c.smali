.class public final Lcom/tencent/tmselfupdatesdk/internal/a/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/tencent/tmselfupdatesdk/internal/a/c;->a:I

    .line 38
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/tmselfupdatesdk/internal/a/c;-><init>([BI)V

    .line 17
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 5

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/tmselfupdatesdk/internal/a/c;->a:I

    .line 27
    iget v0, p0, Lcom/tencent/tmselfupdatesdk/internal/a/c;->a:I

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/tmselfupdatesdk/internal/a/c;->a:I

    .line 28
    return-void
.end method


# virtual methods
.method public a()[B
    .registers 5

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 63
    const/4 v1, 0x0

    iget v2, p0, Lcom/tencent/tmselfupdatesdk/internal/a/c;->a:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 64
    const/4 v1, 0x1

    iget v2, p0, Lcom/tencent/tmselfupdatesdk/internal/a/c;->a:I

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 65
    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/tencent/tmselfupdatesdk/internal/a/c;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 48
    if-eqz p1, :cond_7

    instance-of v1, p1, Lcom/tencent/tmselfupdatesdk/internal/a/c;

    if-nez v1, :cond_8

    .line 52
    :cond_7
    :goto_7
    return v0

    :cond_8
    iget v1, p0, Lcom/tencent/tmselfupdatesdk/internal/a/c;->a:I

    check-cast p1, Lcom/tencent/tmselfupdatesdk/internal/a/c;

    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/internal/a/c;->b()I

    move-result v2

    if-ne v1, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/tencent/tmselfupdatesdk/internal/a/c;->a:I

    return v0
.end method
