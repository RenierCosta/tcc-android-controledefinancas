.class Lcom/controleFinanceiro/empresa/EditarEmpresa$1;
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
    iput-object p1, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa$1;->this$0:Lcom/controleFinanceiro/empresa/EditarEmpresa;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa$1;->this$0:Lcom/controleFinanceiro/empresa/EditarEmpresa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->setResult(I)V

    .line 64
    iget-object v0, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa$1;->this$0:Lcom/controleFinanceiro/empresa/EditarEmpresa;

    invoke-virtual {v0}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->finish()V

    .line 65
    return-void
.end method
