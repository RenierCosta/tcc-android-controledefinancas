.class Lcom/controleFinanceiro/empresa/EditarEmpresa$3;
.super Ljava/lang/Object;
.source "EditarEmpresa.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/empresa/EditarEmpresa;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/controleFinanceiro/empresa/EditarEmpresa;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/empresa/EditarEmpresa;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa$3;->this$0:Lcom/controleFinanceiro/empresa/EditarEmpresa;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/controleFinanceiro/empresa/EditarEmpresa$3;)Lcom/controleFinanceiro/empresa/EditarEmpresa;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa$3;->this$0:Lcom/controleFinanceiro/empresa/EditarEmpresa;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa$3;->this$0:Lcom/controleFinanceiro/empresa/EditarEmpresa;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, "alerta":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 86
    const v1, 0x7f05003e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 87
    const v1, 0x7f05003f

    new-instance v2, Lcom/controleFinanceiro/empresa/EditarEmpresa$3$1;

    invoke-direct {v2, p0}, Lcom/controleFinanceiro/empresa/EditarEmpresa$3$1;-><init>(Lcom/controleFinanceiro/empresa/EditarEmpresa$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    const v1, 0x7f050040

    new-instance v2, Lcom/controleFinanceiro/empresa/EditarEmpresa$3$2;

    invoke-direct {v2, p0}, Lcom/controleFinanceiro/empresa/EditarEmpresa$3$2;-><init>(Lcom/controleFinanceiro/empresa/EditarEmpresa$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 98
    return-void
.end method
