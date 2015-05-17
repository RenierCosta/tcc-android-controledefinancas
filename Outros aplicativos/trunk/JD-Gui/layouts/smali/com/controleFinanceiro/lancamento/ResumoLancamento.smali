.class public Lcom/controleFinanceiro/lancamento/ResumoLancamento;
.super Landroid/app/Activity;
.source "ResumoLancamento.java"


# static fields
.field protected static final CATEGORIA:I = 0x1

.field protected static final CONTA:I = 0x3

.field protected static final INTERVALO:I = 0x4

.field protected static final PARTICIPANTE:I = 0x2

.field public static repositorio:Lcom/controleFinanceiro/lancamento/RepositorioLancamento;


# instance fields
.field private saldo_atual_contas:F

.field private total_despesas:F

.field private total_despesas_aberto:F

.field private total_receitas:F

.field private total_receitas_aberto:F

.field private total_saldo:F

.field private total_saldo_aberto:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v10, 0x7f03000a

    invoke-virtual {p0, v10}, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->setContentView(I)V

    .line 42
    new-instance v10, Lcom/controleFinanceiro/lancamento/RepositorioLancamentoScript;

    invoke-direct {v10, p0}, Lcom/controleFinanceiro/lancamento/RepositorioLancamentoScript;-><init>(Landroid/content/Context;)V

    sput-object v10, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->repositorio:Lcom/controleFinanceiro/lancamento/RepositorioLancamento;

    .line 44
    new-instance v8, Ljava/util/Locale;

    const-string v10, "pt"

    const-string v11, "BR"

    invoke-direct {v8, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .local v8, "local":Ljava/util/Locale;
    invoke-static {v8}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v9

    .line 46
    .local v9, "nf":Ljava/text/NumberFormat;
    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 48
    const v10, 0x7f060044

    invoke-virtual {p0, v10}, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 49
    .local v3, "campoReceitas":Landroid/widget/TextView;
    sget-object v10, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->repositorio:Lcom/controleFinanceiro/lancamento/RepositorioLancamento;

    invoke-virtual {v10}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->calculaTotalReceitas()F

    move-result v10

    iput v10, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->total_receitas:F

    .line 50
    iget v10, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->total_receitas:F

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const v10, 0x7f060046

    invoke-virtual {p0, v10}, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 53
    .local v1, "campoDespesas":Landroid/widget/TextView;
    sget-object v10, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->repositorio:Lcom/controleFinanceiro/lancamento/RepositorioLancamento;

    invoke-virtual {v10}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->calculaTotalDespesas()F

    move-result v10

    iput v10, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->total_despesas:F

    .line 54
    iget v10, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->total_despesas:F

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v10, 0x7f060048

    invoke-virtual {p0, v10}, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 57
    .local v5, "campoSaldo":Landroid/widget/TextView;
    iget v10, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->total_receitas:F

    iget v11, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->total_despesas:F

    sub-float/2addr v10, v11

    iput v10, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->total_saldo:F

    .line 58
    iget v10, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->total_saldo:F

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v10, 0x7f06004a

    invoke-virtual {p0, v10}, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 62
    .local v4, "campoReceitasAberto":Landroid/widget/TextView;
    sget-object v10, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->repositorio:Lcom/controleFinanceiro/lancamento/RepositorioLancamento;

    invoke-virtual {v10}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->calculaTotalReceitasAberto()F

    move-result v10

    iput v10, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->total_receitas_aberto:F

    .line 63
    iget v10, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->total_receitas_aberto:F

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v10, 0x7f06004c

    invoke-virtual {p0, v10}, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 66
    .local v2, "campoDespesasAberto":Landroid/widget/TextView;
    sget-object v10, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->repositorio:Lcom/controleFinanceiro/lancamento/RepositorioLancamento;

    invoke-virtual {v10}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->calculaTotalDespesasAberto()F

    move-result v10

    iput v10, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->total_despesas_aberto:F

    .line 67
    iget v10, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->total_despesas_aberto:F

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v10, 0x7f06004e

    invoke-virtual {p0, v10}, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 70
    .local v6, "campoSaldoAberto":Landroid/widget/TextView;
    iget v10, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->total_receitas_aberto:F

    iget v11, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->total_despesas_aberto:F

    sub-float/2addr v10, v11

    iput v10, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->total_saldo_aberto:F

    .line 71
    iget v10, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->total_saldo_aberto:F

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v10, 0x7f060050

    invoke-virtual {p0, v10}, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 74
    .local v7, "campoSaldoAtualContas":Landroid/widget/TextView;
    sget-object v10, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->repositorio:Lcom/controleFinanceiro/lancamento/RepositorioLancamento;

    invoke-virtual {v10}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->calculaSaldoAtualContas()F

    move-result v10

    iput v10, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->saldo_atual_contas:F

    .line 75
    iget v10, p0, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->saldo_atual_contas:F

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v10, 0x7f060051

    invoke-virtual {p0, v10}, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 78
    .local v0, "btVoltar":Landroid/widget/Button;
    new-instance v10, Lcom/controleFinanceiro/lancamento/ResumoLancamento$1;

    invoke-direct {v10, p0}, Lcom/controleFinanceiro/lancamento/ResumoLancamento$1;-><init>(Lcom/controleFinanceiro/lancamento/ResumoLancamento;)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 92
    const v1, 0x7f050063

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 100
    .local v0, "item":Landroid/view/MenuItem;
    return v3
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 107
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 109
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/controleFinanceiro/lancamento/ResumoCategoria;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/controleFinanceiro/lancamento/ResumoLancamento;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
