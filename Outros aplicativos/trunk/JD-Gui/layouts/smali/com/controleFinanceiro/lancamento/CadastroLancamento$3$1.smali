.class Lcom/controleFinanceiro/lancamento/CadastroLancamento$3$1;
.super Ljava/lang/Object;
.source "CadastroLancamento.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/lancamento/CadastroLancamento$3;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/controleFinanceiro/lancamento/CadastroLancamento$3;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/lancamento/CadastroLancamento$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento$3$1;->this$1:Lcom/controleFinanceiro/lancamento/CadastroLancamento$3;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento$3$1;->this$1:Lcom/controleFinanceiro/lancamento/CadastroLancamento$3;

    # getter for: Lcom/controleFinanceiro/lancamento/CadastroLancamento$3;->this$0:Lcom/controleFinanceiro/lancamento/CadastroLancamento;
    invoke-static {v0}, Lcom/controleFinanceiro/lancamento/CadastroLancamento$3;->access$0(Lcom/controleFinanceiro/lancamento/CadastroLancamento$3;)Lcom/controleFinanceiro/lancamento/CadastroLancamento;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->showDialog(I)V

    .line 79
    return-void
.end method
