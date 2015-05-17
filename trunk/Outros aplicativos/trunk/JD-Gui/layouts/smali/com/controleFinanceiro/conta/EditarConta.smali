.class public Lcom/controleFinanceiro/conta/EditarConta;
.super Landroid/app/Activity;
.source "EditarConta.java"


# static fields
.field static final RESULT_EXCLUIR:I = 0x2

.field static final RESULT_SALVAR:I = 0x1


# instance fields
.field private campoCON_IN_AGENCIA:Landroid/widget/EditText;

.field private campoCON_IN_NCONTA:Landroid/widget/EditText;

.field private campoCON_RE_VALORATUAL:Landroid/widget/EditText;

.field private campoCON_RE_VALORINICIAL:Landroid/widget/EditText;

.field private campoCON_ST_BANCO:Landroid/widget/EditText;

.field private id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected buscarConta(J)Lcom/controleFinanceiro/conta/Conta;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 177
    sget-object v0, Lcom/controleFinanceiro/conta/CadastroConta;->repositorio:Lcom/controleFinanceiro/conta/RepositorioConta;

    invoke-virtual {v0, p1, p2}, Lcom/controleFinanceiro/conta/RepositorioConta;->buscarConta(J)Lcom/controleFinanceiro/conta/Conta;

    move-result-object v0

    return-object v0
.end method

.method public excluir()V
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lcom/controleFinanceiro/conta/EditarConta;->id:I

    if-eqz v0, :cond_0

    .line 166
    iget v0, p0, Lcom/controleFinanceiro/conta/EditarConta;->id:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/controleFinanceiro/conta/EditarConta;->excluirConta(J)V

    .line 170
    :cond_0
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/controleFinanceiro/conta/EditarConta;->setResult(ILandroid/content/Intent;)V

    .line 173
    invoke-virtual {p0}, Lcom/controleFinanceiro/conta/EditarConta;->finish()V

    .line 174
    return-void
.end method

.method protected excluirConta(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 185
    sget-object v0, Lcom/controleFinanceiro/conta/CadastroConta;->repositorio:Lcom/controleFinanceiro/conta/RepositorioConta;

    invoke-virtual {v0, p1, p2}, Lcom/controleFinanceiro/conta/RepositorioConta;->deletar(J)I

    .line 186
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v7, 0x7f030006

    invoke-virtual {p0, v7}, Lcom/controleFinanceiro/conta/EditarConta;->setContentView(I)V

    .line 43
    const v7, 0x7f060018

    invoke-virtual {p0, v7}, Lcom/controleFinanceiro/conta/EditarConta;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/controleFinanceiro/conta/EditarConta;->campoCON_ST_BANCO:Landroid/widget/EditText;

    .line 44
    const v7, 0x7f06001a

    invoke-virtual {p0, v7}, Lcom/controleFinanceiro/conta/EditarConta;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/controleFinanceiro/conta/EditarConta;->campoCON_IN_AGENCIA:Landroid/widget/EditText;

    .line 45
    const v7, 0x7f06001c

    invoke-virtual {p0, v7}, Lcom/controleFinanceiro/conta/EditarConta;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/controleFinanceiro/conta/EditarConta;->campoCON_IN_NCONTA:Landroid/widget/EditText;

    .line 46
    const v7, 0x7f06001e

    invoke-virtual {p0, v7}, Lcom/controleFinanceiro/conta/EditarConta;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/controleFinanceiro/conta/EditarConta;->campoCON_RE_VALORINICIAL:Landroid/widget/EditText;

    .line 47
    const v7, 0x7f060020

    invoke-virtual {p0, v7}, Lcom/controleFinanceiro/conta/EditarConta;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/controleFinanceiro/conta/EditarConta;->campoCON_RE_VALORATUAL:Landroid/widget/EditText;

    .line 49
    const/4 v7, 0x0

    iput v7, p0, Lcom/controleFinanceiro/conta/EditarConta;->id:I

    .line 51
    invoke-virtual {p0}, Lcom/controleFinanceiro/conta/EditarConta;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 54
    .local v4, "extras":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 55
    const-string v7, "_id"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/controleFinanceiro/conta/EditarConta;->id:I

    .line 57
    iget v7, p0, Lcom/controleFinanceiro/conta/EditarConta;->id:I

    if-eqz v7, :cond_0

    .line 58
    iget v7, p0, Lcom/controleFinanceiro/conta/EditarConta;->id:I

    int-to-long v7, v7

    invoke-virtual {p0, v7, v8}, Lcom/controleFinanceiro/conta/EditarConta;->buscarConta(J)Lcom/controleFinanceiro/conta/Conta;

    move-result-object v3

    .line 59
    .local v3, "c":Lcom/controleFinanceiro/conta/Conta;
    iget-object v7, p0, Lcom/controleFinanceiro/conta/EditarConta;->campoCON_ST_BANCO:Landroid/widget/EditText;

    iget-object v8, v3, Lcom/controleFinanceiro/conta/Conta;->CON_ST_BANCO:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v7, p0, Lcom/controleFinanceiro/conta/EditarConta;->campoCON_IN_AGENCIA:Landroid/widget/EditText;

    iget v8, v3, Lcom/controleFinanceiro/conta/Conta;->CON_IN_AGENCIA:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v7, p0, Lcom/controleFinanceiro/conta/EditarConta;->campoCON_IN_NCONTA:Landroid/widget/EditText;

    iget-object v8, v3, Lcom/controleFinanceiro/conta/Conta;->CON_CH_NCONTA:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    new-instance v5, Ljava/util/Locale;

    const-string v7, "pt"

    const-string v8, "BR"

    invoke-direct {v5, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v5, "local":Ljava/util/Locale;
    iget-object v7, p0, Lcom/controleFinanceiro/conta/EditarConta;->campoCON_RE_VALORINICIAL:Landroid/widget/EditText;

    invoke-static {v5}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    iget-object v9, v3, Lcom/controleFinanceiro/conta/Conta;->CON_RE_VALORINICIAL:Ljava/lang/Number;

    invoke-virtual {v8, v9}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget v7, p0, Lcom/controleFinanceiro/conta/EditarConta;->id:I

    iget-object v8, v3, Lcom/controleFinanceiro/conta/Conta;->CON_RE_VALORINICIAL:Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-static {v7, v8}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->calculaTotalConta(IF)F

    move-result v6

    .line 66
    .local v6, "valor_atual":F
    iget-object v7, p0, Lcom/controleFinanceiro/conta/EditarConta;->campoCON_RE_VALORATUAL:Landroid/widget/EditText;

    invoke-static {v5}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    float-to-double v9, v6

    invoke-virtual {v8, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .end local v3    # "c":Lcom/controleFinanceiro/conta/Conta;
    .end local v5    # "local":Ljava/util/Locale;
    .end local v6    # "valor_atual":F
    :cond_0
    const v7, 0x7f060022

    invoke-virtual {p0, v7}, Lcom/controleFinanceiro/conta/EditarConta;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 71
    .local v0, "btCancelar":Landroid/widget/Button;
    new-instance v7, Lcom/controleFinanceiro/conta/EditarConta$1;

    invoke-direct {v7, p0}, Lcom/controleFinanceiro/conta/EditarConta$1;-><init>(Lcom/controleFinanceiro/conta/EditarConta;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v7, 0x7f060021

    invoke-virtual {p0, v7}, Lcom/controleFinanceiro/conta/EditarConta;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 80
    .local v2, "btSalvar":Landroid/widget/Button;
    new-instance v7, Lcom/controleFinanceiro/conta/EditarConta$2;

    invoke-direct {v7, p0}, Lcom/controleFinanceiro/conta/EditarConta$2;-><init>(Lcom/controleFinanceiro/conta/EditarConta;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v7, 0x7f060023

    invoke-virtual {p0, v7}, Lcom/controleFinanceiro/conta/EditarConta;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 88
    .local v1, "btExcluir":Landroid/widget/Button;
    iget v7, p0, Lcom/controleFinanceiro/conta/EditarConta;->id:I

    if-nez v7, :cond_1

    .line 90
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    :goto_0
    return-void

    .line 92
    :cond_1
    new-instance v7, Lcom/controleFinanceiro/conta/EditarConta$3;

    invoke-direct {v7, p0}, Lcom/controleFinanceiro/conta/EditarConta$3;-><init>(Lcom/controleFinanceiro/conta/EditarConta;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/controleFinanceiro/conta/EditarConta;->setResult(I)V

    .line 121
    invoke-virtual {p0}, Lcom/controleFinanceiro/conta/EditarConta;->finish()V

    .line 122
    return-void
.end method

.method public salvar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-string v2, "."

    const-string v4, ""

    .line 127
    iget-object v2, p0, Lcom/controleFinanceiro/conta/EditarConta;->campoCON_ST_BANCO:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const v2, 0x7f05004f

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/conta/EditarConta;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 162
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/controleFinanceiro/conta/EditarConta;->campoCON_RE_VALORINICIAL:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    const v2, 0x7f050050

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/conta/EditarConta;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 135
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/controleFinanceiro/conta/EditarConta;->campoCON_IN_AGENCIA:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    iget-object v2, p0, Lcom/controleFinanceiro/conta/EditarConta;->campoCON_IN_AGENCIA:Landroid/widget/EditText;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_2
    new-instance v0, Lcom/controleFinanceiro/conta/Conta;

    invoke-direct {v0}, Lcom/controleFinanceiro/conta/Conta;-><init>()V

    .line 140
    .local v0, "conta":Lcom/controleFinanceiro/conta/Conta;
    iget v2, p0, Lcom/controleFinanceiro/conta/EditarConta;->id:I

    if-eqz v2, :cond_3

    .line 142
    iget v2, p0, Lcom/controleFinanceiro/conta/EditarConta;->id:I

    iput v2, v0, Lcom/controleFinanceiro/conta/Conta;->id:I

    .line 144
    :cond_3
    iget-object v2, p0, Lcom/controleFinanceiro/conta/EditarConta;->campoCON_ST_BANCO:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/controleFinanceiro/conta/Conta;->CON_ST_BANCO:Ljava/lang/String;

    .line 145
    iget-object v2, p0, Lcom/controleFinanceiro/conta/EditarConta;->campoCON_IN_AGENCIA:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/controleFinanceiro/conta/Conta;->CON_IN_AGENCIA:I

    .line 146
    iget-object v2, p0, Lcom/controleFinanceiro/conta/EditarConta;->campoCON_IN_NCONTA:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/controleFinanceiro/conta/Conta;->CON_CH_NCONTA:Ljava/lang/String;

    .line 147
    iget-object v2, p0, Lcom/controleFinanceiro/conta/EditarConta;->campoCON_RE_VALORINICIAL:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v4, "."

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/controleFinanceiro/conta/Conta;->CON_RE_VALORINICIAL:Ljava/lang/Number;

    .line 150
    invoke-virtual {p0, v0}, Lcom/controleFinanceiro/conta/EditarConta;->salvarConta(Lcom/controleFinanceiro/conta/Conta;)V

    .line 153
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v2, v3}, Lcom/controleFinanceiro/conta/EditarConta;->setResult(ILandroid/content/Intent;)V

    .line 154
    const v2, 0x7f050042

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/conta/EditarConta;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 156
    invoke-virtual {p0}, Lcom/controleFinanceiro/conta/EditarConta;->finish()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 158
    .end local v0    # "conta":Lcom/controleFinanceiro/conta/Conta;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 159
    .local v1, "e":Ljava/lang/NumberFormatException;
    const v2, 0x7f050051

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/conta/EditarConta;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method protected salvarConta(Lcom/controleFinanceiro/conta/Conta;)V
    .locals 1
    .param p1, "conta"    # Lcom/controleFinanceiro/conta/Conta;

    .prologue
    .line 181
    sget-object v0, Lcom/controleFinanceiro/conta/CadastroConta;->repositorio:Lcom/controleFinanceiro/conta/RepositorioConta;

    invoke-virtual {v0, p1}, Lcom/controleFinanceiro/conta/RepositorioConta;->salvar(Lcom/controleFinanceiro/conta/Conta;)J

    .line 182
    return-void
.end method
