.class public abstract Lcom/tencent/android/tpush/rpc/e;
.super Landroid/os/Binder;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/android/tpush/rpc/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.tencent.android.tpush.rpc.ITaskCallback"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/android/tpush/rpc/e;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/tencent/android/tpush/rpc/d;
    .registers 3

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v0, "com.tencent.android.tpush.rpc.ITaskCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/tencent/android/tpush/rpc/d;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/tencent/android/tpush/rpc/d;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/tencent/android/tpush/rpc/f;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/rpc/f;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_1c

    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    .line 42
    :sswitch_9
    const-string v1, "com.tencent.android.tpush.rpc.ITaskCallback"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v1, "com.tencent.android.tpush.rpc.ITaskCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/tencent/android/tpush/rpc/e;->a()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 38
    nop

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
