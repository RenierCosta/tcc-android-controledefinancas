.class Lcom/controleFinanceiro/empresa/EditarEmpresa$3$1;
.super Ljava/lang/Object;
.source "EditarEmpresa.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/empresa/EditarEmpresa$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/controleFinanceiro/empresa/EditarEmpresa$3;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/empresa/EditarEmpresa$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa$3$1;->this$1:Lcom/controleFinanceiro/empresa/EditarEmpresa$3;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa$3$1;->this$1:Lcom/controleFinanceiro/empresa/EditarEmpresa$3;

    # getter for: Lcom/controleFinanceiro/empresa/EditarEmpresa$3;->this$0:Lcom/controleFinanceiro/empresa/EditarEmpresa;
    invoke-static {v0}, Lcom/controleFinanceiro/empresa/EditarEmpresa$3;->access$0(Lcom/controleFinanceiro/empresa/EditarEmpresa$3;)Lcom/controleFinanceiro/empresa/EditarEmpresa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->excluir()V

    .line 90
    return-void
.end method
