.class public Lcom/controleFinanceiro/principal/Inicio;
.super Landroid/app/Activity;
.source "Inicio.java"


# instance fields
.field private final DURACAO:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/controleFinanceiro/principal/Inicio;->DURACAO:I

    .line 10
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/controleFinanceiro/principal/Inicio;->setContentView(I)V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/controleFinanceiro/principal/Inicio$1;

    invoke-direct {v1, p0}, Lcom/controleFinanceiro/principal/Inicio$1;-><init>(Lcom/controleFinanceiro/principal/Inicio;)V

    .line 24
    const-wide/16 v2, 0xbb8

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    return-void
.end method
