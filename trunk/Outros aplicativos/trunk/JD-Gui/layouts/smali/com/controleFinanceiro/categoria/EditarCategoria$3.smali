.class Lcom/controleFinanceiro/categoria/EditarCategoria$3;
.super Ljava/lang/Object;
.source "EditarCategoria.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/categoria/EditarCategoria;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/controleFinanceiro/categoria/EditarCategoria;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/categoria/EditarCategoria;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/categoria/EditarCategoria$3;->this$0:Lcom/controleFinanceiro/categoria/EditarCategoria;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/controleFinanceiro/categoria/EditarCategoria$3;)Lcom/controleFinanceiro/categoria/EditarCategoria;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/controleFinanceiro/categoria/EditarCategoria$3;->this$0:Lcom/controleFinanceiro/categoria/EditarCategoria;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 82
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/controleFinanceiro/categoria/EditarCategoria$3;->this$0:Lcom/controleFinanceiro/categoria/EditarCategoria;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "alerta":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 84
    const v1, 0x7f05003e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 85
    const v1, 0x7f05003f

    new-instance v2, Lcom/controleFinanceiro/categoria/EditarCategoria$3$1;

    invoke-direct {v2, p0}, Lcom/controleFinanceiro/categoria/EditarCategoria$3$1;-><init>(Lcom/controleFinanceiro/categoria/EditarCategoria$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    const v1, 0x7f050040

    new-instance v2, Lcom/controleFinanceiro/categoria/EditarCategoria$3$2;

    invoke-direct {v2, p0}, Lcom/controleFinanceiro/categoria/EditarCategoria$3$2;-><init>(Lcom/controleFinanceiro/categoria/EditarCategoria$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 96
    return-void
.end method
