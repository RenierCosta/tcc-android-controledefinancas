.class Lcom/controleFinanceiro/lancamento/ResumoCategoria$1;
.super Ljava/lang/Object;
.source "ResumoCategoria.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/controleFinanceiro/lancamento/ResumoCategoria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/controleFinanceiro/lancamento/ResumoCategoria;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/lancamento/ResumoCategoria;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria$1;->this$0:Lcom/controleFinanceiro/lancamento/ResumoCategoria;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 109
    new-instance v1, Ljava/util/Locale;

    const-string v4, "pt"

    const-string v5, "BR"

    invoke-direct {v1, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .local v1, "local":Ljava/util/Locale;
    invoke-static {v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    .line 111
    .local v2, "nf":Ljava/text/NumberFormat;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 113
    iget-object v4, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria$1;->this$0:Lcom/controleFinanceiro/lancamento/ResumoCategoria;

    # getter for: Lcom/controleFinanceiro/lancamento/ResumoCategoria;->codigoCategoria:Ljava/util/List;
    invoke-static {v4}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->access$0(Lcom/controleFinanceiro/lancamento/ResumoCategoria;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria$1;->this$0:Lcom/controleFinanceiro/lancamento/ResumoCategoria;

    # getter for: Lcom/controleFinanceiro/lancamento/ResumoCategoria;->campoLAN_IN_CATEGORIA:Landroid/widget/Spinner;
    invoke-static {v5}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->access$1(Lcom/controleFinanceiro/lancamento/ResumoCategoria;)Landroid/widget/Spinner;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 115
    .local v0, "cod_categoria":I
    sget-object v4, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->repositorio:Lcom/controleFinanceiro/lancamento/RepositorioLancamento;

    iget-object v5, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria$1;->this$0:Lcom/controleFinanceiro/lancamento/ResumoCategoria;

    # getter for: Lcom/controleFinanceiro/lancamento/ResumoCategoria;->dataIntervaloInicialBD:Ljava/lang/String;
    invoke-static {v5}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->access$2(Lcom/controleFinanceiro/lancamento/ResumoCategoria;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria$1;->this$0:Lcom/controleFinanceiro/lancamento/ResumoCategoria;

    # getter for: Lcom/controleFinanceiro/lancamento/ResumoCategoria;->dataIntervaloFinalBD:Ljava/lang/String;
    invoke-static {v6}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->access$3(Lcom/controleFinanceiro/lancamento/ResumoCategoria;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->calculaTotalCategoria(ILjava/lang/String;Ljava/lang/String;)F

    move-result v3

    .line 116
    .local v3, "total":F
    iget-object v4, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria$1;->this$0:Lcom/controleFinanceiro/lancamento/ResumoCategoria;

    # getter for: Lcom/controleFinanceiro/lancamento/ResumoCategoria;->txtTotalCategoria:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->access$4(Lcom/controleFinanceiro/lancamento/ResumoCategoria;)Landroid/widget/TextView;

    move-result-object v4

    float-to-double v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method
